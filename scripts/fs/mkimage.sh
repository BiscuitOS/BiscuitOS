#!/bin/bash

# Establish BiscuitOS Rootfs.
#
# (C) 2018.07.23 BiscuitOS <buddy.zhang@aliyun.com>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2 as
# published by the Free Software Foundation.

##
# Don't edit
ROOT=$1
FS_NAME=$2
FS_VERSION=$3
KERN_VERSION=$4
ROOTFS_SIZE=$5
SWAP_SIZE=$6
NODE_TYPE=1
FS_TYPE=0

## Output
STAGING_DIR=${ROOT}/output/rootfs/rootfs_${KERN_VERSION}
KERNEL_DIR=${ROOT}/kernel/linux_${KERN_VERSION}
BASE_FILE=${ROOT}/target/base-file
IMAGE_NAME=BiscuitOS
IMAGE_DIR=${ROOT}/output
IMAGE=

###
# Bootable Image: MBR and partition table
MBR_sect=2048
ROOTFS_sect=`expr ${ROOTFS_SIZE} \* 2048`
SWAP_sect=`expr ${SWAP_SIZE} \* 2048`
ROOTFS_START=${MBR_sect}
ROOTFS_END=`expr ${ROOTFS_START} + ${ROOTFS_sect} - 1`
SWAP_START=`expr ${ROOTFS_END} + 1`
SWAP_END=`expr ${SWAP_START} + ${SWAP_sect}`
SWAP_SEEK=`expr ${MBR_sect} + ${ROOTFS_sect}`

### Kernel version
KVersion=(
"0.11"
"0.12"
"0.95.1"
"0.95.3"
"0.95a"
"0.96.1"
"0.97.1"
"0.98.1"
"0.99.1"
"1.0.1"
)

FSX=(0 1 2 3 4 5 6 7 8 9)

precheck()
{
    mkdir -p ${STAGING_DIR} ${IMAGE_DIR}
    j=0
    for i in ${KVersion[@]}; do
        if [ $i = ${KERN_VERSION} ]; then
            if [ ${FSX[$j]} -lt 9 ]; then
                FS_NAME=minix
		FS_VERSION=V1
            fi
            if [ ${FSX[$j]} -gt 2 ]; then
                NODE_TYPE=2
            fi
        fi
        j=`expr $j + 1`
    done

    if [ -d ${IMAGE_DIR}/.rootfs ]; then
        rm -rf ${IMAGE_DIR}/.rootfs
    fi
    mkdir -p ${IMAGE_DIR}/.rootfs
}

### Pre-Check 
precheck

## Build Image
#  
#  0----------+------------+----------+
#  |          |            |          |
#  | MBR (1M) |   Rootfs   |   Swap   |
#  |          |            |          |
#  +----------+------------+----------+
#

## Create MBR Partition
#   With the death of the legacy BIOS and its replancement with EFI BIOS
#   a specia I boot partitions needed to allow EFI system to boot in EFI
#   mode. Starting the first partition at sector 2048 leaves 1Mb for the
#   EFI code. Modern partiting tools do this anyway and fdisk has been
#   updated to follow suit.
#
dd if=/dev/zero bs=512 count=${MBR_sect} \
           of=${IMAGE_DIR}/mbr.img > /dev/null 2>&1

## Creat Rootfs Partition
dd if=/dev/zero bs=512 count=${ROOTFS_sect} \
           of=${IMAGE_DIR}/rootfs.img > /dev/null 2>&1

## Formatted Rootfs
case ${FS_NAME} in
    minix)
        mkfs.minix -1 ${IMAGE_DIR}/rootfs.img
	FS_TYPE=81
        ;;
    ext2)
        sudo losetup -d /dev/loop4 > /dev/null 2>&1
        sudo losetup /dev/loop4 ${IMAGE_DIR}/rootfs.img > /dev/null 2>&1
        sudo mkfs.ext2 -r ${FS_VERSION} /dev/loop4
        sudo losetup -d /dev/loop4 > /dev/null 2>&1
	FS_TYPE=83
        ;;
    msdos)
        sudo mkfs.msdos ${IMAGE_DIR}/rootfs.img
        FS_TYPE=7
        ;;
    *)
        echo "Unknow filesystem: ${FS_NAME}"
        ;;
esac

## Create SWAP Partition
dd if=/dev/zero bs=512 count=${SWAP_sect} \
           of=${IMAGE_DIR}/swap.img > /dev/null 2>&1
mkswap ${IMAGE_DIR}/swap.img > /dev/null 2>&1

## Append rootfs and swap behind in MBR

# Append rootfs
dd if=${IMAGE_DIR}/rootfs.img conv=notrunc oflag=append bs=512  \
           seek=${MBR_sect} of=${IMAGE_DIR}/mbr.img > /dev/null 2>&1
rm -rf ${IMAGE_DIR}/rootfs.img

# Append SWAP
dd if=${IMAGE_DIR}/swap.img conv=notrunc oflag=append bs=512  \
           seek=${SWAP_SEEK} of=${IMAGE_DIR}/mbr.img > /dev/null 2>&1
rm -rf ${IMAGE_DIR}/swap.img

# Build full image
# Full name:
#    <Image_Name>-<Filesystem>_<Filesystem Version>.<kernel version>.img
#
IMAGE=${IMAGE_DIR}/${IMAGE_NAME}-${FS_NAME}_${FS_VERSION}-${KERN_VERSION}.img
mv ${IMAGE_DIR}/mbr.img ${IMAGE}

sync

## Add Partition Table
cat <<EOF | fdisk "${IMAGE}"
n
p
1
${ROOTFS_START}
${ROOTFS_END}
n
p
2
${SWAP_START}

t
1
${FS_TYPE}
t
2
82
w
EOF

sync

#### Copy and install package and libray into rootfs
##

sudo losetup -d /dev/loop4 > /dev/null 2>&1

# Mount 1st partition
sudo losetup -o 1048576 /dev/loop4 ${IMAGE} > /dev/null 2>&1
sudo mount /dev/loop4 ${IMAGE_DIR}/.rootfs > /dev/null 2>&1
# Install package and library
sudo cp -rfa ${STAGING_DIR}/* ${IMAGE_DIR}/.rootfs
sync
sudo umount ${IMAGE_DIR}/.rootfs > /dev/null 2>&1
sudo losetup -d /dev/loop4 > /dev/null 2>&1
rm -rf ${IMAGE_DIR}/.rootfs > /dev/null 2>&1
cp -rf ${IMAGE} ${KERNEL_DIR} 
sync

######
# Display Userful Information
figlet "BiscuitOS"
echo "*******************************************************************"
echo "Kernel Path:"
echo -e "\e[1;31m ${KERNEL_DIR} \e[0m"
echo ""
echo "Blog"
echo -e "\e[1;31m https://biscuitos.github.io/blog/ \e[0m"
echo "*******************************************************************"
echo ""
