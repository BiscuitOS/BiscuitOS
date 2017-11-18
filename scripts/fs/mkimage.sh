#!/bin/bash

ROOT=`pwd`

IMAGE=${ROOT}/hdc.img
ROOTFS=${ROOT}/rootfs.img
empty_size=2     # MB
rootfs_size=20   # MB

# Create boot and root partition
dd bs=1M count=${empty_size} if=/dev/zero of=${IMAGE}

# Create Minix filesystem
dd bs=1M count=${rootfs_size} if=/dev/zero of=${ROOTFS}
mkfs.minix ${ROOTFS}

# append rootfs to boot
dd bs=1M seek=${empty_size} conv=notrunc oflag=append \
         if=${ROOTFS} of=${IMAGE}

rm -rf ${ROOTFS}

# Add partition table
cat <<EOF | fdisk "${IMAGE}"
o
n
p
1
$((empty_size*1024*2))
$((rootfs_size*1024*2))
t
c
w
EOF

sync
