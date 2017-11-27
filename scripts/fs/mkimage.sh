#!/bin/bash
###############################################
#
# build a minix-fs image
#
#  Mount:
#   mount -t minix minix.img -o loop mount_dir
###############################################
ROOT=`pwd`

IMAGE=${ROOT}/mbr.img
ROOTFS=${ROOT}/minix.img
mbr_size=16      # MB
rootfs_size=20   # MB

# Create Minix filesystem
dd bs=1M count=${rootfs_size} if=/dev/zero of=${ROOTFS}
mkfs.minix ${ROOTFS}

# Create MBR partition
dd bs=1M count=${mbr_size} if=/dev/zero of=${IMAGE}
sync

# Create MBR partition table
cat <<EOF | fdisk "${IMAGE}"
n
p
1


w
EOF

sync
# Append MINIX fs into Rootfs
dd bs=512 seek=1 if=${ROOTFS} of=${IMAGE}
rm -rf ${ROOTFS}

sync
