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

# Obtain data from Kbuild
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

## Obtain data from DTB
SD_START=`fdtget -t i ${DTB} /SD sd-base`
HOLE_SIZE=`fdtget -t i ${DTB} /SD hole-size`
MBR_SIZE=`fdtget -t i ${DTB} /MBR sd-size`
BIOS_SIZE=`fdtget -t i ${DTB} /BIOS/SeaBIOS sd-size`
SYSTEM_SIZE=`fdtget -t i ${DTB} /system sd-size`
ROOTFS_SIZE=`fdtget -t i ${DTB} /rootfs sd-size`
SWAP_SIZE=`fdtget -t i ${DTB} /swap sd-size`
DISK_SECT=`fdtget -t i ${DTB} /SD sd-sect`

## Output
STAGING_DIR=${ROOT}/output/rootfs/rootfs_${KERN_VERSION}
KERNEL_DIR=${ROOT}/kernel/linux_${KERN_VERSION}
BASE_FILE=${ROOT}/target/base-file
IMAGE_NAME=BiscuitOS
IMAGE_DIR=${ROOT}/output
LOOPDEV=`sudo losetup -f`

####
# bootable Disk Image
#
# +-----+------+--------+--------+------+
# |     |      |        |        |      |
# | MBR | BIOS | System | Rootfs | Swap |
# |     |      |        |        |      |
# +-----+------+--------+--------+------+
#
# Note! 
# START: Start address of first sect 
# END  : Start address of last sect
# LEN  : Length of bolock
# SEEK : Total sect behind
# Unit for Sect total 512 Byte
DISK_HOLE=`expr ${HOLE_SIZE} \/ ${DISK_SECT}`
DISK_START=`expr ${SD_START} \/ ${DISK_SECT}`

DISK_MBR_START=${DISK_START}
DISK_MBR_LEN=`expr ${MBR_SIZE} \/ ${DISK_SECT}`
DISK_MBR_END=`expr ${DISK_MBR_START} + ${DISK_MBR_LEN} - 1`
DISK_MBR_SEEK=`expr ${DISK_MBR_START}`

DISK_BIOS_LEN=`expr ${BIOS_SIZE} \/ ${DISK_SECT}`
DISK_BIOS_START=`expr ${DISK_MBR_END} + 1 + ${DISK_HOLE}`
DISK_BIOS_END=`expr ${DISK_BIOS_START} + ${DISK_BIOS_LEN} - 1`
DISK_BIOS_SEEK=${DISK_BIOS_START}

DISK_SYSTEM_LEN=`expr ${SYSTEM_SIZE} \/ ${DISK_SECT}`
DISK_SYSTEM_START=`expr ${DISK_BIOS_END} + 1 + ${DISK_HOLE}`
DISK_SYSTEM_END=`expr ${DISK_SYSTEM_START} + ${DISK_SYSTEM_LEN} - 1`
DISK_SYSTEM_SEEK=${DISK_SYSTEM_START}

DISK_ROOTFS_LEN=`expr ${ROOTFS_SIZE} \/ ${DISK_SECT}`
DISK_ROOTFS_START=`expr ${DISK_SYSTEM_END} + 1 + ${DISK_HOLE}`
DISK_ROOTFS_END=`expr ${DISK_ROOTFS_START} + ${DISK_ROOTFS_LEN} - 1`
DISK_ROOTFS_SEEK=${DISK_ROOTFS_START}

DISK_SWAP_LEN=`expr ${SWAP_SIZE} \/ ${DISK_SECT}`
DISK_SWAP_START=`expr ${DISK_ROOTFS_END} + 1 + ${DISK_HOLE}`
DISK_SWAP_END=`expr ${DISK_SWAP_START} + ${DISK_SWAP_LEN} - 1`
DISK_SWAP_SEEK=${DISK_SWAP_START}

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
dd if=/dev/zero bs=${DISK_SECT} count=${DISK_MBR_LEN} \
                                   of=${IMAGE_DIR}/mbr.img > /dev/null 2>&1

## Create BIOS partition
dd if=/dev/zero bs=${DISK_SECT} count=${DISK_BIOS_LEN} \
                                   of=${IMAGE_DIR}/BIOS.img > /dev/null 2>&1

## Create System partition
dd if=/dev/zero bs=${DISK_SECT} count=${DISK_SYSTEM_LEN} \
                                   of=${IMAGE_DIR}/system.img > /dev/null 2>&1

## Creat Rootfs Partition
dd if=/dev/zero bs=${DISK_SECT} count=${DISK_ROOTFS_LEN} \
                                   of=${IMAGE_DIR}/rootfs.img > /dev/null 2>&1

## Creat SWAP Partition
dd if=/dev/zero bs=${DISK_SECT} count=${DISK_SWAP_LEN} \
                                   of=${IMAGE_DIR}/swap.img > /dev/null 2>&1
mkswap ${IMAGE_DIR}/swap.img 

## Creat hole 
dd if=/dev/zero bs=${DISK_SECT} count=${DISK_HOLE} \
                                   of=${IMAGE_DIR}/hole.img > /dev/null 2>&1
## Formatted Rootfs
case ${FS_NAME} in
    minix)
        mkfs.minix -1 ${IMAGE_DIR}/rootfs.img
	FS_TYPE=81
        ;;
    ext2)
        sudo losetup -d ${LOOPDEV} > /dev/null 2>&1
        sudo losetup ${LOOPDEV} ${IMAGE_DIR}/rootfs.img 
        sudo mkfs.ext2 -r ${FS_VERSION} ${LOOPDEV}
        sudo losetup -d ${LOOPDEV} > /dev/null 2>&1
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

## Install Image into DISK

# Install BIOS
dd if=${BIOS} conv=notrunc  bs=${DISK_SECT} of=${IMAGE_DIR}/BIOS.img > /dev/null 2>&1

# Install Kernel Image
dd if=${KIMAGE} conv=notrunc bs=${DISK_SECT} of=${IMAGE_DIR}/system.img > /dev/null 2>&1

## Append DISK Image

# Append hole
dd if=${IMAGE_DIR}/hole.img conv=notrunc oflag=append bs=${DISK_SECT} \
          seek=`expr ${DISK_MBR_END} + 1` of=${IMAGE_DIR}/mbr.img \
          count=${DISK_HOLE} > /dev/null 2>&1

# Append BIOS
dd if=${IMAGE_DIR}/BIOS.img conv=notrunc oflag=append bs=${DISK_SECT} \
          seek=${DISK_BIOS_SEEK} of=${IMAGE_DIR}/mbr.img \
          count=${DISK_BIOS_LEN} > /dev/null 2>&1

# Append hole
dd if=${IMAGE_DIR}/hole.img conv=notrunc oflag=append bs=${DISK_SECT} \
          seek=`expr ${DISK_BIOS_END} + 1` of=${IMAGE_DIR}/mbr.img \
          count=${DISK_HOLE} > /dev/null 2>&1

# Append System
dd if=${IMAGE_DIR}/system.img conv=notrunc oflag=append bs=${DISK_SECT} \
          seek=${DISK_SYSTEM_SEEK} of=${IMAGE_DIR}/mbr.img \
          count=${DISK_SYSTEM_LEN} > /dev/null 2>&1

# Append hole
dd if=${IMAGE_DIR}/hole.img conv=notrunc oflag=append bs=${DISK_SECT} \
          seek=`expr ${DISK_SYSTEM_END} + 1` of=${IMAGE_DIR}/mbr.img \
          count=${DISK_HOLE} > /dev/null 2>&1

# Append Rootfs
dd if=${IMAGE_DIR}/rootfs.img conv=notrunc oflag=append bs=${DISK_SECT} \
          seek=${DISK_ROOTFS_SEEK} of=${IMAGE_DIR}/mbr.img \
          count=${DISK_ROOTFS_LEN} > /dev/null 2>&1

# Append hole
dd if=${IMAGE_DIR}/hole.img conv=notrunc oflag=append bs=${DISK_SECT} \
          seek=`expr ${DISK_ROOTFS_END} + 1` of=${IMAGE_DIR}/mbr.img \
          count=${DISK_HOLE} > /dev/null 2>&1

# Append Swap
dd if=${IMAGE_DIR}/swap.img conv=notrunc oflag=append bs=${DISK_SECT} \
          seek=${DISK_SWAP_SEEK} of=${IMAGE_DIR}/mbr.img \
          count=${DISK_SWAP_LEN} > /dev/null 2>&1

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
${DISK_ROOTFS_START}
${DISK_ROOTFS_END}
n
p
2
${DISK_SWAP_START}
${DISK_SWAP_END}
t
1
${FS_TYPE}
t
2
82
p
w
EOF

sync

#### Copy and install package and libray into rootfs
##

sudo losetup -d ${LOOPDEV} > /dev/null 2>&1 

# Mount 1st partition
sudo losetup -o `expr ${DISK_ROOTFS_START} \* 512` ${LOOPDEV} ${IMAGE} 
sudo mount ${LOOPDEV} ${IMAGE_DIR}/.rootfs 
# Install package and library
sudo cp -rfa ${STAGING_DIR}/* ${IMAGE_DIR}/.rootfs
sync
sudo umount ${IMAGE_DIR}/.rootfs 
sudo losetup -d ${LOOPDEV} 
rm -rf ${IMAGE_DIR}/.rootfs 

sync
cp -rf ${IMAGE} ${KERNEL_DIR} 
sync

## Clear tmpfile
rm -rf ${IMAGE_DIR}/hole.img ${IMAGE_DIR}/rootfs.img ${IMAGE_DIR}/system.img ${IMAGE_DIR}/BIOS.img 
rm -rf ${IMAGE_DIR}/swap.img

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
