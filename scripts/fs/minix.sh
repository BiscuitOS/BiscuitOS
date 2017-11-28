#!/bin/bash

#
# Create minix rootfs
#  MINIX was written from scratch by Andrew S. Tanenbaum in the 1980s, as 
#  a Unix-like operating system whose source code could be used freely in 
#  education. The MINIX file system was designed for use with MINIX. it 
#  copies the basic structure of the Unix File System but avoids any complex
#  features in the interest of keeping the source code clean, clear and 
#  simple, to meet the overall goal of MINIX to be a useful teaching aid.
#
#  When Linus Torvalds first started writing his Linux operating system
#  kernel (1991), he was working on a machine running MINIX, and adopted
#  its file system layout. This soon proved problematic, since MINIX 
#  restricted filename lengths to fourteen characters (thirty in later 
#  versions), it limited partitions to 64 megabytes, and the file system 
#  was designed for teaching purposes, not performance. The Extended file 
#  system (ext; April 1992) was developed to replace MINIX's, but it was 
#  only with the second version of this, ext2, that Linux obtained a 
#  commercial-grade file system. As of 1994, the MINIX file system was 
#  "scarcely in use" among Linux users.
#
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
     of=${IMAGE_DIR}/minixfs.img > /dev/null 2>&1
  mkfs.minix -1 ${IMAGE_DIR}/minixfs.img > /dev/null 2>&1

  # Append minixfs into mbr
  dd if=${IMAGE_DIR}/minixfs.img conv=notrunc oflag=append bs=512  \
     seek=${MBR_sect} of=${IMAGE_DIR}/mbr.img > /dev/null 2>&1
  rm -rf ${IMAGE_DIR}/minixfs.img
  mv ${IMAGE_DIR}/mbr.img ${IMAGE_DIR}/${IMAGE_NAME}-$4.img
  sync

  # Add partition table
cat <<EOF | fdisk "${IMAGE_DIR}/${IMAGE_NAME}-$4.img"
n
p
1
${MBR_sect}

t
81
w
EOF
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

##
# Mount image into /dev/loopx
if [ $6 == "host_build" ]; then
  sudo losetup -o 1048576 /dev/loop3 ${IMAGE_DIR}/${IMAGE_NAME}-$4.img
else
  sudo losetup -o 512 /dev/loop3 ${IMAGE_DIR}/${IMAGE_NAME}-$4.img
fi
sudo mount /dev/loop3 ${IMAGE_DIR}/.rootfs
sudo cp -rfa ${IMAGE_DIR}/rootfs/* ${IMAGE_DIR}/.rootfs
sync
sudo umount ${IMAGE_DIR}/.rootfs
sudo losetup -d /dev/loop3
rm -rf ${IMAGE_DIR}/.rootfs
sync 
