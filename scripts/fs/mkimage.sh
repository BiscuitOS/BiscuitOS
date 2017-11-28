#!/bin/bash
###############################################
#
# build a minix-fs image
#
#  Mount:
#   losetup -o 1048576 /dev/loop3 mbr.img
#   mount -t minix mbr.img mount_dir
###############################################
ROOT=`pwd`
OUTDIR=${ROOT}

# Partition size in sector (512 Bytes)
MBR_sect=2048            # sectors (Support EFI BIOS, Reserved 1M)
ROOTFS_sect=81920        # sectors

# Create MBR partition
#  With the death of the legacy BIOS and its replancement with EFI BIOS
#  a specia I boot partitions needed to allow EFI system to boot in EFI
#  mode. Starting the first partition at sector 2048 leaves 1Mb for the
#  EFI code. Modern partiting tools do this anyway and fdisk has been
#  updated to follow suit.
#
dd if=/dev/zero bs=512 count=${MBR_sect} of=${OUTDIR}/mbr.img

# Create MINIXFS partition
#  Specify rootfs append MBR partition.
dd if=/dev/zero bs=512 count=${ROOTFS_sect} of=${OUTDIR}/minixfs.img
mkfs.minix -1 ${OUTDIR}/minixfs.img

# Append minixfs into mbr
dd if=${OUTDIR}/minixfs.img conv=notrunc oflag=append bs=512  \
        seek=${MBR_sect} of=${OUTDIR}/mbr.img
rm -rf ${OUTDIR}/minixfs.img
sync

# Add partition table
cat <<EOF | fdisk "${OUTDIR}/mbr.img"
n
p
1
${MBR_sect}

t
81
w
EOF
sync
