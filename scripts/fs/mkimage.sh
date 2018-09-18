#!/bin/bash

set -e
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
NODE_TYPE=1
FS_TYPE=0
KERN_MAGIC=$5
DTB=${ROOT}/output/DTS/system_$4.dtb
BIOS=${ROOT}/kernel/linux_$4/SeaBIOS.bin
KIMAGE=${ROOT}/kernel/linux_$4/arch/x86/kernel/BiscuitOS

ROOTFS_SIZE=`fdtget -t i ${DTB} /rootfs sd-size`
SWAP_SIZE=`fdtget -t i ${DTB} /swap sd-size`
BIOS_SIZE=`fdtget -t i ${DTB} /BIOS/SeaBIOS sd-size`
IMAGE_SIZE=`fdtget -t i ${DTB} /system sd-size`

## Output
STAGING_DIR=${ROOT}/output/rootfs/rootfs_${KERN_VERSION}
KERNEL_DIR=${ROOT}/kernel/linux_${KERN_VERSION}
BASE_FILE=${ROOT}/target/base-file
IMAGE_NAME=BiscuitOS
IMAGE_DIR=${ROOT}/output
LOOPDEV=`sudo losetup -f`

###
# Bootable Image: MBR and partition table
MBR=`expr 1048576 + ${BIOS_SIZE} + ${IMAGE_SIZE}`
ROOTFS_sect=`expr ${ROOTFS_SIZE} \/ 512`
SWAP_sect=`expr ${SWAP_SIZE} \/ 512`
BIOS_sect=`expr ${BIOS_SIZE} \/ 512`
IMAGE_sect=`expr ${IMAGE_SIZE} \/ 512`
MBR_sect=`expr 2048 + ${BIOS_sect} + ${IMAGE_sect}`
ROOTFS_START=${MBR_sect}
ROOTFS_END=`expr ${ROOTFS_START} + ${ROOTFS_sect} - 1`
SWAP_START=`expr ${ROOTFS_END} + 1`
SWAP_END=`expr ${SWAP_START} + ${SWAP_sect}`
SWAP_SEEK=`expr ${MBR_sect} + ${ROOTFS_sect}`

precheck()
{
    mkdir -p ${STAGING_DIR} ${IMAGE_DIR}
    if [ ${KERN_MAGIC} -lt 9 ]; then
        FS_NAME=minix
        FS_VERSION=V1
    fi
    if [ ${KERN_MAGIC} -gt 2 ]; then
        NODE_TYPE=2
    fi

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
## Build SD image
#
#  0----------+------+--------+--------+------+
#  |          |      |        |        |      |
#  | MBR (1M) | BIOS | System | Rootfs | Swap |
#  |          |      |        |        |      |
#  +----------+------+--------+--------+------+
#

## Create MBR Partition
#   With the death of the legacy BIOS and its replancement with EFI BIOS
#   a specia I boot partitions needed to allow EFI system to boot in EFI
#   mode. Starting the first partition at sector 2048 leaves 1Mb for the
#   EFI code. Modern partiting tools do this anyway and fdisk has been
#   updated to follow suit.
#
dd if=/dev/zero bs=512 count=${MBR_sect} \
           of=${IMAGE_DIR}/mbr.img 

## Creat Rootfs Partition
dd if=/dev/zero bs=512 count=${ROOTFS_sect} \
           of=${IMAGE_DIR}/rootfs.img 

## Formatted Rootfs
case ${FS_NAME} in
    minix)
        mkfs.minix -1 ${IMAGE_DIR}/rootfs.img
	FS_TYPE=81
        ;;
    ext2)
        sudo losetup -d ${LOOPDEV}
        sudo losetup ${LOOPDEV} ${IMAGE_DIR}/rootfs.img 
        sudo mkfs.ext2 -r ${FS_VERSION} ${LOOPDEV}
        sudo losetup -d ${LOOPDEV} 
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
           of=${IMAGE_DIR}/swap.img 
mkswap ${IMAGE_DIR}/swap.img 

## Append rootfs and swap behind in MBR

# Append rootfs
dd if=${IMAGE_DIR}/rootfs.img conv=notrunc oflag=append bs=512  \
           seek=${MBR_sect} of=${IMAGE_DIR}/mbr.img
rm -rf ${IMAGE_DIR}/rootfs.img

# Append SWAP
dd if=${IMAGE_DIR}/swap.img conv=notrunc oflag=append bs=512  \
           seek=${SWAP_SEEK} of=${IMAGE_DIR}/mbr.img 
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

sudo losetup -d ${LOOPDEV} 

# Mount 1st partition
sudo losetup -o ${MBR} ${LOOPDEV} ${IMAGE} 
sudo mount ${LOOPDEV} ${IMAGE_DIR}/.rootfs 
# Install package and library
sudo cp -rfa ${STAGING_DIR}/* ${IMAGE_DIR}/.rootfs
sync
sudo umount ${IMAGE_DIR}/.rootfs 
sudo losetup -d ${LOOPDEV} 
rm -rf ${IMAGE_DIR}/.rootfs 

BIOS_SEEK=2048
KERNEL_SEEK=`expr 2048 + ${BIOS_sect}`

# Install BIOS
dd bs=512 if=${BIOS} of=${IMAGE} seek=${BIOS_SEEK} 

# Install Kernel Image
dd bs=512 if=${KIMAGE} of=${IMAGE} seek=${KERNEL_SEEK} 

sync
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
