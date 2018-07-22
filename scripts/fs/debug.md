dd if=/dev/zero bs=512 count=2048 of=mbr.img
dd if=/dev/zero bs=512 count=81920 of=msdos.img
sudo mkfs.msdos msdos.img
dd if=/dev/zero bs=512 count=10240 of=swap.img
mkswap swap.img
dd if=msdos.img conv=notrunc oflag=append bs=512 seek=2048 of=mbr.img
dd if=swap.img conv=notrunc oflag=append bs=512 seek=83968 of=mbr.img
fdisk mbr.img
n
p
1
2048
83967
n
p
2
83968

t
1
7
t
2
82
w

sudo losetup -d /dev/loop4 > /dev/null 2>&1
sudo losetup -o 1048576 /dev/loop4 mbr.img




