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

ROOT=$1
STAGING_DIR=${ROOT}/output/rootfs
BASE_FILE=${ROOT}/target/base-file
DL_DIR=${ROOT}/dl
IMAGE_VERSION=$3
IMAGE_NAME=BiscuitOS
IMAGE_DIR=${ROOT}/output
ROOT_BZ2=$2.$5
DOWNLOAD_SITE=$3/$2.$5
ROOTFS_SIZE=80

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

# Build minix fs from mkfs.minix
if [ $6 == "host_build" -a ! -f ${IMAGE_DIR}/${IMAGE_NAME}-$4.img ]; then
  echo -e "\e[1;31m  Create new Distro image \e[0m"
  # build minix.img
  dd bs=1M count=${ROOTFS_SIZE} if=/dev/zero of=${IMAGE_DIR}/minix.img > /dev/null 2>&1
  sync
  mkfs.minix ${IMAGE_DIR}/minix.img > /dev/null 2>&1
  # build full image
  dd bs=1M count=10 if=/dev/zero of=${IMAGE_DIR}/${IMAGE_NAME}-$4.img > /dev/null 2>&1
  sync
  # format full image
cat <<EOF | fdisk "${IMAGE_DIR}/${IMAGE_NAME}-$4.img"
n
p
1


w
EOF
  # Append minix.img to full image
  dd bs=512 seek=1 if=${IMAGE_DIR}/minix.img of=${IMAGE_DIR}/${IMAGE_NAME}-$4.img > /dev/null 2>&1
  rm ${IMAGE_DIR}/minix.img
  sync

else  # Utilize original minifs from oldlinux.org
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
