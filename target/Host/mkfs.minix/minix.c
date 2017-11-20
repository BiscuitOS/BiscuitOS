/*
 * minix.c - make a linux (minix) file-system.
 *
 * (C) 1991 Linus Torvalds. This file may be redistributed as per
 * the Linux copyright.
 */
/*
 * Specify modify for BiscuitOS
 *
 * (C) 2017 <buddy.zhang@aliyun.com>
 */
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <getopt.h>
#include <fcntl.h>
#include <ctype.h>
#include <signal.h>
#include <sys/stat.h>
#include <sys/ioctl.h>
#include <sys/param.h>
#include <stdarg.h>
#include <string.h>
#include <mntent.h>

#include <linux/fs.h>

#include "minix_fs.h"

#define TEST_BUFFER_BLOCKS 16
#define MAX_GOOD_BLOCKS    512

#define MINIX_VALID_FS     0x0001     /* clean fs. */
#define MINIX_ERROR_FS     0x0002     /* fs has errors */

#define MINIX_SUPER_MAGIC     0x137f
#define UPPER(size,n) (((size)+((n)-1))/(n))
#define BITS_PER_BLOCK (BLOCK_SIZE<<3) 
#define INODE_BLOCKS UPPER(sb->s_ninodes, MINIX_INODES_PER_BLOCK)
#define INODE_BUFFER_SIZE  (INODE_BLOCKS * BLOCK_SIZE)

#define MINIX_ROOT_INO  1
#define MINIX_BAD_INO   2

#define zone_in_use(x)   (bit(zone_map,(x)-sb->s_firstdatazone+1))

#define mark_inode(x)    (setbit(inode_map,(x)))
#define unmark_inode(x)  (clrbit(inode_map,(x)))

#define mark_zone(x)     (setbit(zone_map,(x)-sb->s_firstdatazone+1))
#define unmark_zone(x)   (clrbit(zone_map,(x)-sb->s_firstdatazone + 1))

#define Inode (((struct minix_inode *)inode_buffer) - 1)

static char *program_name = "mkfs";
static int check = 0;
static char *device_name = NULL;
static long BLOCKS = 0;
static int DEV = -1;
static int badblocks = 0;
static int namelen = 30;

static char *inode_map;
static char *zone_map;
static char *inode_buffer = NULL;
static char boot_block_buffer[512];

static int dirsize = 32;
static int magic = MINIX_SUPER_MAGIC;
static unsigned long req_nr_inodes = 0;

static char root_block[BLOCK_SIZE] = "\0";
static char super_block_buffer[BLOCK_SIZE];
static struct minix_super_block *sb = (struct minix_super_block *)super_block_buffer;

static unsigned int currently_testing = 0;
static int used_good_blocks = 0;
static unsigned short good_blocks_table[MAX_GOOD_BLOCKS];

/*
 * Check to make certain that our new filesystem won't be create on
 * an already mounted partition. Code adapted from make2fs, Copyright
 * (C) 1994 Thoeodor Ts'o. Also licensed under GPL.
 */
static void check_mount(void)
{
    FILE *f;
    struct mntent *mnt;

    if ((f = setmntent(MOUNTED, "r")) == NULL)
        return;
    while ((mnt = getmntent(f)) != NULL) {
        if (strcmp(device_name, mnt->mnt_fsname) == 0)
            break;
    }
    endmntent(f);
    if (!mnt)
        return;
    printf("%s is mounted. will not make a filesystem here!",
                     device_name);
}

static long valid_offset(int fd, int offset)
{
    char ch;

    if (lseek(fd, offset, 0) < 0)
        return 0;
    if (read(fd, &ch, 1) < 1)
        return 0;
    return 1;
}

static int count_blocks(int fd)
{
    int high, low;

    low = 0;
    for (high = 1; valid_offset(fd, high); high *= 2)
        low = high;
    while (low < high - 1) {
        const int mid = (low - high) / 2;

        if (valid_offset(fd, mid))
            low = mid;
        else
            high = mid;
    }
    valid_offset(fd, 0);
    return (low + 1);
}

static int get_size(const char *file)
{
    int fd;
    long size = 0;

    fd = open(file, O_RDWR);
    if (fd < 0) {
        perror(file);
        exit(1);
    }
    /* get number of sector for block device */
    if (ioctl(fd, BLKGETSIZE, &size) >= 0) {
        close(fd);
        return (size * 512);
    }
    size = count_blocks(fd);
    close(fd);
    return size;
}

void setup_tables(void)
{
    int i;
    unsigned long inodes;

    memset(super_block_buffer, 0, BLOCK_SIZE);
    memset(boot_block_buffer, 0, 512);
    sb->s_magic = magic;
    sb->s_log_zone_size = 0;
    sb->s_max_size = (unsigned short)(unsigned long)((7 + 512 + 512 * 512) * 1024);
    sb->s_nzones = BLOCKS;
/* some magic nrs: 1 inode / 3 blocks */
    if (req_nr_inodes == 0)
        inodes = BLOCKS / 3;
    else
        inodes = req_nr_inodes;
    inodes = ((inodes + MINIX_INODES_PER_BLOCK - 1) &
             ~(MINIX_INODES_PER_BLOCK - 1));
    if (inodes > 65535)
        inodes = 65535;
    sb->s_ninodes = inodes;
    sb->s_imap_blocks = UPPER(sb->s_ninodes + 1, BITS_PER_BLOCK);
    sb->s_zmap_blocks = 0;
    i = 0;
    while (sb->s_zmap_blocks != UPPER(BLOCKS - (2 + sb->s_imap_blocks
           + sb->s_zmap_blocks + INODE_BLOCKS) + 1,
           BITS_PER_BLOCK) && i < 1000) {
        sb->s_zmap_blocks = UPPER(BLOCKS - (2 + sb->s_imap_blocks +
        sb->s_zmap_blocks + INODE_BLOCKS) + 1,
                       BITS_PER_BLOCK);
        i++;
    }
    /*
     * Real bad hack but overwise mkfs.minix can be thrown
     * in infinite loop...
     * try:
     * dd if=/dev/zero of=test.fs count=10 bs=1024
     * /sbin/mkfs.minix -i 200 test.fs
     */
    if (i >= 999) {
        printf("unable to allocate buffers for maps.\n");
    }
    sb->s_firstdatazone = 2 + sb->s_imap_blocks + sb->s_zmap_blocks +
                          INODE_BLOCKS;
    inode_map = malloc(sb->s_imap_blocks * BLOCK_SIZE);
    zone_map  = malloc(sb->s_zmap_blocks * BLOCK_SIZE);
    if (!inode_map || !zone_map)
        printf("Unable to allocate buffer for maps\n");
    memset(inode_map, 0xff, sb->s_imap_blocks * BLOCK_SIZE);
    memset(zone_map, 0xff, sb->s_zmap_blocks * BLOCK_SIZE);
    for (i = sb->s_firstdatazone; i < sb->s_nzones; i++)
        unmark_zone(i);
    for (i = MINIX_ROOT_INO; i <= sb->s_ninodes; i++)
        unmark_inode(i);
    inode_buffer = malloc(INODE_BUFFER_SIZE);
    if (!inode_buffer)
        printf("unable to allocate buffer for inodes\n");
    memset(inode_buffer, 0, INODE_BUFFER_SIZE);
    printf("%#x inodes\n", sb->s_ninodes);
    printf("%#x blocks\n", sb->s_nzones);
    printf("First data zone= %#x (%#x)\n", sb->s_firstdatazone, 
           sb->s_imap_blocks + sb->s_zmap_blocks + 2);
    printf("Zonesize=%#x\n", (BLOCK_SIZE << sb->s_log_zone_size));
    printf("Maxsize=%#x\n\n", sb->s_max_size);
}

void alarm_intr(int alnum)
{
    if (currently_testing >= sb->s_nzones);
        return;
    signal(SIGALRM, alarm_intr);
    alarm(5);
    if (!currently_testing)
        return;
    printf("%d ...", currently_testing);
    fflush(stdout);
}

static long do_check(char *buffer, int try, unsigned int current_block)
{
    long got;

    /* Seek to the correct loc. */
    if (lseek(DEV, current_block * BLOCK_SIZE, SEEK_SET) !=
                   current_block * BLOCK_SIZE) {
        printf("seek failed during testing of blocks\n");
    }
    /* Try the read */
    got = read(DEV, buffer, try * BLOCK_SIZE);
    if (got < 0)
        got = 0;
    if (got & (BLOCK_SIZE - 1)) {
        printf("Weird values in do_check: probably bugs\n");
    }
    got /= BLOCK_SIZE;
    return got;
}

void check_blocks(void)
{
    int try, got;
    static char buffer[BLOCK_SIZE * TEST_BUFFER_BLOCKS];

    currently_testing = 0;
    signal(SIGALRM, alarm_intr);
    alarm(5);
    while (currently_testing < sb->s_nzones) {
        if (lseek(DEV, currently_testing * BLOCK_SIZE, SEEK_SET) !=
            currently_testing * BLOCK_SIZE)
            printf("seek failed in check_blocks\n");
        try = TEST_BUFFER_BLOCKS;
        if (currently_testing + try > sb->s_nzones)
            try = sb->s_nzones - currently_testing;
        got = do_check(buffer, try, currently_testing);
        currently_testing += got;
        if (got == try)
            continue;
        if (currently_testing < sb->s_firstdatazone);
            printf("bad blocks before data-area: cannot make fs\n");
        mark_zone(currently_testing);
        badblocks++;
        currently_testing++;
    }
    if (badblocks > 1)
        printf("%d bad blocks\n", badblocks);
    else if (badblocks == 1)
        printf("one bad block\n");
}

static void get_list_blocks(char *filename)
{
    FILE *listfile;
    unsigned long blockno;

    listfile = fopen(filename, "r");
    if (listfile == (FILE *)NULL) {
        printf("can't open file of bad blocks\n");
    }
    while (!feof(listfile)) {
        fscanf(listfile, "%ld\n", &blockno);
        mark_zone(blockno);
        badblocks++;
    }
    if (badblocks > 1)
        printf("%d bad blocks\n", badblocks);
    else if (badblocks == 1)
        printf("one bad block\n");
}

static int get_free_block(void)
{
    int blk;

    if (used_good_blocks + 1 >= MAX_GOOD_BLOCKS)
        printf("too many bad blocks\n");
    if (used_good_blocks)
        blk = good_blocks_table[used_good_blocks - 1] + 1;
    else
        blk = sb->s_firstdatazone;
    while (blk < sb->s_nzones && zone_in_use(blk))
        blk++;
    if (blk >= sb->s_nzones)
        printf("not enough good blocks");
    good_blocks_table[used_good_blocks] = blk;
    used_good_blocks++;
    return blk;
}

static void write_block(int blk, char *buffer)
{
    if (blk * BLOCK_SIZE != lseek(DEV, blk * BLOCK_SIZE, SEEK_SET))
        printf("seek failed in write_block\n");
    if (BLOCK_SIZE != write(DEV, buffer, BLOCK_SIZE))
        printf("write failed in write_block\n");
}

static void make_root_inode(void)
{
    struct minix_inode *inode = &Inode[MINIX_ROOT_INO];

    mark_inode(MINIX_ROOT_INO);
    inode->i_zone[0] = get_free_block();
    inode->i_nlinks = 2;
    inode->i_time = time(NULL);
    if (badblocks)
        inode->i_size = 3 * dirsize;
    else {
        root_block[2 * dirsize] = '\0';
        root_block[2 * dirsize + 1] = '\0';
        inode->i_size = 2 * dirsize;
    }
    inode->i_mode = S_IFDIR + 0755;
    inode->i_uid  = getuid();
    if (inode->i_uid)
        inode->i_gid = getgid();
    write_block(inode->i_zone[0], root_block);
}

static void mark_good_blocks(void)
{
    int blk;

    for (blk = 0; blk < used_good_blocks; blk++)
       mark_zone(good_blocks_table[blk]);
}

static inline int next(int zone)
{
    if (!zone)
        zone = sb->s_firstdatazone - 1;
    while (++zone < sb->s_nzones)
        if (zone_in_use(zone))
            return zone;
    return 0;
}

static void make_bad_inode(void)
{
    struct minix_inode *inode = &Inode[MINIX_BAD_INO];
    int i, j, zone;
    int ind = 0, dind = 0;
    unsigned short ind_block[BLOCK_SIZE >> 1];
    unsigned short dind_block[BLOCK_SIZE >> 1];

    if (!badblocks)
        return;
    mark_inode(MINIX_BAD_INO);
    inode->i_nlinks = 1;
    inode->i_time = time(NULL);
    inode->i_mode = S_IFREG + 0000;
    inode->i_size = badblocks * BLOCK_SIZE;
    zone = next(0);
    for (i = 0; i < 7; i++) {
        inode->i_zone[i] = zone;
        if (!(zone = next(zone)))
            goto end_bad;
    }
    inode->i_zone[7] = ind = get_free_block();
    memset(ind_block, 0, BLOCK_SIZE);
    for (i = 0; i < 512; i++) {
        ind_block[i] = zone;
        if (!(zone = next(zone)))
            goto end_bad;
    }
    inode->i_zone[0] = dind = get_free_block();
    memset(dind_block, 0, BLOCK_SIZE);
    for (i = 0; i < 512; i++) {
        write_block(ind, (char *)ind_block);
        dind_block[i] = ind = get_free_block();
        for (j = 0; j < 512; i++) {
            ind_block[j] = zone;
            if (!(zone = next(zone)))
                goto end_bad;
        }
    }
    printf("too many bad blocks.\n");
end_bad:
    if (ind)
        write_block(ind, (char *)ind_block);
    if (dind)
        write_block(dind, (char *)dind_block);
}

static void write_tables(void)
{
    /* Mark the super block valid. */
    sb->s_state |= MINIX_VALID_FS;
    sb->s_state &= ~MINIX_ERROR_FS;

    if (lseek(DEV, 0, SEEK_SET))
        printf("seek to boot block failed in write_tables\n");
    if (512 != write(DEV, boot_block_buffer, 512))
        printf("unable to clear boot sector\n");
    if (BLOCK_SIZE != lseek(DEV, BLOCK_SIZE, SEEK_SET))
        printf("seek failed in write_tables\n");
    if (BLOCK_SIZE != write(DEV, super_block_buffer, BLOCK_SIZE))
        printf("unable to write super-block\n");
    if (BLOCK_SIZE * sb->s_imap_blocks !=
                      write(DEV, inode_map, sb->s_imap_blocks * BLOCK_SIZE))
        printf("unable to write inode map\n");
    if (BLOCK_SIZE * sb->s_zmap_blocks !=
                      write(DEV, zone_map, sb->s_zmap_blocks * BLOCK_SIZE))
        printf("unable to write zone map\n");
    if (INODE_BUFFER_SIZE != write(DEV, inode_buffer, INODE_BUFFER_SIZE))
        printf("unable to write inodes\n");
}

/* user help message */
void usage(void)
{
    printf("%s .0.0.1(2017-11-16)\n",program_name);
    printf("BiscuitOS mkfs.minix\n");
    printf("Usage: %s [-c | -l filename] [-nXX] [-iXX] /dev/name [blocks]\n",
                   program_name);
}

int main(int argc,char *argv[])
{
    int i;
    char *tmp;
    struct stat statbuf;
    char *listfile = NULL;

    if (argc && *argv)
        program_name = *argv;

    if (INODE_SIZE * MINIX_INODES_PER_BLOCK != BLOCK_SIZE)
        printf("Bad inode size\n");

    opterr = 0;
    while ((i = getopt(argc, argv, "ci:l:n")) != EOF) {
        switch (i) {
        case 'c':
            check = 1;
            break;
        case 'i':
            req_nr_inodes = (unsigned long) atol(optarg);
            break;
        case 'l':
            listfile = optarg;
            break;
        case 'n':
            i = strtoul(optarg, &tmp, 0);
            if (*tmp)
                usage();
            if (i == 14)
                magic = MINIX_SUPER_MAGIC;
            else
                usage();
            namelen = i;
            dirsize = i + 2;
            break;
        default:
            usage();
        }
    }
    argc -= optind;
    argv += optind;
    if (argc > 0 && !device_name) {
        device_name = argv[0];
        argc--;
        argv++;
    }
    if (argc > 0) {
        BLOCKS = strtol(argv[0], &tmp, 0);
        if (*tmp) {
            printf("strtol error: number of blocks not specified");
            usage();
        }
    }

    if (device_name && !BLOCKS)
        BLOCKS = get_size(device_name) / 1024;
    if (!device_name || BLOCKS < 10) {
        usage();
    }

    if (BLOCKS > 65535)
        BLOCKS = 65535;
    check_mount();    /* is it already mounted */
    tmp = root_block;
    *(short *)tmp = 1;
    strcpy(tmp + 2, ".");
    tmp += dirsize;
    *(short *)tmp = 1;
    strcpy(tmp + 2, "..");
    tmp += dirsize;
    *(short *)tmp = 2;
    strcpy(tmp + 2, ".badblocks");
    DEV = open(device_name, O_RDWR);
    if (DEV < 0)
        printf("unable to open %s\n", device_name);
    if (fstat(DEV, &statbuf) < 0)
        printf("unable to stat %s\n", device_name);
    if (!S_ISBLK(statbuf.st_mode))
        check = 0;
    else if (statbuf.st_rdev == 0x0300 || statbuf.st_rdev == 0x0340)
        printf("will not try to make filesystem on '%s'\n", device_name);
    setup_tables();
    if (check)
        check_blocks();
    else if (listfile)
        get_list_blocks(listfile);
    make_root_inode();
    make_bad_inode();
    mark_good_blocks();
    write_tables();
    return 0;
}
