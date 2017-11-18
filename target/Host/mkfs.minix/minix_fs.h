#ifndef _MINIX_FS_H_
#define _MINIX_FS_H_

typedef unsigned char  u8;
typedef unsigned short u16;
typedef unsigned int   u32;
/*
 * This is the original minix inode layout on disk.
 * Note the 8-bit gid and atime and ctime.
 */
struct minix_inode {
    u16 i_mode;       /* File type and permission for file */
    u16 i_uid;        /* 16 uid */
    u32 i_size;       /* File size in bytes */
    u32 i_time;
    u8  i_gid;
    u8  i_nlinks;
    u16 i_zone[7];
    u16 i_indir_zone;
    u16 i_ab1_indr_zone;
};

/*
 * minix super-block data on disk
 */
struct minix_super_block {
    u16 s_ninodes;         /* Number of inodes */
    u16 s_nzones;          /* device size in blocks */
    u16 s_imap_blocks;     /* inode map size in blocks */
    u16 s_zmap_blocks;     /* zone map size in blocks */
    u16 s_firstdatazone;   /* Where data blocks begin */
    u16 s_log_zone_size;   /* unused... */
    u16 s_max_size;        /* Max file size supported in bytes */
    u16 s_magic;           /* magic number... fs version */
    u16 s_state;           /* filesystem state */
    u16 s_zones;           /* device size in blocks */
    u16 s_unused[4];
};

#define INODE_SIZE (sizeof(struct minix_inode))
#define MINIX_INODES_PER_BLOCK ((BLOCK_SIZE)/(sizeof(struct minix_inode)))

static inline int bit(char *addr, unsigned int nr)
{
    return (addr[nr >> 3] & (1 << (nr & 7))) != 0;
}

#endif
