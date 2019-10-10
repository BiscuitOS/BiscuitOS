#/bin/bash
  
set -e
# Auto create README.
#
# (C) 2019.05.11 BiscuitOS <buddy.zhang@aliyun.com>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2 as
# published by the Free Software Foundation.

# Rootfs path for BiscuitOS
ROOT=${1%X}
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
[ ${KERNEL_VERSION} = "newest" ] && KERNEL_VERSION=6.0.0
# Rootfs NAME
ROOTFS_NAME=${2%X}
# Rootfs Version
ROOTFS_VERSION=${3%X}
# Rootfs Path
ROOTFS_PATH=${OUTPUT}/rootfs/${ROOTFS_NAME}
# Disk size (MB)
DISK_SIZE=${17%X}
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
SUPPORT_PRI4B=N

# Kernel Version field
KERNEL_MAJOR_NO=
KERNEL_MINOR_NO=
KERNEL_MINIR_NO=

DEFAULT_CONFIG=defconfig

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
	QEMU=${QEMU_PATH}/x86_64-softmmu/qemu-system-x86_64
	;;
	2)
	ARCH_NAME=arm
	QEMU=${QEMU_PATH}/arm-softmmu/qemu-system-arm
	DEFAULT_CONFIG=vexpress_defconfig
	;;
	3)
	ARCH_NAME=arm64
	QEMU=${QEMU_PATH}/aarch64-softmmu/qemu-system-aarch64
	DEFAULT_CONFIG=defconfig
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
[ ${ARCH_NAME} == "arm" -a ${KERNEL_MAJOR_NO} -ge 3 -a ${KERNEL_MINOR_NO} -gt 4 ] && SUPPORT_DTB=Y

# Support RAMDISK (2.x/3.x Support)
# --> Mount / at RAMDISK
[ ${KERNEL_MAJOR_NO} -lt 4 ] && SUPPORT_RAMDISK=Y
[ ${ARCH_NAME} == "arm64" ] && SUPPORT_RAMDISK=N

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

# CROSS_CROMPILE
[ ${SUPPORT_2_X} = "Y" ] && SUPPORT_NONE_GNU=Y

# ARM Kernel Configure
[ ${SUPPORT_2_X} = "Y" ] && DEFAULT_CONFIG=versatile_defconfig

# Uboot
[ ${UBOOT}X = "yX" ] && SUPPORT_UBOOT=Y

# Platform 
[ ${PROJECT_NAME} = "RaspberryPi_4B" ] && SUPPORT_PRI4B=Y && DEFAULT_CONFIG=bcm2711_defconfig
[ ${SUPPORT_PRI4B} = "Y" ] && SUPPORT_RAMDISK=N

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
EOF
# RAM size
[ ${SUPPORT_2_X} = "Y" ] && echo 'RAM_SIZE=256' >> ${MF} 
[ ${SUPPORT_2_X} = "N" ] && echo 'RAM_SIZE=512' >> ${MF}
# Platform
[ ${SUPPORT_2_X} = "Y" -a ${ARCH_NAME} == "arm" ] && echo 'MACH=versatilepb' >> ${MF} 
[ ${SUPPORT_2_X} = "N" -a ${ARCH_NAME} == "arm" ] && echo 'MACH=vexpress-a9' >> ${MF}
echo 'LINUX_DIR=${ROOT}/linux/linux/arch' >> ${MF}
echo 'NET_CFG=${ROOT}/package/networking' >> ${MF}
case ${ARCH_NAME} in
	arm)
		[ ${SUPPORT_RAMDISK} = "Y" ] && echo 'CMDLINE="earlycon root=/dev/ram0 rw rootfstype=${FS_TYPE} console=ttyAMA0 init=/linuxrc loglevel=8"' >> ${MF}
		[ ${SUPPORT_RAMDISK} = "N" ] && echo 'CMDLINE="earlycon root=/dev/vda rw rootfstype=${FS_TYPE} console=ttyAMA0 init=/linuxrc loglevel=8"' >> ${MF}
	;;
	arm64)
		[ ${SUPPORT_RAMDISK} = "Y" ] && echo 'CMDLINE="earlycon root=/dev/ram0 rw rootfstype=${FS_TYPE} console=ttyAMA0 init=/linuxrc loglevel=8"' >> ${MF}
		[ ${SUPPORT_RAMDISK} = "N" ] && echo 'CMDLINE="earlycon root=/dev/vda rw rootfstype=${FS_TYPE} console=ttyAMA0 init=/linuxrc loglevel=8"' >> ${MF}
	;;
	riscv32)
		echo 'CMDLINE="root=/dev/vda rw console=ttyS0 init=/linuxrc loglevel=8"' >> ${MF}
	;;
	riscv64)
		echo 'CMDLINE="root=/dev/vda rw console=ttyS0 init=/linuxrc loglevel=8"' >> ${MF}
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
		echo -e '\tsudo ${QEMUT} ${ARGS} \' >> ${MF}
		echo -e '\t-M ${MACH} \' >> ${MF}
		echo -e '\t-m ${RAM_SIZE}M \' >> ${MF}
		echo -e '\t-kernel ${LINUX_DIR}/${ARCH}/boot/zImage \' >> ${MF}
		# Support DTB/DTS/FDT
		[ ${SUPPORT_DTB} = "Y" ] && echo -e '\t-dtb ${LINUX_DIR}/${ARCH}/boot/dts/vexpress-v2p-ca9.dtb \' >> ${MF}
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
		echo -e '\t-nographic \' >> ${MF}
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
	echo -e '\tmkimage -n "ramdisk" -A arm -O linux -T ramdisk -C gzip \' >> ${MF}
	echo -e '\t        -d ${OUTPUT}/rootfs/ramdisk.gz ${OUTPUT}/BiscuitOS.img' >> ${MF}
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

echo '}' >> ${MF}
echo '' >> ${MF}

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
echo -e '\t\tdo_package' >> ${MF}
echo -e '\t\t;;' >> ${MF}
echo -e '\t"debug")' >> ${MF}
echo -e '\t\t# Debugging BiscuitOS' >> ${MF}
echo -e '\t\tdo_umount' >> ${MF}
echo -e '\t\tdo_running debug' >> ${MF}
echo -e '\t\t;;' >> ${MF}
echo -e '\t"net")' >> ${MF}
echo -e '\t\t# Establish Netwroking' >> ${MF}
echo -e '\t\tsudo ${NET_CFG}/bridge.sh' >> ${MF}
echo -e '\t\tsudo cp -rf ${NET_CFG}/qemu-ifup /etc' >> ${MF}
echo -e '\t\tsudo cp -rf ${NET_CFG}/qemu-ifdown /etc' >> ${MF}
echo -e '\t\tdo_umount' >> ${MF}
echo -e '\t\tdo_running net' >> ${MF}
echo -e '\t\t;;' >> ${MF}
echo -e '\t"mount")' >> ${MF}
echo -e '\t\t# Mount Freeze Disk' >> ${MF}
echo -e '\t\tdo_mount' >> ${MF}
echo -e '\t\t;;' >> ${MF}
echo -e '\t"umount")' >> ${MF}
echo -e '\t\t# Umount Freeze Disk' >> ${MF}
echo -e '\t\tdo_umount' >> ${MF}
echo -e '\t\t;;' >> ${MF}
echo -e '\t*)' >> ${MF}
echo -e '\t\t# Default Running BiscuitOS' >> ${MF}
echo -e '\t\tdo_umount' >> ${MF}
[ ${SUPPORT_UBOOT} = "N" ] && echo -e '\t\tdo_running $1 $2' >> ${MF}
[ ${SUPPORT_UBOOT} = "Y" ] && echo -e '\t\tdo_uboot' >> ${MF}
echo -e '\t\t;;' >> ${MF}
echo -e 'esac' >> ${MF}
chmod 755 ${MF}

## Auto create README.md
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
echo '> - [Mount a Freeze Disk](#A3)' >> ${MF}
echo '>' >> ${MF}
echo '> - [Un-mount a Freeze Disk](#A4)' >> ${MF}
echo '>' >> ${MF}
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
	echo "make ARCH=arm vexpress_ca9x4_defconfig" >> ${MF}
	echo "make ARCH=arm CROSS_COMPILE=${DEF_KERNEL_CROSS}" >> ${MF}
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
		if [ ${SUPPORT_PRI4B} = "N" ]; then
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
esac
echo '```' >> ${MF}
echo '' >> ${MF}

##
# Busybox Configure and Compile
echo '---------------------------------' >> ${MF}
echo '<span id="A1"></span>' >> ${MF}
echo '' >> ${MF}
echo '## Build Busybox' >> ${MF}
echo '' >> ${MF}
echo '```' >> ${MF}
echo "cd ${OUTPUT}/busybox/busybox" >> ${MF}
echo 'make clean' >> ${MF}
echo 'make menuconfig' >> ${MF}
echo '' >> ${MF}
echo '  Busybox Settings --->' >> ${MF}
echo '    Build Options --->' >> ${MF}
echo '      [*] Build BusyBox as a static binary (no shared libs)' >> ${MF}
echo '' >> ${MF}
echo "make CROSS_COMPILE=${DEF_KERNEL_CROSS} -j4" >> ${MF}
echo '' >> ${MF}
echo "make CROSS_COMPILE=${DEF_KERNEL_CROSS} install" >> ${MF}
echo '```' >> ${MF}

##
# Re-build Rootfs
echo '' >> ${MF}
echo '---------------------------------' >> ${MF}
echo '<span id="A2"></span>' >> ${MF}
echo '' >> ${MF}
echo '## Re-Build Rootfs' >> ${MF}
echo '' >> ${MF}
echo '```' >> ${MF}
echo "cd ${OUTPUT}" >> ${MF}
echo "./${RUNSCP_NAME} pack" >> ${MF}
echo '```' >> ${MF}
echo '' >> ${MF}

##
# Running Uboot
echo '' >> ${MF}
if [ ${SUPPORT_UBOOT} = "Y" ]; then
	echo '---------------------------------' >> ${MF}
	echo '<span id="A9"></span>' >> ${MF}
	echo '' >> ${MF}
	echo '## Running Uboot' >> ${MF}
	echo '' >> ${MF}
	echo '```' >> ${MF}
	echo "cd ${OUTPUT}" >> ${MF}
	echo "./${RUNSCP_NAME} uboot" >> ${MF}
	echo '```' >> ${MF}
	echo '' >> ${MF}
fi

##
# Mount a Freeze Disk
echo '' >> ${MF}
echo '---------------------------------' >> ${MF}
echo '<span id="A3"></span>' >> ${MF}
echo '' >> ${MF}
echo '## Mount a Freeze Disk' >> ${MF}
echo '' >> ${MF}
echo '```' >> ${MF}
echo "cd ${OUTPUT}" >> ${MF}
echo "./${RUNSCP_NAME} mount" >> ${MF}
echo "cd ${OUTPUT}/FreezeDir" >> ${MF}
echo '```' >> ${MF}
echo '' >> ${MF}

##
# Un-mount a Freeze Disk
echo '' >> ${MF}
echo '---------------------------------' >> ${MF}
echo '<span id="A4"></span>' >> ${MF}
echo '' >> ${MF}
echo '## Un-mount a Freeze Disk' >> ${MF}
echo '' >> ${MF}
echo '```' >> ${MF}
echo "cd ${OUTPUT}" >> ${MF}
echo "./${RUNSCP_NAME} umount" >> ${MF}
echo '```' >> ${MF}
echo '' >> ${MF}

##
# Lanuch a Linux Disto
echo '' >> ${MF}
echo '---------------------------------' >> ${MF}
echo '<span id="A5"></span>' >> ${MF}
echo '' >> ${MF}
echo '## Running BiscuitOS' >> ${MF}
echo '' >> ${MF}
echo '```' >> ${MF}
echo "cd ${OUTPUT}" >> ${MF}
echo "./${RUNSCP_NAME}" >> ${MF}
echo '```' >> ${MF}
echo '' >> ${MF}
case ${ARCH_NAME} in
	arm)
		echo '---------------------------------' >> ${MF}
		echo '<span id="A6"></span>' >> ${MF}
		echo '' >> ${MF}
		echo '## Debuging BiscuitOS' >> ${MF}
		echo '' >> ${MF}
		echo '> - [Debugging zImage before Relocated](#B0)' >> ${MF}
		echo '>' >> ${MF}
		echo '> - [Debugging zImage After Relocated](#B1)' >> ${MF}
		echo '>' >> ${MF}
		echo '> - [Debugging kernel MMU OFF before start_kernel](#B2)' >> ${MF}
		echo '>' >> ${MF}
		echo '> - [Debugging kernel MMU ON before start_kernel](#B3)' >> ${MF}
		echo '>' >> ${MF}
		echo '> - [Debugging kernel after start_kernel](#B4)' >> ${MF}
		echo '' >> ${MF}
		echo '--------------------------------' >> ${MF}
		echo '<span id="B0"></span>' >> ${MF}
		echo '' >> ${MF}
		echo '#### Debugging zImage before Relocated' >> ${MF}
		echo '' >> ${MF}
		echo '###### First Terminal' >> ${MF}
		echo '' >> ${MF}
		echo '```' >> ${MF}
		echo "cd ${OUTPUT}" >> ${MF}
		echo "./${RUNSCP_NAME} debug" >> ${MF}
		echo '```' >> ${MF}
		echo '' >> ${MF}
		echo '###### Second Terminal' >> ${MF}
		echo '' >> ${MF}
		echo '```' >> ${MF}
		echo "${OUTPUT}/${CROSS_COMPILE}/${CROSS_COMPILE}/bin/${CROSS_COMPILE}-gdb -x ${OUTPUT}/package/gdb/gdb_zImage" >> ${MF}
		echo '' >> ${MF}
		echo '(gdb) b XXX_bk' >> ${MF}
		echo '(gdb) c' >> ${MF}
		echo '(gdb) info reg' >> ${MF}
		echo '```' >> ${MF}
		echo '' >> ${MF}
		echo '--------------------------------' >> ${MF}
		echo '<span id="B1"></span>' >> ${MF}
		echo '' >> ${MF}
		echo '#### Debugging zImage After Relocated' >> ${MF}
		echo '' >> ${MF}
		echo '###### First Terminal' >> ${MF}
		echo '' >> ${MF}
		echo '```' >> ${MF}
		echo "cd ${OUTPUT}" >> ${MF}
		echo "./${RUNSCP_NAME} debug" >> ${MF}
		echo '```' >> ${MF}
		echo '' >> ${MF}
		echo '###### Second Terminal' >> ${MF}
		echo '' >> ${MF}
		echo '```' >> ${MF}
		echo "${OUTPUT}/${CROSS_COMPILE}/${CROSS_COMPILE}/bin/${CROSS_COMPILE}-gdb -x ${OUTPUT}/package/gdb/gdb_RzImage" >> ${MF}
		echo '' >> ${MF}
		echo '(gdb) b XXX_bk' >> ${MF}
		echo '(gdb) c' >> ${MF}
		echo '(gdb) info reg' >> ${MF}
		echo '```' >> ${MF}
		echo '' >> ${MF}
		echo '--------------------------------' >> ${MF}
		echo '<span id="B2"></span>' >> ${MF}
		echo '' >> ${MF}
		echo '#### Debugging kernel MMU OFF before start_kernel' >> ${MF}
		echo '' >> ${MF}
		echo '###### First Terminal' >> ${MF}
		echo '' >> ${MF}
		echo '```' >> ${MF}
		echo "cd ${OUTPUT}" >> ${MF}
		echo "./${RUNSCP_NAME} debug" >> ${MF}
		echo '```' >> ${MF}
		echo '' >> ${MF}
		echo '###### Second Terminal' >> ${MF}
		echo '' >> ${MF}
		echo '```' >> ${MF}
		echo "${OUTPUT}/${CROSS_COMPILE}/${CROSS_COMPILE}/bin/${CROSS_COMPILE}-gdb -x ${OUTPUT}/package/gdb/gdb_Image" >> ${MF}
		echo '' >> ${MF}
		echo '(gdb) b XXX_bk' >> ${MF}
		echo '(gdb) c' >> ${MF}
		echo '(gdb) info reg' >> ${MF}
		echo '```' >> ${MF}
		echo '' >> ${MF}
		echo '--------------------------------' >> ${MF}
		echo '<span id="B3"></span>' >> ${MF}
		echo '' >> ${MF}
		echo '#### Debugging kernel MMU ON before start_kernel' >> ${MF}
		echo '' >> ${MF}
		echo '###### First Terminal' >> ${MF}
		echo '' >> ${MF}
		echo '```' >> ${MF}
		echo "cd ${OUTPUT}" >> ${MF}
		echo "./${RUNSCP_NAME} debug" >> ${MF}
		echo '```' >> ${MF}
		echo '' >> ${MF}
		echo '###### Second Terminal' >> ${MF}
		echo '' >> ${MF}
		echo '```' >> ${MF}
		echo "${OUTPUT}/${CROSS_COMPILE}/${CROSS_COMPILE}/bin/${CROSS_COMPILE}-gdb -x ${OUTPUT}/package/gdb/gdb_RImage" >> ${MF}
		echo '' >> ${MF}
		echo '(gdb) b XXX_bk' >> ${MF}
		echo '(gdb) c' >> ${MF}
		echo '(gdb) info reg' >> ${MF}
		echo '```' >> ${MF}
		echo '' >> ${MF}
		echo '--------------------------------' >> ${MF}
		echo '<span id="B4"></span>' >> ${MF}
		echo '' >> ${MF}
		echo '#### Debugging kernel after start_kernel' >> ${MF}
		echo '' >> ${MF}
		echo '###### First Terminal' >> ${MF}
		echo '' >> ${MF}
		echo '```' >> ${MF}
		echo "cd ${OUTPUT}" >> ${MF}
		echo "./${RUNSCP_NAME} debug" >> ${MF}
		echo '```' >> ${MF}
		echo '' >> ${MF}
		echo '###### Second Terminal' >> ${MF}
		echo '' >> ${MF}
		echo '```' >> ${MF}
		echo "${OUTPUT}/${CROSS_COMPILE}/${CROSS_COMPILE}/bin/${CROSS_COMPILE}-gdb ${OUTPUT}/linux/linux/vmlinux -x ${OUTPUT}/package/gdb/gdb_Kernel" >> ${MF}
		echo '' >> ${MF}
		echo '(gdb) b XXX_bk' >> ${MF}
		echo '(gdb) c' >> ${MF}
		echo '(gdb) info reg' >> ${MF}
		echo '```' >> ${MF}
		;;
	arm64)
		echo '---------------------------------' >> ${MF}
                echo '<span id="A6"></span>' >> ${MF}
                echo '' >> ${MF}
                echo '## Debuging BiscuitOS' >> ${MF}
                echo '' >> ${MF}
		echo '###### First Terminal' >> ${MF}
		echo '' >> ${MF}
		echo '```' >> ${MF}
		echo "cd ${OUTPUT}" >> ${MF}
		echo "./${RUNSCP_NAME} debug" >> ${MF}
		echo '```' >> ${MF}
		echo '' >> ${MF}
		echo '###### Second Terminal' >> ${MF}
		echo '' >> ${MF}
		echo '```' >> ${MF}
		echo "${OUTPUT}/${CROSS_COMPILE}/${CROSS_COMPILE}/bin/${CROSS_COMPILE}-gdb ${OUTPUT}/linux/linux/vmlinux" >> ${MF}
		echo '' >> ${MF}
		echo '(gdb) target remote :1234' >> ${MF}
		echo '(gdb) b start_kernel' >> ${MF}
		echo '(gdb) c' >> ${MF}
		echo '(gdb) info reg' >> ${MF}
		echo '```' >> ${MF}
		echo '' >> ${MF}
		;;
esac

##
# Lanuch BiscuitOS Networking
echo '' >> ${MF}
echo '---------------------------------' >> ${MF}
echo '<span id="A7"></span>' >> ${MF}
echo '' >> ${MF}
echo '## Running BiscuitOS with NetWorking' >> ${MF}
echo '' >> ${MF}
echo '```' >> ${MF}
echo "cd ${OUTPUT}" >> ${MF}
echo "./${RUNSCP_NAME} net" >> ${MF}
echo '```' >> ${MF}
echo '' >> ${MF}
