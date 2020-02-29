#/bin/bash
  
set -e
# Auto create README.
#
# (C) 2019.05.11 BiscuitOS <buddy.zhang@aliyun.com>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2 as
# published by the Free Software Foundation.

# Root Dir for BiscuitOS
ROOT=${1%X}
# Project NAME
PROJECT_NAME=${9%X}
# Project ROOT
OUTPUT=${ROOT}/output/${PROJECT_NAME}
# BUSYBOX
BUSYBOX=${OUTPUT}/busybox/busybox
# CROSS
CROSS_COMPILE=${12%X}
# CROSS PATH
CROSS_PATH=${OUTPUT}/${CROSS_COMPILE}/${CROSS_COMPILE}
# Uboot
UBOOT=${15%X}
# Uboot CROSS Compile
UBOOT_CROSS=${16%X}
# Kernel Version
KERNEL_VERSION=${7%X}
[ ${KERNEL_VERSION}X = "newestX" ] && KERNEL_VERSION=6.0.0
# Rootfs NAME
ROOTFS_NAME=${2%X}
# Rootfs Version
ROOTFS_VERSION=${3%X}
# Rootfs Path
ROOTFS_PATH=${OUTPUT}/rootfs/${ROOTFS_NAME}
# Disk size (MB)
DISK_SIZE=${18%X}
[ ! ${DISK_SIZE} ] && DISK_SIZE=512
# Freeze Information
FREEZE_NAME=${17%X}
# Uboot Cross-Compiler Path
UCROSS_PATH=${OUTPUT}/${UBOOT_CROSS}/${UBOOT_CROSS}
# Kernel Cross-Compiler Path
KCROSS_PATH=${OUTPUT}/${CROSS_COMPILE}/${CROSS_COMPILE}
# Qemu Path
QEMU_PATH=${OUTPUT}/qemu-system/qemu-system
# Module Install Path
MODULE_INSTALL_PATH=${OUTPUT}/rootfs/rootfs/
# Running Only
ONLYRUN=${19%X}
SUPPORT_ONLYRUN=N
# Rootfs type
ROOTFS_TYPE=${20%X}

[ ${ONLYRUN}X = "YX" ] && SUPPORT_ONLYRUN=Y && KERNEL_VERSION=6.0.0

# Don't edit
README_NAME=README.md
RUNSCP_NAME=RunBiscuitOS.sh

## Feature list
SUPPORT_DTB=N
SUPPORT_2_X=N
SUPPORT_EXT3=N
SUPPORT_BLK=N
SUPPORT_DISK=N
SUPPORT_NONE_GNU=N
SUPPORT_RAMDISK=N
SUPPORT_UBOOT=N
SUPPORT_RPI=N
SUPPORT_RPI4B=N
SUPPORT_RPI3B=N
SUPPORT_DESKTOP=N
SUPPORT_DEBIAN=N
SUPPORT_DOCKER=N
SUPPORT_SERVER=N
SUPPORT_FREEZE_DISK=Y
SUPPORT_BUSYBOX=Y
SUPPORT_NETWORK=Y

# Kernel Version field
KERNEL_MAJOR_NO=
KERNEL_MINOR_NO=
KERNEL_MINIR_NO=

DEFAULT_CONFIG=defconfig
# Debian Package
DEBIAN_PACKAGE=

##
## Architecture information
ARCH=${11%X}
ARCH_NAME=

# Architecture Detect
case ${ARCH} in
	0)
	ARCH_NAME=unknown
	;;
	1)
	ARCH_NAME=x86
	QEMU=${QEMU_PATH}/i386-softmmu/qemu-system-i386
	;;
	2)
	ARCH_NAME=arm
	QEMU=${QEMU_PATH}/arm-softmmu/qemu-system-arm
	DEFAULT_CONFIG=vexpress_defconfig
	DEBIAN_PACKAGE=buster-base-armel.tar.gz.${ROOTFS_TYPE}.bsp
	;;
	3)
	ARCH_NAME=arm64
	QEMU=${QEMU_PATH}/aarch64-softmmu/qemu-system-aarch64
	DEFAULT_CONFIG=defconfig
	DEBIAN_PACKAGE=buster-base-arm64.tar.gz.${ROOTFS_TYPE}.bsp
	;;
	4)
	ARCH_NAME=riscv32
	QEMU=${QEMU_PATH}/riscv32-softmmu/qemu-system-riscv32
	DEFAULT_CONFIG=BiscuitOS_riscv32_defconfig
	;;
	5)
	ARCH_NAME=riscv64
	QEMU=${QEMU_PATH}/riscv64-softmmu/qemu-system-riscv64
	DEFAULT_CONFIG=BiscuitOS_riscv64_defconfig
	;;
	6)
	ARCH_NAME=x86_64
	QEMU=${QEMU_PATH}/x86_64-softmmu/qemu-system-x86_64
	;;
esac

# Detect Kernel version field
#   Kernek version field
#   --> Major.minor.minir
#   --> 5.0.1
#   --> Major: 5
#   --> Minor: 0
#   --> minir: 1
detect_kernel_version_field()
{
	[ ! ${KERNEL_VERSION} ] && echo "Invalid kernel version" && exit -1
	# Major field of Kernel version
	KERNEL_MAJOR_NO=${KERNEL_VERSION%%.*}
	tmpv1=${KERNEL_VERSION#*.}
	# Minor field of kernel version
	KERNEL_MINOR_NO=${tmpv1%%.*}
}
detect_kernel_version_field

# DTB support
# --> Only ARM >= 4.x support DTB
[ ${ARCH_NAME} == "arm" -a ${KERNEL_MAJOR_NO} -ge 4 ] && SUPPORT_DTB=Y
[ ${ARCH_NAME} == "arm" -a ${KERNEL_MAJOR_NO} -ge 3 -a ${KERNEL_MINOR_NO} -gt 15 ] && SUPPORT_DTB=Y

# Support RAMDISK (2.x/3.x Support)
# --> Mount / at RAMDISK
[ ${KERNEL_MAJOR_NO} -lt 4 ] && SUPPORT_RAMDISK=Y && SUPPORT_FREEZE_DISK=N
[ ${ARCH_NAME} == "arm64" ] && SUPPORT_RAMDISK=N
[ ${ARCH_NAME} == "x86" ] && SUPPORT_RAMDISK=Y && SUPPORT_FREEZE_DISK=N
[ ${ARCH_NAME} == "x86_64" ] && SUPPORT_RAMDISK=Y && SUPPORT_FREEZE_DISK=N

# Support Disk mount /
# --> Mount / at /dev/vda
[ ${SUPPORT_RAMDISK} = "N" ] && SUPPORT_DISK=Y

# Support Hard-disk
# --> Mount a disk on /mnt/
# --> 4.x, 5.x support
# --> 2.x, 3.x no support
[ ${KERNEL_MAJOR_NO} -ge 3 ] && SUPPORT_BLK=Y
[ ${KERNEL_MAJOR_NO} -eq 2 -o ${KERNEL_MAJOR_NO} -eq 3 ] && SUPPORT_BLK=N
[ ${ARCH_NAME} = "arm64" ] && SUPPORT_BLK=Y

# Linux 2.x Feature 
[ ${KERNEL_MAJOR_NO} -eq 2 ] && SUPPORT_2_X=Y

# EXT3 support
# --> Kernel < 3.10 Only support EXT3
[ ${KERNEL_MAJOR_NO} -eq 3 -a ${KERNEL_MINOR_NO} -lt 10 ] && SUPPORT_EXT3=Y
[ ${KERNEL_MAJOR_NO} -lt 3 ] && SUPPORT_EXT3=Y
[ ${KERNEL_MAJOR_NO} -eq 3 -a ${KERNEL_MINOR_NO} -lt 21 -a ${ARCH_NAME} = "arm" ] && SUPPORT_EXT3=Y

# CROSS_CROMPILE
[ ${SUPPORT_2_X} = "Y" ] && SUPPORT_NONE_GNU=Y

# ARM Kernel Configure
[ ${SUPPORT_2_X} = "Y" ] && DEFAULT_CONFIG=versatile_defconfig

# Uboot
[ ${UBOOT}X = "yX" ] && SUPPORT_UBOOT=Y

# Platform 
[ ${PROJECT_NAME} = "RaspberryPi_4B" ] && SUPPORT_RPI4B=Y && DEFAULT_CONFIG=bcm2711_defconfig
[ ${PROJECT_NAME} = "RaspberryPi_3B" ] && SUPPORT_RPI3B=Y && DEFAULT_CONFIG=bcm2709_defconfig
[ ${SUPPORT_RPI4B} = "Y" -o ${SUPPORT_RPI3B} = "Y" ] && SUPPORT_RPI=Y && SUPPORT_RAMDISK=N

# Debian/Desktop/Docker
[ ${ROOTFS_TYPE} = "Desktop" ] && SUPPORT_DESKTOP=Y && SUPPORT_DEBIAN=Y && SUPPORT_BUSYBOX=N
[ ${ROOTFS_TYPE} = "Docker" ]  && SUPPORT_DOCKER=Y && SUPPORT_DEBIAN=Y && SUPPORT_BUSYBOX=N
[ ${ROOTFS_TYPE} = "Server" ]  && SUPPORT_SERVER=Y && SUPPORT_DEBIAN=Y && SUPPORT_BUSYBOX=N
[ ${SUPPORT_ONLYRUN} = "Y" ] && SUPPORT_DESKTOP=Y && SUPPORT_DEBIAN=Y && SUPPORT_BUSYBOX=N

##
# Rootfs Inforamtion
FS_TYPE=
FS_TYPE_TOOLS=
ROOTFS_MB=${18%X}
ROOTFS_BLOCKS=$[ROOTFS_MB * 1024]

if [ ${SUPPORT_EXT3} = "Y" ]; then
	FS_TYPE=ext3
	FS_TYPE_TOOLS=mkfs.ext3
else
	FS_TYPE=ext4
	FS_TYPE_TOOLS=mkfs.ext4
fi

if [ ${SUPPORT_NONE_GNU} = "Y" ]; then
	DEF_UBOOT_CROOS=${UCROSS_PATH}/bin/arm-none-linux-gnueabi-
	DEF_KERNEL_CROSS=${KCROSS_PATH}/bin/arm-none-linux-gnueabi-
	CROSS_COMPILE=arm-none-linux-gnueabi
else
	DEF_UBOOT_CROOS=${UCROSS_PATH}/bin/${UBOOT_CROSS}-
	DEF_KERNEL_CROSS=${KCROSS_PATH}/bin/${CROSS_COMPILE}-
fi

## Lower version uboot tools
if [ ${UBOOT_CROSS} = "arm-none-linux-gnueabi" ]; then
	DEF_UBOOT_CROOS=${OUTPUT}/${CROSS_COMPILE}/uboot-${CROSS_COMPILE}/bin/arm-none-linux-gnueabi-
fi

##
# Debug Stuff
[ -d ${OUTPUT}/package/gdb ] && rm -rf ${OUTPUT}/package/gdb
mkdir -p ${OUTPUT}/package/gdb
# GDB pl
[ ! -f ${OUTPUT}/package/gdb/gdb.pl ] && \
cp ${ROOT}/scripts/package/gdb.pl ${OUTPUT}/package/gdb/

## 
# Networking Stuff
mkdir -p ${OUTPUT}/package/networking
cp ${ROOT}/scripts/rootfs/qemu-if* ${OUTPUT}/package/networking
cp ${ROOT}/scripts/rootfs/bridge.sh ${OUTPUT}/package/networking

## 
# Auto create Running scripts
MF=${OUTPUT}/${RUNSCP_NAME}
[ -f ${MF} ] && rm -rf ${MF}

DATE_COMT=`date +"%Y.%m.%d"`
cat << EOF >> ${MF}
#!/bin/bash

# Build system.
#
# (C) ${DATE_COMT} BiscuitOS <buddy.zhang@aliyun.com>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2 as
# published by the Free Software Foundation.

ROOT=${OUTPUT}
QEMUT=${QEMU}
ARCH=${ARCH_NAME}
BUSYBOX=${BUSYBOX}
OUTPUT=${OUTPUT}
ROOTFS_NAME=${ROOTFS_NAME}
CROSS_COMPILE=${CROSS_COMPILE}
FS_TYPE=${FS_TYPE}
FS_TYPE_TOOLS=${FS_TYPE_TOOLS}
ROOTFS_SIZE=${18%X}
FREEZE_SIZE=${17%X}
DL=${ROOT}/dl
DEBIAN_PACKAGE=${DEBIAN_PACKAGE}
EOF
# RAM size
[ ${SUPPORT_2_X} = "Y" ] && echo 'RAM_SIZE=256' >> ${MF} 
[ ${SUPPORT_2_X} = "N" ] && echo 'RAM_SIZE=512' >> ${MF}
[ ${SUPPORT_ONLYRUN} = "Y" ] && echo 'RAM_SIZE=1024' >> ${MF}
[ ${SUPPORT_DEBIAN} = "Y" ] && echo 'RAM_SIZE=1024' >> ${MF}
# Platform
[ ${SUPPORT_2_X} = "Y" -a ${ARCH_NAME} == "arm" ] && echo 'MACH=versatilepb' >> ${MF} 
[ ${SUPPORT_2_X} = "N" -a ${ARCH_NAME} == "arm" ] && echo 'MACH=vexpress-a9' >> ${MF}
echo 'LINUX_DIR=${ROOT}/linux/linux/arch' >> ${MF}
echo 'NET_CFG=${ROOT}/package/networking' >> ${MF}
case ${ARCH_NAME} in
	arm)
		if [ ${SUPPORT_DEBIAN} = "N" ]; then
			[ ${SUPPORT_RAMDISK} = "Y" ] && echo 'CMDLINE="earlycon root=/dev/ram0 rw rootfstype=${FS_TYPE} console=ttyAMA0 init=/linuxrc loglevel=8"' >> ${MF}
			[ ${SUPPORT_RAMDISK} = "N" ] && echo 'CMDLINE="earlycon root=/dev/vda rw rootfstype=${FS_TYPE} console=ttyAMA0 init=/linuxrc loglevel=8"' >> ${MF}
		else
			echo 'CMDLINE="earlycon root=/dev/vda rw rootfstype=${FS_TYPE} console=ttyAMA0 init=/sbin/init loglevel=8"' >> ${MF}
		fi
	;;
	arm64)
		if [ ${SUPPORT_DEBIAN} = "N" ]; then
			[ ${SUPPORT_RAMDISK} = "Y" ] && echo 'CMDLINE="earlycon root=/dev/ram0 rw rootfstype=${FS_TYPE} console=ttyAMA0 init=/linuxrc loglevel=8"' >> ${MF}
			[ ${SUPPORT_RAMDISK} = "N" ] && echo 'CMDLINE="earlycon root=/dev/vda rw rootfstype=${FS_TYPE} console=ttyAMA0 init=/linuxrc loglevel=8"' >> ${MF}
		else
			echo 'CMDLINE="earlycon root=/dev/vda rw rootfstype=${FS_TYPE} console=ttyAMA0 init=/sbin/init loglevel=8"' >> ${MF}

		fi
	;;
	riscv32)
		echo 'CMDLINE="root=/dev/vda rw console=ttyS0 init=/linuxrc loglevel=8"' >> ${MF}
	;;
	riscv64)
		echo 'CMDLINE="root=/dev/vda rw console=ttyS0 init=/linuxrc loglevel=8"' >> ${MF}
	;;
	x86)
		echo 'CMDLINE="root=/dev/ram0 rw rootfstype=${FS_TYPE} console=ttyS0 init=/linuxrc loglevel=8"' >> ${MF}
	;;
	x86_64)
		echo 'CMDLINE="root=/dev/ram0 rw rootfstype=${FS_TYPE} console=ttyS0 init=/linuxrc loglevel=8"' >> ${MF}
	;;
esac

# RISC-V BBL
if [ ${ARCH_NAME} = "riscv64" -o ${ARCH_NAME} = "riscv32" ]; then
	echo 'PACKAGE=${ROOT}/package/' >> ${MF}
	echo 'RISCV_PK=' >> ${MF}
	echo 'RISCV_BBL=${ROOT}/linux/linux/riscvbbl' >> ${MF}
	echo '' >> ${MF}
	echo '# Risc-V BBL' >> ${MF}
	echo 'riscv_bbl()' >> ${MF}
	echo '{' >> ${MF}
	echo -e '\tDirlist=`ls ${PACKAGE}`' >> ${MF}
	echo -e '\tfor dir in ${Dirlist}' >> ${MF}
	echo -e '\tdo' >> ${MF}
	echo -e '\t\t[ ${dir:0:8} = "riscv-pk" ] && RISCV_PK=${dir}' >> ${MF}
	echo -e '\tdone' >> ${MF}
	echo -e '\t[ ! ${RISCV_PK} ] && return 0' >> ${MF}
	echo -e '\tcd ${PACKAGE}/${RISCV_PK} > /dev/null 2>&1' >> ${MF}
	echo -e '\tif [ ! -d ${RISCV_PK} ]; then' >> ${MF}
	echo -e '\t\tmake download' >> ${MF}
	echo -e '\t\tmake tar' >> ${MF}
	echo -e '\t\tmake configure' >> ${MF}
	echo -e '\tfi' >> ${MF}
	echo -e '\tmake > /dev/null 2>&1' >> ${MF}
	echo -e '\tcp ${RISCV_PK}/build/bbl ${OUTPUT}/linux/linux/riscvbbl' >> ${MF}
	echo -e '\tcd - > /dev/null 2>&1' >> ${MF}
	echo -e '\t' >> ${MF}
	echo '}' >> ${MF}
fi

if [ ${SUPPORT_UBOOT} = "Y" ]; then
	echo "UBOOT=${OUTPUT}/u-boot/u-boot" >> ${MF}
	echo 'PART_TAB_SZ=1' >> ${MF}
	echo 'MMC0P1_SZ=20' >> ${MF}
	echo 'MMC0P2_SZ=${ROOTFS_SIZE}' >> ${MF}
	echo 'MMC0P1_SEEK=`expr ${PART_TAB_SZ} + ${MMC0P1_SZ}`' >> ${MF}
	echo 'SD_SIZE=`expr ${MMC0P1_SZ} + ${MMC0P2_SZ} + ${PART_TAB_SZ}`' >> ${MF}
	echo '' >> ${MF}
	echo '# Partition Table' >> ${MF}
	echo 'SD_PTAB_BEG=0' >> ${MF}
	echo 'SD_PTAB=`expr ${PART_TAB_SZ} \* 1024 \* 1024 \/ 512`' >> ${MF}
	echo 'SD_PTAB_END=`expr ${SD_PTAB_BEG} + ${SD_PTAB} - 1`' >> ${MF}
	echo '# mmcblk0p1' >> ${MF}
	echo 'SD_MMC0_BEG=`expr ${SD_PTAB_END} + 1`' >> ${MF}
	echo 'SD_MMC0=`expr ${MMC0P1_SZ} \* 1024 \* 1024 \/ 512`' >> ${MF}
	echo 'SD_MMC0_END=`expr ${SD_MMC0_BEG} + ${SD_MMC0} - 1`' >> ${MF}
	echo '# mmcblk0p1' >> ${MF}
	echo 'SD_MMC1_BEG=`expr ${SD_MMC0_END} + 1`' >> ${MF}
	echo 'SD_MMC1=`expr ${MMC0P2_SZ} \* 1024 \* 1024 \/ 512`' >> ${MF}
	echo 'SD_MMC1_END=`expr ${SD_MMC1_BEG} + ${SD_MMC1} - 1`' >> ${MF}
	echo '' >> ${MF}
	echo 'do_uboot()' >> ${MF}
	echo '{' >> ${MF}
	echo -e '\tmkimage -A arm \' >> ${MF}
	echo -e '\t\t-C none \' >> ${MF}
	echo -e '\t\t-O linux \' >> ${MF}
	echo -e '\t\t-T kernel \' >> ${MF}
	echo -e '\t\t-n BiscuitOS \' >> ${MF}
	echo -e '\t\t-a 0x60008000 \' >> ${MF}
	echo -e '\t\t-e 0x60008000 \' >> ${MF}
	echo -e '\t\t-d ${LINUX_DIR}/${ARCH}/boot/zImage \' >> ${MF}
	echo -e '\t\t${LINUX_DIR}/${ARCH}/boot/uImage' >> ${MF}
	echo -e '\t# SD card boot' >> ${MF}
	echo -e '\t[ -d ${OUTPUT}/.tmpsd ] && sudo rm -rf ${OUTPUT}/.tmpsd' >> ${MF}
	echo -e '\tloopdev=`sudo losetup -f`' >> ${MF}
	echo -e '\tsudo losetup -o `expr ${SD_MMC0_BEG} \* 512` ${loopdev} ${OUTPUT}/BiscuitOS.img' >> ${MF}
	echo -e '\tsudo mkdir -p ${OUTPUT}/.tmpsd' >> ${MF}
	echo -e '\tsudo mount -o loop,rw ${loopdev} ${OUTPUT}/.tmpsd' >> ${MF}
	echo -e '\tsudo cp ${LINUX_DIR}/${ARCH}/boot/uImage ${OUTPUT}/.tmpsd' >> ${MF}
	echo -e '\tsudo cp ${LINUX_DIR}/${ARCH}/boot/dts/vexpress-v2p-ca9.dtb ${OUTPUT}/.tmpsd' >> ${MF}
	echo -e '\tsudo umount ${OUTPUT}/.tmpsd' >> ${MF}
	echo -e '\tsudo rm -rf ${OUTPUT}/.tmpsd' >> ${MF}
	echo -e '\tsudo losetup -d ${loopdev}' >> ${MF}
	echo -e '\t' >> ${MF}
	echo -e '\t# Uboot boot-cmd' >> ${MF}
	echo -e '\t# --> fatload mmc 0:1 0x60200000 uImage' >> ${MF}
	echo -e '\t# --> fatload mmc 0:1 0x60800000 vexpress-v2p-ca9.dtb' >> ${MF}
	echo -e '\t# --> setenv bootargs 'earlycon root=/dev/mmcblk0p1 rw rootfstype=ext4 console=ttyAMA0 init=/linuxrc loglevel=8'' >> ${MF}
	echo -e '\t# --> bootm 0x60200000 - 0x60800000' >> ${MF}
	echo -e '\tsudo ${QEMUT} \' >> ${MF}
	echo -e '\t-M vexpress-a9 \' >> ${MF}
	echo -e '\t-kernel ${UBOOT}/u-boot \' >> ${MF}
	echo -e '\t-sd ${OUTPUT}/BiscuitOS.img \' >> ${MF}
	echo -e '\t-m ${RAM_SIZE}M \' >> ${MF}
	echo -e '\t-nographic' >> ${MF}
	echo '}' >> ${MF}
fi

## 
# Common Running function
# 
# -> Used to launch a Server Linux 
echo '' >> ${MF}
echo 'do_running()' >> ${MF}
echo '{' >> ${MF}
echo -e '\tSUPPORT_DEBUG=N' >> ${MF}
echo -e '\tSUPPORT_NET=N' >> ${MF}
echo -e '\t[ ${1}X = "debug"X -o ${2}X = "debug"X ] && ARGS+="-s -S "' >> ${MF}
echo -e '\tif [ ${1}X = "net"X  -o ${2}X = "net"X ]; then' >> ${MF}
echo -e '\t\tARGS+="-net tap "' >> ${MF}
echo -e '\t\tARGS+="-device virtio-net-device,netdev=bsnet0,"' >> ${MF}
echo -e '\t\tARGS+="mac=E0:FE:D0:3C:2E:EE "' >> ${MF}
echo -e '\t\tARGS+="-netdev tap,id=bsnet0,ifname=bsTap0 "' >> ${MF}
echo -e '\tfi' >> ${MF}
echo -e '\t' >> ${MF}
echo '' >> ${MF}
case ${ARCH_NAME} in
	arm) 
		[ ${SUPPORT_ONLYRUN} = "N" ] && echo -e '\t${ROOT}/package/gdb/gdb.pl ${ROOT} ${CROSS_COMPILE}' >> ${MF}
		echo -e '\tsudo ${QEMUT} ${ARGS} \' >> ${MF}
		echo -e '\t-M ${MACH} \' >> ${MF}
		echo -e '\t-m ${RAM_SIZE}M \' >> ${MF}
		[ ${SUPPORT_ONLYRUN} = "N" ] && echo -e '\t-kernel ${LINUX_DIR}/${ARCH}/boot/zImage \' >> ${MF}
		[ ${SUPPORT_ONLYRUN} = "Y" ] && echo -e '\t-kernel ${ROOT}/images/zImage \' >> ${MF}
		# Support DTB/DTS/FDT
		[ ${SUPPORT_DTB} = "Y" -a ${SUPPORT_ONLYRUN} = "N" ] && echo -e '\t-dtb ${LINUX_DIR}/${ARCH}/boot/dts/vexpress-v2p-ca9.dtb \' >> ${MF}
		[ ${SUPPORT_DTB} = "Y" -a ${SUPPORT_ONLYRUN} = "Y" ] && echo -e '\t-dtb ${ROOT}/images/vexpress-v2p-ca9.dtb \' >> ${MF}
		# Support HardDisk
		[ ${SUPPORT_BLK} = "Y" ]  && echo -e '\t-device virtio-blk-device,drive=hd1 \' >> ${MF}
		[ ${SUPPORT_BLK} = "Y" ]  && echo -e '\t-drive file=${ROOT}/Freeze.img,format=raw,id=hd1 \' >> ${MF} 
		# Support Mount root on HardDisk
		[ ${SUPPORT_DISK} = "Y" ] && echo -e '\t-device virtio-blk-device,drive=hd0 \' >> ${MF}
		[ ${SUPPORT_DISK} = "Y" ] && echo -e '\t-drive file=${ROOT}/BiscuitOS.img,format=raw,id=hd0 \' >> ${MF} 
		# Support RAMDISK only
		[ ${SUPPORT_DISK} = "N" ] && echo -e '\t-initrd ${ROOT}/BiscuitOS.img \' >> ${MF}
		# Support Networking
		echo -e '\t-serial stdio \' >> ${MF}
		[ ${SUPPORT_DESKTOP} = "N" ] && echo -e '\t-nographic \' >> ${MF}
		echo -e '\t-nodefaults \' >> ${MF}
		echo -e '\t-append "${CMDLINE}"' >> ${MF}
	;;
	arm64)
		echo -e '\tsudo ${QEMUT} ${ARGS} \' >> ${MF}
		echo -e '\t-M virt \' >> ${MF}
		echo -e '\t-m ${RAM_SIZE}M \' >> ${MF}
		echo -e '\t-cpu cortex-a53 \' >> ${MF}
		echo -e '\t-smp 2 \' >> ${MF}
		echo -e '\t-kernel ${LINUX_DIR}/${ARCH}/boot/Image \' >> ${MF}
		# Support HardDisk
		[ ${SUPPORT_BLK} = "Y" ]  && echo -e '\t-device virtio-blk-device,drive=hd1 \' >> ${MF}
		[ ${SUPPORT_BLK} = "Y" ]  && echo -e '\t-drive if=none,file=${ROOT}/Freeze.img,format=raw,id=hd1 \' >> ${MF} 
		# Support Mount root on HardDisk
		[ ${SUPPORT_DISK} = "Y" ] && echo -e '\t-device virtio-blk-device,drive=hd0 \' >> ${MF}
		[ ${SUPPORT_DISK} = "Y" ] && echo -e '\t-drive if=none,file=${ROOT}/BiscuitOS.img,format=raw,id=hd0 \' >> ${MF} 
		# Support RAMDISK only
		[ ${SUPPORT_DISK} = "N" ] && echo -e '\t-initrd ${ROOT}/BiscuitOS.img \' >> ${MF}
		# Support Networking
		echo -e '\t-serial stdio \' >> ${MF}
		echo -e '\t-nographic \' >> ${MF}
		echo -e '\t-nodefaults \' >> ${MF}
		echo -e '\t-append "${CMDLINE}"' >> ${MF}
	;;
	riscv32)
		echo -e '\triscv_bbl' >> ${MF}
		echo -e '\tsudo ${QEMUT} ${ARGS} \' >> ${MF}
		echo -e '\t-machine virt \' >> ${MF}
		echo -e '\t-kernel ${RISCV_BBL} \' >> ${MF}
		# Support Mount root on HardDisk
		[ ${SUPPORT_DISK} = "Y" ] && echo -e '\t-device virtio-blk-device,drive=hd0 \' >> ${MF}
		[ ${SUPPORT_DISK} = "Y" ] && echo -e '\t-drive if=none,file=${ROOT}/BiscuitOS.img,format=raw,id=hd0 \' >> ${MF} 
		# Support HardDisk
		[ ${SUPPORT_BLK} = "Y" ]  && echo -e '\t-device virtio-blk-device,drive=hd1 \' >> ${MF}
		[ ${SUPPORT_BLK} = "Y" ]  && echo -e '\t-drive if=none,file=${ROOT}/Freeze.img,format=raw,id=hd1 \' >> ${MF} 
		# Support RAMDISK only
		[ ${SUPPORT_DISK} = "N" ] && echo -e '\t-initrd ${ROOT}/BiscuitOS.img \' >> ${MF}
		# Support Networking
		echo -e '\t-serial stdio \' >> ${MF}
		echo -e '\t-nographic \' >> ${MF}
		echo -e '\t-nodefaults \' >> ${MF}
		echo -e '\t-append "${CMDLINE}"' >> ${MF}
	;;
	riscv64)
		echo -e '\triscv_bbl' >> ${MF}
		echo -e '\tsudo ${QEMUT} ${ARGS} \' >> ${MF}
		echo -e '\t-machine virt \' >> ${MF}
		echo -e '\t-kernel ${RISCV_BBL} \' >> ${MF}
		# Support Mount root on HardDisk
		[ ${SUPPORT_DISK} = "Y" ] && echo -e '\t-device virtio-blk-device,drive=hd0 \' >> ${MF}
		[ ${SUPPORT_DISK} = "Y" ] && echo -e '\t-drive if=none,file=${ROOT}/BiscuitOS.img,format=raw,id=hd0 \' >> ${MF} 
		# Support HardDisk
		[ ${SUPPORT_BLK} = "Y" ]  && echo -e '\t-device virtio-blk-device,drive=hd1 \' >> ${MF}
		[ ${SUPPORT_BLK} = "Y" ]  && echo -e '\t-drive if=none,file=${ROOT}/Freeze.img,format=raw,id=hd1 \' >> ${MF} 
		# Support RAMDISK only
		[ ${SUPPORT_DISK} = "N" ] && echo -e '\t-initrd ${ROOT}/BiscuitOS.img \' >> ${MF}
		# Support Networking
		echo -e '\t-serial stdio \' >> ${MF}
		echo -e '\t-nographic \' >> ${MF}
		echo -e '\t-nodefaults \' >> ${MF}
		echo -e '\t-append "${CMDLINE}"' >> ${MF}
	;;
	x86)
		echo -e '\tsudo ${QEMUT} ${ARGS} \' >> ${MF}
		echo -e '\t-smp 2 \' >> ${MF}
		echo -e '\t-m ${RAM_SIZE}M \' >> ${MF}
		echo -e '\t-kernel ${LINUX_DIR}/${ARCH}/boot/bzImage \' >> ${MF}
		# Support Ramdisk
		echo -e '\t-initrd ${ROOT}/BiscuitOS.img \' >> ${MF}
		# Support Networking
		echo -e '\t-serial stdio \' >> ${MF}
		echo -e '\t-nographic \' >> ${MF}
		echo -e '\t-nodefaults \' >> ${MF}
		echo -e '\t-append "${CMDLINE}"' >> ${MF}
	;;
	x86_64)
		echo -e '\tsudo ${QEMUT} ${ARGS} \' >> ${MF}
		echo -e '\t-smp 2 \' >> ${MF}
		echo -e '\t-m ${RAM_SIZE}M \' >> ${MF}
		echo -e '\t-kernel ${LINUX_DIR}/x86/boot/bzImage \' >> ${MF}
		# Support Ramdisk
		echo -e '\t-initrd ${ROOT}/BiscuitOS.img \' >> ${MF}
		# Support Networking
		echo -e '\t-serial stdio \' >> ${MF}
		echo -e '\t-nographic \' >> ${MF}
		echo -e '\t-nodefaults \' >> ${MF}
		echo -e '\t-append "${CMDLINE}"' >> ${MF}
	;;
esac
echo '}' >> ${MF}
echo '' >> ${MF}
##
# Package Image
#
# -> Used to package a new image.
echo '' >>  ${MF}
echo 'do_package()' >>  ${MF}
echo '{' >> ${MF}
if [ ${SUPPORT_RPI} = "N" -a ${SUPPORT_DEBIAN} = "N" ]; then
	echo -e '\tcp ${BUSYBOX}/_install/*  ${OUTPUT}/rootfs/${ROOTFS_NAME} -raf' >> ${MF}
	echo -e '\tdd if=/dev/zero of=${OUTPUT}/rootfs/ramdisk bs=1M count=${ROOTFS_SIZE}' >> ${MF}
	echo -e '\t${FS_TYPE_TOOLS} -F ${OUTPUT}/rootfs/ramdisk' >> ${MF}
	echo -e '\tmkdir -p ${OUTPUT}/rootfs/tmpfs' >> ${MF}
	echo -e '\tsudo mount -t ${FS_TYPE} ${OUTPUT}/rootfs/ramdisk \' >> ${MF}
	echo -e '\t              ${OUTPUT}/rootfs/tmpfs/ -o loop' >> ${MF}
	echo -e '\tsudo cp -raf ${OUTPUT}/rootfs/${ROOTFS_NAME}/*  ${OUTPUT}/rootfs/tmpfs/' >> ${MF}
	echo -e '\tsync' >> ${MF}
	echo -e '\tsudo umount ${OUTPUT}/rootfs/tmpfs' >> ${MF}
	if [ ${SUPPORT_RAMDISK} = "Y" ]; then
		echo -e '\tgzip --best -c ${OUTPUT}/rootfs/ramdisk > ${OUTPUT}/rootfs/ramdisk.gz' >> ${MF}
		if [ ${ARCH_NAME} = "x86" -o ${ARCH_NAME} = "x86_64" ]; then
			echo -e '\tmv ${OUTPUT}/rootfs/ramdisk.gz ${OUTPUT}/BiscuitOS.img' >> ${MF}
			
		else
			echo -e '\tmkimage -n "ramdisk" -A arm -O linux -T ramdisk -C gzip \' >> ${MF}
			echo -e '\t        -d ${OUTPUT}/rootfs/ramdisk.gz ${OUTPUT}/BiscuitOS.img' >> ${MF}
		fi
		echo -e '\trm -rf ${OUTPUT}/rootfs/tmpfs' >> ${MF}
		echo -e '\trm -rf ${OUTPUT}/rootfs/ramdisk' >> ${MF}
	else
		[ ${SUPPORT_UBOOT} = "N" ] && echo -e '\tmv ${OUTPUT}/rootfs/ramdisk ${OUTPUT}/BiscuitOS.img' >> ${MF}
		echo -e '\trm -rf ${OUTPUT}/rootfs/tmpfs' >> ${MF}
	fi
	## Support UBOOT
	if [ ${SUPPORT_UBOOT} = "Y" ]; then
		echo -e '\t# SDCARD Partition: Bootload + Kernel + rootfs' >> ${MF}
		echo -e '\t#' >> ${MF}
		echo -e '\t# +-----------------+-----------------------+-------------------+' >> ${MF}
		echo -e '\t# | Partition Table | Bootloader(mmcblk0p1) | Rootfs(mmcblk0p2) |' >> ${MF}
		echo -e '\t# +-----------------+-----------------------+-------------------+' >> ${MF}
		echo -e '\t#' >> ${MF}
		echo -e '\t# Header:   ${PART_TAB_SZ}M (Reserve 512 Bytes on legacy fdiks tools)' >> ${MF}
		echo -e '\t# Bootload: ${MMC0P1_SZ}M (Contain Kernel + Uboot)' >> ${MF}
		echo -e '\t# Rootfs:   ${ROOTFS_SIZE}M' >> ${MF}
		echo -e '\tdd bs=1M count=${PART_TAB_SZ} if=/dev/zero of=${OUTPUT}/BiscuitOS.img > \' >> ${MF}
		echo -e '\t                /dev/null 2>&1' >> ${MF}
		echo -e '\tdd bs=1M count=${MMC0P1_SZ} if=/dev/zero of=${OUTPUT}/bootloader.img > \' >> ${MF}
		echo -e '\t                /dev/null 2>&1' >> ${MF}
		echo -e '\tsudo mkfs.vfat ${OUTPUT}/bootloader.img > /dev/null 2>&1' >> ${MF}
		echo -e '\tdd bs=1M if=${OUTPUT}/bootloader.img of=${OUTPUT}/BiscuitOS.img \' >> ${MF}
		echo -e '\t                conv=notrunc seek=${PART_TAB_SZ} > /dev/null 2>&1' >> ${MF}
		echo -e '\tdd bs=1M if=${OUTPUT}/rootfs/ramdisk of=${OUTPUT}/BiscuitOS.img \' >> ${MF}
		echo -e '\t                conv=notrunc seek=${MMC0P1_SEEK} > /dev/null 2>&1' >> ${MF}
		echo -e '\trm -rf ${OUTPUT}/bootloader.img' >> ${MF}
		echo -e '\trm -rf ${OUTPUT}/rootfs/ramdisk' >> ${MF}
		echo -e '\t# Parting Table' >> ${MF}
		echo 'cat <<EOF | fdisk ${OUTPUT}/BiscuitOS.img' >> ${MF}
		echo 'n' >> ${MF}
		echo 'p' >> ${MF}
		echo '1' >> ${MF}
		echo '${SD_MMC0_BEG}' >> ${MF}
		echo '${SD_MMC0_END}' >> ${MF}
		echo 'n' >> ${MF}
		echo 'p' >> ${MF}
		echo '2' >> ${MF}
		echo '${SD_MMC1_BEG}' >> ${MF}
		echo '${SD_MMC1_END}' >> ${MF}
		echo 'p' >> ${MF}
		echo 'w' >> ${MF}
		echo 'EOF' >> ${MF}
	fi
elif [ ${SUPPORT_RPI} = "Y" -a ${SUPPORT_DEBIAN} = "N" ]; then
	echo -e '\t# SDCARD Partition: Bootload + Kernel + rootfs' >> ${MF}
	echo -e '\t#' >> ${MF}
	echo -e '\t# +-----------------+-----------------------+-------------------+' >> ${MF}
	echo -e '\t# | Partition Table | Bootloader(mmcblk0p1) | Rootfs(mmcblk0p2) |' >> ${MF}
	echo -e '\t# +-----------------+-----------------------+-------------------+' >> ${MF}
	echo -e '\t#' >> ${MF}
	echo -e '\t# Header:   ${PART_TAB_SZ}M (Reserve 512 Bytes on legacy fdiks tools)' >> ${MF}
	echo -e '\t# Bootload: ${MMC0P1_SZ}M (Contain Kernel + Uboot)' >> ${MF}
	echo -e '\t# Rootfs:   ${ROOTFS_SIZE}M' >> ${MF}
	echo -e '\tsudo dd if=/dev/zero of=${OUTPUT}/BiscuitOS.img bs=1M \' >> ${MF}
	echo -e '\t                                count=${SD_SIZE} > /dev/null 2>&1' >> ${MF}
	echo -e '\t# Parting Table' >> ${MF}
	echo 'cat <<EOF | sudo fdisk ${OUTPUT}/BiscuitOS.img' >> ${MF}
	echo 'n' >> ${MF}
	echo 'p' >> ${MF}
	echo '1' >> ${MF}
	echo '${SD_MMC0_BEG}' >> ${MF}
	echo '${SD_MMC0_END}' >> ${MF}
	echo 'n' >> ${MF}
	echo 'p' >> ${MF}
	echo '2' >> ${MF}
	echo '${SD_MMC1_BEG}' >> ${MF}
	echo '${SD_MMC1_END}' >> ${MF}
	echo 't' >> ${MF}
	echo '1' >> ${MF}
	echo 'c' >> ${MF}
	echo 't' >> ${MF}
	echo '2' >> ${MF}
	echo '83' >> ${MF}
	echo 'x' >> ${MF}
	echo 'i' >> ${MF}
	echo '0x19911016' >> ${MF}
	echo 'r' >> ${MF}
	echo 'p' >> ${MF}
	echo 'w' >> ${MF}
	echo 'EOF' >> ${MF}
	echo -e '\t# Format Disk' >> ${MF}
	echo -e '\t# --> sudo blkid' >> ${MF}
	echo -e '\t# --> Change LABLE and UUID/PARTUUID' >> ${MF}
	echo -e '\tloopdev=`sudo losetup -f`' >> ${MF}
	echo -e '\tdev=${loopdev#/dev/}' >> ${MF}
	echo -e '\tsudo losetup ${loopdev} ${OUTPUT}/BiscuitOS.img' >> ${MF}
	echo -e '\tsudo kpartx -a -v -s ${loopdev}' >> ${MF}
	echo -e '\t# Setup Filesystem' >> ${MF}
	echo -e '\tsudo mkfs.vfat /dev/mapper/${dev}p1' >> ${MF}
	echo -e '\tsudo mkfs.ext4 /dev/mapper/${dev}p2' >> ${MF}
	echo -e '\t# Setup Disk LABLE' >> ${MF}
	echo -e '\techo mtools_skip_check=1 >> ~/.mtoolsrc' >> ${MF}
	echo -e '\tsudo mlabel -i /dev/mapper/${dev}p1 ::BOOT' >> ${MF}
	echo -e '\tsudo e2label /dev/mapper/${dev}p2 BiscuitOS_rootfs' >> ${MF}
	echo -e '\t# Remove virtual mount pointer' >> ${MF}
	echo -e '\tsudo kpartx -d -v ${loopdev}' >> ${MF}
	echo -e '\tsudo losetup -d ${loopdev}' >> ${MF}
	echo '' >> ${MF}
	echo -e '\t# RaspberryPi SD Image' >> ${MF}
	if [ ${SUPPORT_RPI4B} = "Y" ]; then 
		# RaspberryPi 4B
		echo -e '\t_bootloader=${OUTPUT}/package/rpi-4b-bootloader-1.0.0' >> ${MF}
		echo -e '\t_bootloaderfile=rpi-4b-bootloader' >> ${MF}
		echo -e '\t_kernel=kernel7l' >> ${MF}
		echo -e '\t_dtb=bcm2711-rpi-4-b.dtb' >> ${MF}
	else
		# RaspberryPi 3B
		echo -e '\t_bootloader=${OUTPUT}/package/rpi-3b-bootloader-1.0.0' >> ${MF}
		echo -e '\t_bootloaderfile=rpi-3b-bootloader' >> ${MF}
		echo -e '\t_kernel=kernel7' >> ${MF}
		echo -e '\t_dtb=bcm2710-rpi-3-b.dtb' >> ${MF}
	fi
	echo -e '\tif [ ! -d ${_bootloader}/${_bootloaderfile} ]; then' >> ${MF}
	echo -e '\t\tcd ${_bootloader} > /dev/null 2>&1' >> ${MF}
	echo -e '\t\tmake download' >> ${MF}
	echo -e '\t\tmake tar' >> ${MF}
	echo -e '\t\tcd - > /dev/null 2>&1' >> ${MF}
	echo -e '\tfi' >> ${MF}
	echo -e '\t# Mount bootloader partiton' >> ${MF}
	echo -e '\t[ -d ${OUTPUT}/.tmpsd ] && sudo rm -rf ${OUTPUT}/.tmpsd' >> ${MF}
	echo -e '\tloopdev=`sudo losetup -f`' >> ${MF}
	echo -e '\tsudo losetup -o `expr ${SD_MMC0_BEG} \* 512` ${loopdev} \' >> ${MF}
	echo -e '\t                                ${OUTPUT}/BiscuitOS.img' >> ${MF}
	echo -e '\tsudo mkdir -p ${OUTPUT}/.tmpsd' >> ${MF}
	echo -e '\tsudo mount -o loop,rw ${loopdev} ${OUTPUT}/.tmpsd' >> ${MF}
	echo -e '\t# bootloader file' >> ${MF}
	echo -e '\tsudo cp -rf ${_bootloader}/${_bootloaderfile}/* ${OUTPUT}/.tmpsd' >> ${MF}
	echo -e '\t# kernel image and DTB' >> ${MF}
	echo -e '\tsudo cp ${LINUX_DIR}/${ARCH}/boot/zImage ${OUTPUT}/.tmpsd/${_kernel}.img' >> ${MF}
	echo -e '\tsudo cp ${LINUX_DIR}/${ARCH}/boot/dts/${_dtb} \' >> ${MF}
	echo -e '\t                                        ${OUTPUT}/.tmpsd' >> ${MF}
	echo -e '\tsudo mkdir -p ${OUTPUT}/.tmpsd/overlays' >> ${MF}
	echo -e '\tsudo cp ${LINUX_DIR}/${ARCH}/boot/dts/overlays/*.dtb* \' >> ${MF}
	echo -e '\t                                        ${OUTPUT}/.tmpsd/overlays/' >> ${MF}
	echo -e '\tsudo cp ${LINUX_DIR}/${ARCH}/boot/dts/overlays/README \' >> ${MF}
	echo -e '\t                                        ${OUTPUT}/.tmpsd/overlays/' >> ${MF}
	echo -e '\tsudo umount ${OUTPUT}/.tmpsd' >> ${MF}
	echo -e '\tsudo rm -rf ${OUTPUT}/.tmpsd' >> ${MF}
	echo -e '\tsudo losetup -d ${loopdev}' >> ${MF}
	echo -e '\t# Mount rootfs partition' >> ${MF}
	echo -e '\tcp ${BUSYBOX}/_install/*  ${OUTPUT}/rootfs/${ROOTFS_NAME} -raf' >> ${MF}
	echo -e '\tmkdir -p ${OUTPUT}/rootfs/tmpfs' >> ${MF}
	echo -e '\tloopdev=`sudo losetup -f`' >> ${MF}
	echo -e '\tsudo losetup -o `expr ${SD_MMC1_BEG} \* 512` ${loopdev} \' >> ${MF}
	echo -e '\t                                        ${OUTPUT}/BiscuitOS.img' >> ${MF}
	echo -e '\tsudo mount -t ext4 ${loopdev} ${OUTPUT}/rootfs/tmpfs/ -o loop' >> ${MF}
	echo -e '\tsudo cp -raf ${OUTPUT}/rootfs/${ROOTFS_NAME}/*  ${OUTPUT}/rootfs/tmpfs/' >> ${MF}
	echo -e '\tsync' >> ${MF}
	echo -e '\tsudo umount ${OUTPUT}/rootfs/tmpfs' >> ${MF}
	echo -e '\trm -rf ${OUTPUT}/rootfs/tmpfs' >> ${MF}
	echo -e '\tsudo losetup -d ${loopdev}' >> ${MF}
else # Qemu Debian
	echo -e '\tif [ ! -f ${OUTPUT}/Freeze.img ]; then' >> ${MF}
	echo -e '\t\tsudo dd if=/dev/zero of=${OUTPUT}/Freeze.img bs=1M count=${FREEZE_SIZE} > /dev/null 2>&1' >> ${MF}
	echo -e '\t\tloopdev=`sudo losetup -f`' >> ${MF}
	echo -e '\t\tdev=${loopdev#/dev/}' >> ${MF}
	echo -e '\t\tsudo losetup ${loopdev} ${OUTPUT}/Freeze.img' >> ${MF}
	echo -e '\t\tsudo mkfs.ext4 ${loopdev}' >> ${MF}
	echo -e '\t\tsudo losetup -d ${loopdev}' >> ${MF}
	echo -e '\tfi' >> ${MF}
	echo -e '\tif [ ! -f ${OUTPUT}/${ROOTFS_NAME}.img ]; then' >> ${MF}
	echo -e '\t\tsudo dd if=/dev/zero of=${OUTPUT}/${ROOTFS_NAME}.img bs=1M count=${ROOTFS_SIZE} > /dev/null 2>&1' >> ${MF}
	echo -e '\t\tloopdev=`sudo losetup -f`' >> ${MF}
	echo -e '\t\tdev=${loopdev#/dev/}' >> ${MF}
	echo -e '\t\tsudo losetup ${loopdev} ${OUTPUT}/${ROOTFS_NAME}.img' >> ${MF}
	echo -e '\t\tsudo mkfs.ext4 ${loopdev}' >> ${MF}
	echo -e '\t\tsudo losetup -d ${loopdev}' >> ${MF}
	echo -e '\t\t[ -d ${OUTPUT}/rootfs/rootfs ] && sudo rm -rf ${OUTPUT}/rootfs/rootfs' >> ${MF}
	echo -e '\t\tsudo mkdir -p ${OUTPUT}/rootfs/rootfs' >> ${MF}
	echo -e '\t\tcd ${OUTPUT}/rootfs/rootfs > /dev/null 2>&1' >> ${MF}
	echo -e '\t\t[ ! -f ${DL}/${DEBIAN_PACKAGE} ] && echo "Buster not found!" && exit -1' >> ${MF}
	echo -e '\t\tsudo cp ${DL}/${DEBIAN_PACKAGE} ${OUTPUT}/rootfs/rootfs' >> ${MF}
	echo -e '\t\tsudo bsdtar -xpf ${DEBIAN_PACKAGE}' >> ${MF}
	echo -e '\t\tsudo rm -rf ${DEBIAN_PACKAGE}' >> ${MF}
	echo -e '\t\tcd - > /dev/null 2>&1' >> ${MF}
	echo -e '\tfi' >> ${MF}
	echo -e '\tsudo mkdir -p ${OUTPUT}/rootfs/tmpfs' >> ${MF}
	echo -e '\tsudo mount -t ${FS_TYPE} ${OUTPUT}/${ROOTFS_NAME}.img \' >> ${MF}
	echo -e '\t\t\t${OUTPUT}/rootfs/tmpfs/ -o loop' >> ${MF}
	echo -e '\tsudo cp -raf ${OUTPUT}/rootfs/rootfs/*  ${OUTPUT}/rootfs/tmpfs/' >> ${MF}
	echo -e '\tsync' >> ${MF}
	echo -e '\tsudo umount ${OUTPUT}/rootfs/tmpfs' >> ${MF}
	echo -e '\tsudo rm -rf ${OUTPUT}/rootfs/tmpfs' >> ${MF}
fi
echo '}' >> ${MF}
echo '' >> ${MF}

if [ ${SUPPORT_FREEZE_DISK} = "Y" ]; then
	# Mount Freeze Image
	echo '' >>  ${MF}
	echo 'do_mount()' >>  ${MF}
	echo '{' >>  ${MF}
	echo -e '\tmkdir -p ${ROOT}/FreezeDir' >>  ${MF}
	echo -e '\tmountpoint -q ${ROOT}/FreezeDir' >>  ${MF}
	echo -e '\t[ $? = 0 ] && echo "FreezeDir has mount!" && exit 0' >>  ${MF}
	echo -e '\t## Mount Image' >>  ${MF}
	echo -e '\tsudo mount -t ${FS_TYPE} ${ROOT}/Freeze.img ${ROOT}/FreezeDir -o loop >> /dev/null 2>&1' >>  ${MF}
	echo -e '\tsudo chown ${USER}.${USER} -R ${ROOT}/FreezeDir' >>  ${MF}
	echo -e '\techo "=============================================="' >>  ${MF}
	echo -e '\techo "FreezeDisk: ${ROOT}/Freeze.img"' >>  ${MF}
	echo -e '\techo "MountDiret: ${ROOT}/FreezeDir"' >>  ${MF}
	echo -e '\techo "=============================================="' >>  ${MF}
	echo '}' >>  ${MF}
	echo '' >>  ${MF}

	# Umount Freeze Image
	echo '' >>  ${MF}
	echo 'do_umount()' >>  ${MF}
	echo '{' >>  ${MF}
	echo -e '\tmountpoint -q ${ROOT}/FreezeDir' >>  ${MF}
	echo -e '\t[ $? = 1 ] && return 0' >>  ${MF}
	echo -e '\tsudo umount ${ROOT}/FreezeDir > /dev/null 2>&1' >>  ${MF}
	echo '}' >>  ${MF}
	echo '' >>  ${MF}
fi

## 
# Command parse
#
echo '# Lunching BiscuitOS' >> ${MF}
echo 'case $1 in' >> ${MF}
if [ ${SUPPORT_UBOOT} = "Y" ]; then
	echo -e '\t"uboot")' >> ${MF}
	echo -e '\t\t# Running uboot' >> ${MF}
	echo -e '\t\tdo_umount' >> ${MF}
	echo -e '\t\tdo_uboot' >> ${MF}
	echo -e '\t\t;;' >> ${MF}
fi
echo -e '\t"pack")' >> ${MF}
echo -e '\t\t# Package BiscuitOS.img' >> ${MF}
[ ${SUPPORT_ONLYRUN} = "N" ] && echo -e '\t\tdo_package' >> ${MF}
[ ${SUPPORT_ONLYRUN} = "Y" ] && echo -e '\t\techo "Packing"' >> ${MF}
echo -e '\t\t;;' >> ${MF}
echo -e '\t"debug")' >> ${MF}
echo -e '\t\t# Debugging BiscuitOS' >> ${MF}
[ ${SUPPORT_FREEZE_DISK} = "Y" ] && echo -e '\t\tdo_umount' >> ${MF}
echo -e '\t\tdo_running debug' >> ${MF}
echo -e '\t\t;;' >> ${MF}
echo -e '\t"net")' >> ${MF}
echo -e '\t\t# Establish Netwroking' >> ${MF}
echo -e '\t\tsudo ${NET_CFG}/bridge.sh' >> ${MF}
echo -e '\t\tsudo cp -rf ${NET_CFG}/qemu-ifup /etc' >> ${MF}
echo -e '\t\tsudo cp -rf ${NET_CFG}/qemu-ifdown /etc' >> ${MF}
[ ${SUPPORT_FREEZE_DISK} = "Y" ] && echo -e '\t\tdo_umount' >> ${MF}
[ ${SUPPORT_FREEZE_DISK} = "Y" ] && echo -e '\t\tdo_running net' >> ${MF}
echo -e '\t\t;;' >> ${MF}
if [ ${SUPPORT_FREEZE_DISK} = "Y" ]; then
	echo -e '\t"mount")' >> ${MF}
	echo -e '\t\t# Mount Freeze Disk' >> ${MF}
	echo -e '\t\tdo_mount' >> ${MF}
	echo -e '\t\t;;' >> ${MF}
	echo -e '\t"umount")' >> ${MF}
	echo -e '\t\t# Umount Freeze Disk' >> ${MF}
	echo -e '\t\tdo_umount' >> ${MF}
	echo -e '\t\t;;' >> ${MF}
fi
echo -e '\t*)' >> ${MF}
echo -e '\t\t# Default Running BiscuitOS' >> ${MF}
[ ${SUPPORT_FREEZE_DISK} = "Y" ] && echo -e '\t\tdo_umount' >> ${MF}
[ ${SUPPORT_UBOOT} = "N" ] && echo -e '\t\tdo_running $1 $2' >> ${MF}
[ ${SUPPORT_UBOOT} = "Y" ] && echo -e '\t\tdo_uboot' >> ${MF}
echo -e '\t\t;;' >> ${MF}
echo -e 'esac' >> ${MF}
chmod 755 ${MF}

######################################################
## Auto create README.md
######################################################
MF=${OUTPUT}/${README_NAME}
[ -f ${MF} ] && rm -rf ${MF}

echo "BiscuitOS ${PROJECT_NAME} Usermanual" >> ${MF}
echo '--------------------------------' >> ${MF}
echo '' >> ${MF}
echo '> - [Build Linux Kernel](#A0)' >> ${MF}
echo '>' >> ${MF}
echo '> - [Build Busybox](#A1)' >> ${MF}
echo '>' >> ${MF}
echo '> - [Re-Build Rootfs](#A2)' >> ${MF}
echo '>' >> ${MF}
if [ ${SUPPORT_FREEZE_DISK} = "Y" ]; then
	echo '> - [Mount a Freeze Disk](#A3)' >> ${MF}
	echo '>' >> ${MF}
	echo '> - [Un-mount a Freeze Disk](#A4)' >> ${MF}
	echo '>' >> ${MF}
fi
echo '> - [Running BiscuitOS](#A5)' >> ${MF}
echo '>' >> ${MF}
echo '> - [Debugging BiscuitOS](#A6)' >> ${MF}
echo '>' >> ${MF}
echo '> - [Running BiscuitOS with NetWorking](#A7)' >> ${MF}

##
# Uboot Configure and Compile
if [ ${SUPPORT_UBOOT} = "Y" ]; then
	echo '>' >> ${MF}
	echo '> - [Build Uboot](#A8)' >> ${MF}
	echo '>' >> ${MF}
	echo '> - [Running Uboot](#A9)' >> ${MF}
	echo '' >> ${MF}
	echo '----------------------------------' >> ${MF}
	echo '<span id="A8"></span>' >> ${MF}
	echo '' >> ${MF}
	echo '## Build Uboot' >> ${MF}
	echo '' >> ${MF}
	echo '```' >> ${MF}
	echo "cd ${OUTPUT}/u-boot/u-boot/" >> ${MF}
	echo "make ARCH=arm clean" >> ${MF}
	[ ${SUPPORT_RPI3B} = "N" ] && echo "make ARCH=arm vexpress_ca9x4_defconfig" >> ${MF}
	[ ${SUPPORT_RPI3B} = "Y" ] && echo "make ARCH=arm rpi_2_defconfig" >> ${MF}
	echo "make ARCH=arm CROSS_COMPILE=${DEF_UBOOT_CROOS}" >> ${MF}
	echo '```' >> ${MF}
	echo '' >> ${MF}
fi

##
# Kernel Configure and Compile

echo '' >> ${MF}
echo '---------------------------------' >> ${MF}
echo '<span id="A0"></span>' >> ${MF}
echo '' >> ${MF}
echo '## Build Linux Kernel' >> ${MF}
echo '' >> ${MF}
echo '```' >> ${MF}
echo "cd ${OUTPUT}/linux/linux"  >> ${MF}
case ${ARCH_NAME} in
	arm)
		echo "make ARCH=${ARCH_NAME} clean" >> ${MF}
		echo "make ARCH=${ARCH_NAME} ${DEFAULT_CONFIG}" >> ${MF}
		# Kbuild menuconfig
		echo "make ARCH=${ARCH_NAME} menuconfig" >> ${MF}
		echo '' >> ${MF}
		# RamDisk
		if [ ${SUPPORT_RAMDISK} = "Y" ]; then
			echo '' >> ${MF}
			echo '  General setup --->' >> ${MF}
			echo '        [*]Initial RAM filesystem and RAM disk (initramfs/initrd) support' >> ${MF}
			echo '' >> ${MF}
			echo '  Device Driver --->' >> ${MF}
			echo '        [*] Block devices --->' >> ${MF}
			echo '              <*> RAM block device support' >> ${MF}
			echo "              (${ROOTFS_BLOCKS}) Default RAM disk size" >> ${MF}
			echo '' >> ${MF}
		fi
		# Linux 2.6 Special Configure
		if [ ${SUPPORT_2_X} = "Y" ]; then
			echo '  Kernel Features --->' >> ${MF}
			echo '        [*] Use the ARM EABI to compile the kernel' >> ${MF}
			echo '' >> ${MF}
		fi
		# EXT3 filesystem Configure
		if [ ${SUPPORT_EXT3} = "Y" ]; then
			echo '  File systems --->' >> ${MF}
			echo '        <*> Ext3 journalling file system support' >> ${MF}
			echo '        [*]   Ext3 extended attributes' >> ${MF}
			echo '' >> ${MF}
		fi
		# Common Configure
		if [ ${SUPPORT_RPI} = "N" ]; then
			echo '  Enable the block layer --->' >> ${MF}
			echo '        [*] Support for large (2TB+) block devices and files' >> ${MF}
			echo '' >> ${MF}
		fi
		echo "make ARCH=${ARCH_NAME} CROSS_COMPILE=${DEF_KERNEL_CROSS} -j4" >> ${MF}
		echo "make ARCH=${ARCH_NAME} CROSS_COMPILE=${DEF_KERNEL_CROSS} modules -j4" >> ${MF}
		echo "make ARCH=${ARCH_NAME} INSTALL_MOD_PATH=${MODULE_INSTALL_PATH} modules_install" >> ${MF}
	;;
	arm64)
		echo "make ARCH=${ARCH_NAME} clean" >> ${MF}
		echo "make ARCH=${ARCH_NAME} defconfig" >> ${MF}
		echo "make ARCH=${ARCH_NAME} menuconfig" >> ${MF}
		echo '' >> ${MF}
		# RamDisk
		if [ ${SUPPORT_RAMDISK} = "Y" ]; then
			echo '' >> ${MF}
			echo '  General setup --->' >> ${MF}
			echo '        [*]Initial RAM filesystem and RAM disk (initramfs/initrd) support' >> ${MF}
			echo '' >> ${MF}
			echo '  Device Driver --->' >> ${MF}
			echo '        [*] Block devices --->' >> ${MF}
			echo '              <*> RAM block device support' >> ${MF}
			echo "              (${ROOTFS_BLOCKS}) Default RAM disk size" >> ${MF}
			echo '' >> ${MF}
		fi
		echo "make ARCH=${ARCH_NAME} CROSS_COMPILE=${DEF_KERNEL_CROSS} Image -j4" >> ${MF}
		echo "make ARCH=${ARCH_NAME} CROSS_COMPILE=${DEF_KERNEL_CROSS} modules -j4" >> ${MF}
		echo "make ARCH=${ARCH_NAME} INSTALL_MOD_PATH=${MODULE_INSTALL_PATH} modules_install" >> ${MF}
	;;
	riscv32)
		echo "make ARCH=riscv clean" >> ${MF}
		echo "make ARCH=riscv BiscuitOS_riscv32_defconfig" >> ${MF}
		echo '' >> ${MF}
		echo "make ARCH=riscv CROSS_COMPILE=${DEF_KERNEL_CROSS} vmlinux -j4" >> ${MF}
		echo "make ARCH=riscv CROSS_COMPILE=${DEF_KERNEL_CROSS} modules -j4" >> ${MF}
		echo "make ARCH=riscv INSTALL_MOD_PATH=${MODULE_INSTALL_PATH} modules_install" >> ${MF}
	;;
	riscv64)
		echo "make ARCH=riscv clean" >> ${MF}
		echo "make ARCH=riscv BiscuitOS_riscv64_defconfig" >> ${MF}
		echo '' >> ${MF}
		echo "make ARCH=riscv CROSS_COMPILE=${DEF_KERNEL_CROSS} vmlinux -j4" >> ${MF}
		echo "make ARCH=riscv CROSS_COMPILE=${DEF_KERNEL_CROSS} modules -j4" >> ${MF}
		echo "make ARCH=riscv INSTALL_MOD_PATH=${MODULE_INSTALL_PATH} modules_install" >> ${MF}
	;;
	x86)
		echo "make ARCH=i386 clean" >> ${MF}
		echo "make ARCH=i386 i386_defconfig" >> ${MF}
		echo "make ARCH=i386 menuconfig" >> ${MF}
		echo '' >> ${MF}
		echo '  General setup --->' >> ${MF}
		echo '        [*]Initial RAM filesystem and RAM disk (initramfs/initrd) support' >> ${MF}
		echo '' >> ${MF}
		echo '  Device Driver --->' >> ${MF}
		echo '        [*] Block devices --->' >> ${MF}
		echo '              <*> RAM block device support' >> ${MF}
		echo "              (${ROOTFS_BLOCKS}) Default RAM disk size" >> ${MF}
		echo '' >> ${MF}
		echo "make ARCH=i386 bzImage -j4" >> ${MF}
		echo "make ARCH=i386 modules -j4" >> ${MF}
		echo "make ARCH=i386 INSTALL_MOD_PATH=${MODULE_INSTALL_PATH} modules_install" >> ${MF}
	;;
	x86_64)
		echo "make ARCH=x86_64 clean" >> ${MF}
		echo "make ARCH=x86_64 x86_64_defconfig" >> ${MF}
		echo "make ARCH=x86_64 menuconfig" >> ${MF}
		echo '' >> ${MF}
		echo '  General setup --->' >> ${MF}
		echo '        [*]Initial RAM filesystem and RAM disk (initramfs/initrd) support' >> ${MF}
		echo '' >> ${MF}
		echo '  Device Driver --->' >> ${MF}
		echo '        [*] Block devices --->' >> ${MF}
		echo '              <*> RAM block device support' >> ${MF}
		echo "              (${ROOTFS_BLOCKS}) Default RAM disk size" >> ${MF}
		echo '' >> ${MF}
		echo "make ARCH=x86_64 bzImage -j4" >> ${MF}
		echo "make ARCH=x86_64 modules -j4" >> ${MF}
		echo "make ARCH=x86_64 INSTALL_MOD_PATH=${MODULE_INSTALL_PATH} modules_install" >> ${MF}
	;;
esac
echo '```' >> ${MF}
echo '' >> ${MF}

#############################################
# Busybox
#############################################
README_busybox()
{
cat << EOF >> ${1}
---------------------------------
<span id="A1"></span>

## Build Busybox

\`\`\`
cd ${OUTPUT}/busybox/busybox
make clean
make menuconfig

  Busybox Settings --->
    Build Options --->
      [*] Build BusyBox as a static binary (no shared libs)
EOF
	if [ ${ARCH_NAME}Y = "x86Y" ]; then
		echo '      (-m32 -march=i386 -mtune=i386) Additional CFLAGS' >> ${1}
		echo '      (-m32) Additional LDFLAGS' >> ${1}
		echo '' >> ${1}
		echo "make -j4" >> ${1}
		echo "make install" >> ${1}
		echo '```' >> ${MF}
	elif [ ${ARCH_NAME}Y = "x86_64Y" ]; then
		echo '' >> ${1}
		echo "make -j4" >> ${1}
		echo "make install" >> ${1}
		echo '```' >> ${1}
	else
		echo '' >> ${1}
		echo "make CROSS_COMPILE=${DEF_KERNEL_CROSS} -j4" >> ${1}
		echo '' >> ${1}
		echo "make CROSS_COMPILE=${DEF_KERNEL_CROSS} install" >> ${1}
		echo '```' >> ${1}
	fi
}

##############################################
# Re-build Rootfs
##############################################
README_pack()
{
cat << EOF >> ${1}
---------------------------------
<span id="A2"></span>

## Re-Build Rootfs

\`\`\`
cd ${OUTPUT}
./${RUNSCP_NAME} pack
\`\`\`
EOF
}

##############################################
# Running Uboot
##############################################
README_uboot()
{
cat << EOF >> ${1}
---------------------------------
<span id="A9"></span>

## Running Uboot

\`\`\`
cd ${OUTPUT}
./${RUNSCP_NAME} uboot
\`\`\`
EOF
}

##############################################
# Mount/Unmount a Freeze Disk
##############################################
README_mount_freeze()
{
cat << EOF >> ${1}
---------------------------------
<span id="A3"></span>

## Mount a Freeze Disk

\`\`\`
cd ${OUTPUT}
./${RUNSCP_NAME} mount
cd ${OUTPUT}/FreezeDir
\`\`\`

---------------------------------
<span id="A4"></span>

## Un-mount a Freeze Disk

\`\`\`
cd ${OUTPUT}
./${RUNSCP_NAME} umount
\`\`\`

EOF
}

###################################################
# Lanuch a Linux Disto
###################################################
README_launch_BiscuitOS()
{
cat << EOF >> ${1}
---------------------------------
<span id="A5"></span>

## Running BiscuitOS

\`\`\`
cd ${OUTPUT}
./${RUNSCP_NAME}
\`\`\`

EOF
}

####################################################
# Debug BiscuitOS (Linux/uboot)
#####################################################
# ARM
README_arm_debug()
{
cat << EOF >> ${1}
---------------------------------
<span id="A6"></span>

## Debuging BiscuitOS

> - [Debugging zImage before Relocated](#B0)
>
> - [Debugging zImage After Relocated](#B1)
>
> - [Debugging kernel MMU OFF before start_kernel](#B2)
>
> - [Debugging kernel MMU ON before start_kernel](#B3)
>
> - [Debugging kernel after start_kernel](#B4)

--------------------------------
<span id="B0"></span>

#### Debugging zImage before Relocated

\`\`\`
> First Terminal

cd ${OUTPUT}
./${RUNSCP_NAME} debug

> Second Terminal

${OUTPUT}/${CROSS_COMPILE}/${CROSS_COMPILE}/bin/${CROSS_COMPILE}-gdb -x ${OUTPUT}/package/gdb/gdb_zImage

(gdb) b XXX_bk
(gdb) c
(gdb) info reg
\`\`\`

--------------------------------
<span id="B1"></span>

#### Debugging zImage After Relocated

\`\`\`
> First Terminal

cd ${OUTPUT}
./${RUNSCP_NAME} debug

> Second Terminal

${OUTPUT}/${CROSS_COMPILE}/${CROSS_COMPILE}/bin/${CROSS_COMPILE}-gdb -x ${OUTPUT}/package/gdb/gdb_RzImage

(gdb) b XXX_bk
(gdb) c
(gdb) info reg
\`\`\`

--------------------------------
<span id="B2"></span>

#### Debugging kernel MMU OFF before start_kernel

\`\`\`
> First Terminal

cd ${OUTPUT}
./${RUNSCP_NAME} debug

> Second Terminal

${OUTPUT}/${CROSS_COMPILE}/${CROSS_COMPILE}/bin/${CROSS_COMPILE}-gdb -x ${OUTPUT}/package/gdb/gdb_Image

(gdb) b XXX_bk
(gdb) c
(gdb) info reg
\`\`\`

--------------------------------
<span id="B3"></span>

#### Debugging kernel MMU ON before start_kernel

\`\`\`
> First Terminal

cd ${OUTPUT}
./${RUNSCP_NAME} debug

> Second Terminal

${OUTPUT}/${CROSS_COMPILE}/${CROSS_COMPILE}/bin/${CROSS_COMPILE}-gdb -x ${OUTPUT}/package/gdb/gdb_RImage

(gdb) b XXX_bk
(gdb) c
(gdb) info reg

\`\`\`

--------------------------------
<span id="B4"></span>

#### Debugging kernel after start_kernel

\`\`\`
> First Terminal

cd ${OUTPUT}
./${RUNSCP_NAME} debug

> Second Terminal

${OUTPUT}/${CROSS_COMPILE}/${CROSS_COMPILE}/bin/${CROSS_COMPILE}-gdb ${OUTPUT}/linux/linux/vmlinux -x ${OUTPUT}/package/gdb/gdb_Kernel

(gdb) b XXX_bk
(gdb) c
(gdb) info reg
\`\`\`

EOF
}

# ARM64
README_arm64_debug()
{
cat << EOF >> ${1}
---------------------------------
<span id="A6"></span>

## Debuging BiscuitOS

\`\`\`
> First Terminal

cd ${OUTPUT}
./${RUNSCP_NAME} debug

> Second Terminal

${OUTPUT}/${CROSS_COMPILE}/${CROSS_COMPILE}/bin/${CROSS_COMPILE}-gdb ${OUTPUT}/linux/linux/vmlinux

(gdb) target remote :1234
(gdb) b start_kernel
(gdb) c
\`\`\`

EOF
}

README_debug()
{
	case ${ARCH_NAME} in
		arm)
			README_arm_debug ${1}
		;;
		arm64)
			README_arm64_debug ${1}
		;;
	esac
}

##############################################
# Lanuch BiscuitOS Networking
##############################################
README_networking()
{
cat << EOF >> ${MF}

---------------------------------

## Running BiscuitOS with NetWorking

\`\`\`
cd ${OUTPUT}
./${RUNSCP_NAME} net
\`\`\`

EOF
}

########################################
# List README
########################################

[ ${SUPPORT_BUSYBOX} = "Y" ] && README_busybox ${MF}
README_pack ${MF}
[ ${SUPPORT_FREEZE_DISK} = "Y" ] && README_mount_freeze ${MF}
[ ${SUPPORT_UBOOT} = "Y" ] && README_uboot ${MF}
README_launch_BiscuitOS ${MF}
[ ${SUPPORT_NETWORK} = "Y" ] && README_networking ${MF}
README_debug ${MF}
