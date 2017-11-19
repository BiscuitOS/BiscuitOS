#!/bin/bash
###############################################
#
# build a minix-fs image
#
#  Mount:
#   mount -t minix minix.img -o loop mount_dir
###############################################
ROOT=`pwd`

IMAGE=${ROOT}/minix.img
ROOTFS=${ROOT}/rootfs.img
mbr_size=1       # MB
rootfs_size=20   # MB

# Create Minix filesystem
dd bs=1M count=${rootfs_size} if=/dev/zero of=${ROOTFS}
mkfs.minix ${ROOTFS}

# Create MBR partition
dd bs=1M count=${mbr_size} if=/dev/zero of=${IMAGE}

# Create MBR partition table
cat <<EOF | fdisk "${IMAGE}"
n
p
1


w
EOF

# Append MINIX fs into Rootfs
dd bs=512 seek=1 if=${ROOTFS} of=${IMAGE}
rm -rf ${ROOTFS}

sync
