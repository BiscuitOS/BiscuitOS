#!/bin/bash

#
# Create minix rootfs
# (C) 2017.11 <buddy.zhang@aliyun.com>
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
if [ $6 == "host_build" -a ! -b ${IMAGE_DIR}/${IMAGE_NAME}-$4.img ]; then
  dd bs=1M count=10 if=/dev/zero of=${IMAGE_DIR}/${IMAGE_NAME}-$4.img
  # Create MBR partition table
cat <<EOF | fdisk "${IMAGE_DIR}/${IMAGE_NAME}-$4.img"
n
p
1


w
EOF
  # Create MINIX partition
  dd bs=1M count=40 if=/dev/zero of=${IMAGE_DIR}/minix.img
  mkfs.minix ${IMAGE_DIR}/minix.img
  # Append MINIX fs into ROOTFS
  dd bs=512 seek=1 if=${IMAGE_DIR}/minix.img \
                   of=${IMAGE_DIR}/${IMAGE_NAME}-$4.img
  rm -rf of=${IMAGE_DIR}/minix.img
  sync
else
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
sudo losetup -o 512 /dev/loop3 ${IMAGE_DIR}/${IMAGE_NAME}-$4.img
sudo mount /dev/loop3 ${IMAGE_DIR}/.rootfs
sudo cp -rfa ${IMAGE_DIR}/rootfs/* ${IMAGE_DIR}/.rootfs
sync
sudo umount ${IMAGE_DIR}/.rootfs
sudo losetup -d /dev/loop3
rm -rf ${IMAGE_DIR}/.rootfs
sync 
