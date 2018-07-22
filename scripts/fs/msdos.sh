#!/bin/bash

#
# Create msdos rootfs
#  (C) 2017.11 <buddy.zhang@aliyun.com>
#

# $1: Root dirent
# $2: PackageName
# $3: Download Site
# $4: Kernel version
# $5: tar type
# $6: Command
# $7: Image size

ROOT=$1
STAGING_DIR=${ROOT}/output/rootfs
BASE_FILE=${ROOT}/target/base-file
DL_DIR=${ROOT}/dl
IMAGE_VERSION=$3
IMAGE_NAME=BiscuitOS
IMAGE_DIR=${ROOT}/output
ROOT_BZ2=$2.$5
DOWNLOAD_SITE=$3/$2.$5

HOST_BIN=${ROOT}/output/host/bin/mkfs.minix

####
# Bootable image
#
MBR_sect=2048       # sectors (Support EFI BIOS, Reserved 1M)
ROOTFS_sect=81920   # sectors
SWAP_sect=10240     # sectors

####
# Don't edit
ROOTFS_START=${MBR_sect}
ROOTFS_END=`expr ${ROOTFS_START} + ${ROOTFS_sect} - 1`
SWAP_START=`expr ${ROOTFS_END} + 1`
SWAP_END=`expr ${SWAP_START} + ${SWAP_sect}`
SWAP_SEEK=`expr ${MBR_sect} + ${ROOTFS_sect}`

# Prepare staging
if [ ! -d ${STAGING_DIR} ]; then
  mkdir -p ${STAGING_DIR}
fi

# Copy base-file 
if [ ! -d ${BASE_FILE} ]; then
  mkdir -p ${STAGING_DIR}/dev
  mkdir -p ${STAGING_DIR}/etc
  mkdir -p ${STAGING_DIR}/usr
else
  cp -rfa ${BASE_FILE}/* ${STAGING_DIR}
fi

##
# Build minix from mkfs.minix
if [ $6 == "host_build" -a ! -f ${IMAGE_DIR}/${IMAGE_NAME}-$4.img ]; then
  # Create MBR partition
  #  With the death of the legacy BIOS and its replancement with EFI BIOS
  #  a specia I boot partitions needed to allow EFI system to boot in EFI
  #  mode. Starting the first partition at sector 2048 leaves 1Mb for the
  #  EFI code. Modern partiting tools do this anyway and fdisk has been
  #  updated to follow suit.
  #
  dd if=/dev/zero bs=512 count=${MBR_sect} \
     of=${IMAGE_DIR}/mbr.img > /dev/null 2>&1

  # Create MINIXFS partition
  #  Specify rootfs append MBR partition.
  dd if=/dev/zero bs=512 count=${ROOTFS_sect} \
     of=${IMAGE_DIR}/msdos.img > /dev/null 2>&1
  sudo mkfs.msdos ${IMAGE_DIR}/msdos.img

  # Create SWAP partition
  #  Specify swap append rootfs partition
  dd if=/dev/zero bs=512 count=${SWAP_sect} \
     of=${IMAGE_DIR}/swap.img > /dev/null 2>&1
  mkswap ${IMAGE_DIR}/swap.img > /dev/null 2>&1

  # Append minixfs into mbr
  dd if=${IMAGE_DIR}/msdos.img conv=notrunc oflag=append bs=512  \
     seek=${MBR_sect} of=${IMAGE_DIR}/mbr.img > /dev/null 2>&1
  rm -rf ${IMAGE_DIR}/msdos.img

  ## Append swap into mbr
  dd if=${IMAGE_DIR}/swap.img conv=notrunc oflag=append bs=512  \
     seek=${SWAP_SEEK} of=${IMAGE_DIR}/mbr.img > /dev/null 2>&1
  rm -rf ${IMAGE_DIR}/swap.img
 
  mv ${IMAGE_DIR}/mbr.img ${IMAGE_DIR}/${IMAGE_NAME}-$4.img
  sync

  # Add partition table
cat <<EOF | fdisk "${IMAGE_DIR}/${IMAGE_NAME}-$4.img"
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
7
t
2
82
w
EOF
  sync

elif [ $6 == "download" ]; then
  # Download or Reload Rootfs
  if [ ! -f ${DL_DIR}/${ROOT_BZ2} ]; then
    cd ${DL_DIR}
    wget ${DOWNLOAD_SITE} 
    cd -
  fi

  # Create or Refresh Image
  if [ ! -f ${IMAGE_DIR}/${IMAGE_NAME}-$4.img ]; then
    tar xjf ${DL_DIR}/${ROOT_BZ2} -C ${IMAGE_DIR}
    mv ${IMAGE_DIR}/$2 ${IMAGE_DIR}/${IMAGE_NAME}-$4.img
  fi
fi
# Update rootfs
# This routine need root permission!
#
if [ -d ${IMAGE_DIR}/.rootfs ]; then
  rm -rf ${IMAGE_DIR}/.rootfs
fi
echo -e "\e[1;31m  This procedure need root permission. \e[0m"
mkdir -p ${IMAGE_DIR}/.rootfs

sudo losetup -d /dev/loop4 > /dev/null 2>&1
##
# Mount image into /dev/loopx
if [ $6 == "host_build" ]; then
  sudo losetup -o 1048576 /dev/loop4 ${IMAGE_DIR}/${IMAGE_NAME}-$4.img
else
  sudo losetup -o 512 /dev/loop4 ${IMAGE_DIR}/${IMAGE_NAME}-$4.img
fi

sudo mount /dev/loop4 ${IMAGE_DIR}/.rootfs
sudo cp -rf ${IMAGE_DIR}/rootfs/* ${IMAGE_DIR}/.rootfs
sync
sudo umount ${IMAGE_DIR}/.rootfs
sudo losetup -d /dev/loop4
rm -rf ${IMAGE_DIR}/.rootfs
sync 
