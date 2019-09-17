#/bin/bash
  
set -e
# Auto create README.
#
# (C) 2019.05.11 BiscuitOS <buddy.zhang@aliyun.com>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2 as
# published by the Free Software Foundation.

ROOT=${1%X}
ROOTFS_NAME=${2%X}
ROOTFS_VERSION=${3%X}
PROJECT_NAME=${9%X}
CROSS_TOOL=${12%X}
OUTPUT=${ROOT}/output/${PROJECT_NAME}
BUSYBOX=${OUTPUT}/busybox/busybox
GCC=${OUTPUT}/${CROSS_TOOL}/${CROSS_TOOL}
UBOOT=${15}
UBOOT_CROSS=${16%X}
KERNEL_VER=${7%X}
FREEZE_NAME=${17%X}
KERNEL_2_6_SUP=X
UCROSS_PATH=${OUTPUT}/${UBOOT_CROSS}/${UBOOT_CROSS}
KCROSS_PATH=${OUTPUT}/${CROSS_TOOL}/${CROSS_TOOL}
QEMU_PATH=${OUTPUT}/qemu-system/qemu-system
CROSS_COMPILE_SUP_NONE=N

README_NAME=README.md
RUNSCP_NAME=RunBiscuitOS.sh

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
	;;
	3)
	ARCH_NAME=arm64
	QEMU=${QEMU_PATH}/aarch64-softmmu/qemu-system-aarch64
	;;
	4)
	ARCH_NAME=riscv32
	;;
	5)
	ARCH_NAME=riscv64
	;;
esac

##
# Kernel Version Inforation

# Detect Kernel Major Version
KERNEL_MAJORV=`echo "${KERNEL_VER}"| awk -F '.' '{print $1"."$2}'`
[ ${KERNEL_MAJORV}X = "2.6X" -o ${KERNEL_MAJORV}X = "2.4X" -o \
  ${KERNEL_MAJORV}X = "3.0X" -o ${KERNEL_MAJORV}X = "3.1X" -o \
  ${KERNEL_MAJORV}X = "3.2X" -o ${KERNEL_MAJORV}X = "3.3X" -o \
  ${KERNEL_MAJORV}X = "3.4X" ] && KERNEL_DTB_USE=N

# 
[ ${KERNEL_MAJORV}X = "2.6X" -o ${KERNEL_MAJORV}X = "2.4X" ] && KERNEL_2_X_SUP=N

# FS_TYPE 
[ ${KERNEL_VER:0:3} = "2.6" -o ${KERNEL_VER:0:3} = "3.4" ] && KERNEL_2_6_SUP=Y

HAS_BLK=Y
# CROSS_CROMPILE
[ ${KERNEL_VER:0:3} = "2.6" ] && CROSS_COMPILE_SUP_NONE=Y && HAS_BLK=N
[ ${ARCH_NAME} = "arm64" ] && HAS_BLK=N

##
# Rootfs Inforamtion
FS_TYPE=
FS_TYPE_TOOLS=

if [ ${KERNEL_2_6_SUP} = "Y" ]; then
	FS_TYPE=ext3
	FS_TYPE_TOOLS=mkfs.ext3
else
	FS_TYPE=ext4
	FS_TYPE_TOOLS=mkfs.ext4
fi

if [ ${CROSS_COMPILE_SUP_NONE} = "Y" ]; then
	DEF_UBOOT_CROOS=${UCROSS_PATH}/bin/arm-none-linux-gnueabi-
	DEF_KERNEL_CROSS=${KCROSS_PATH}/bin/arm-none-linux-gnueabi-
else
	DEF_UBOOT_CROOS=${UCROSS_PATH}/bin/${UBOOT_CROSS}-
	DEF_KERNEL_CROSS=${KCROSS_PATH}/bin/${CROSS_TOOL}-
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
CROSS_TOOL=${CROSS_TOOL}
FS_TYPE=${FS_TYPE}
FS_TYPE_TOOLS=${FS_TYPE_TOOLS}
ROOTFS_SIZE=150
RAM_SIZE=512
EOF
echo 'LINUX_DIR=${ROOT}/linux/linux/arch' >> ${MF}
echo 'NET_CFG=${ROOT}/package/networking' >> ${MF}
echo 'CMDLINE="earlycon root=/dev/ram0 rw rootfstype=${FS_TYPE} console=ttyAMA0 init=/linuxrc loglevel=8"' >> ${MF}
if [ ${UBOOT} = "yX" ]; then
	echo "UBOOT=${OUTPUT}/u-boot/u-boot" >> ${MF}
	echo '' >> ${MF}
	echo 'do_uboot()' >> ${MF}
	echo '{' >> ${MF}
	echo '	${QEMUT} -M vexpress-a9 -kernel ${UBOOT}/u-boot -m 512 -nographic' >> ${MF}
	echo '}' >> ${MF}
fi
## 
# Common Running function
# 
# -> Used to launch a Server Linux 
echo '' >> ${MF}
echo 'do_running()' >> ${MF}
echo '{' >> ${MF}
case ${ARCH_NAME} in
	arm) 
	if [ ${KERNEL_2_X_SUP}X = "NX" ]; then
		echo -e '\tsudo ${QEMUT} \' >> ${MF}
		echo -e '\t-M versatilepb \' >> ${MF}
		echo -e '\t-m 256M \' >> ${MF}
		echo -e '\t-kernel ${LINUX_DIR}/${ARCH}/boot/zImage \' >> ${MF}
		echo -e '\t-nodefaults \' >> ${MF}
		echo -e '\t-serial stdio \' >> ${MF}
		[ ${HAS_BLK} = "Y" ] && echo -e '\t-device virtio-blk-device,drive=hd0 \' >> ${MF}
		[ ${HAS_BLK} = "Y" ] && echo -e '\t-drive file=${ROOT}/Freeze.img,format=raw,id=hd0 \' >> ${MF} 
		echo -e '\t-nographic \' >> ${MF}
		echo -e '\t-append "${CMDLINE}" \' >> ${MF}
		echo -e '\t-initrd ${ROOT}/BiscuitOS.img' >> ${MF}
	else
		echo -e '\tsudo ${QEMUT} \' >> ${MF}
		echo -e '\t-M vexpress-a9 \' >> ${MF}
		echo -e '\t-m ${RAM_SIZE}M \' >> ${MF}
		echo -e '\t-kernel ${LINUX_DIR}/${ARCH}/boot/zImage \' >> ${MF}
		[ ${KERNEL_DTB_USE}X != "N"X ] && echo -e '\t-dtb ${LINUX_DIR}/${ARCH}/boot/dts/vexpress-v2p-ca9.dtb \' >> ${MF}
		echo -e '\t-nodefaults \' >> ${MF}
		[ ${HAS_BLK} = "Y" ] && echo -e '\t-device virtio-blk-device,drive=hd0 \' >> ${MF}
		[ ${HAS_BLK} = "Y" ] && echo -e '\t-drive file=${ROOT}/Freeze.img,format=raw,id=hd0 \' >> ${MF} 
		echo -e '\t-serial stdio \' >> ${MF}
		echo -e '\t-nographic \' >> ${MF}
		echo -e '\t-append "${CMDLINE}" \' >> ${MF}
		echo -e '\t-initrd ${ROOT}/BiscuitOS.img' >> ${MF}
	fi
	;;
	arm64)
		echo -e '\tsudo ${QEMUT} \' >> ${MF}
		echo -e '\t-M virt \' >> ${MF}
		echo -e '\t-cpu cortex-a53 \' >> ${MF}
		echo -e '\t-smp 2 \' >> ${MF}
		echo -e '\t-m ${RAM_SIZE}M \' >> ${MF}
		echo -e '\t-kernel ${LINUX_DIR}/${ARCH}/boot/Image \' >> ${MF}
		echo -e '\t-nodefaults \' >> ${MF}
		echo -e '\t-serial stdio \' >> ${MF}
		[ ${HAS_BLK} = "Y" ] && echo -e '\t-device virtio-blk-device,drive=hd0 \' >> ${MF}
		[ ${HAS_BLK} = "Y" ] && echo -e '\t-drive file=${ROOT}/Freeze.img,format=raw,id=hd0 \' >> ${MF} 
		echo -e '\t-nographic \' >> ${MF}
		echo -e '\t-append "${CMDLINE}" \' >> ${MF}
		echo -e '\t-initrd ${ROOT}/BiscuitOS.img' >> ${MF}
	;;
esac
echo '}' >> ${MF}
##
# Common Debug function
#
# -> Used to debug kernel/Uboot
echo '' >> ${MF}
echo 'do_debug()' >> ${MF}
echo '{' >> ${MF}
case ${ARCH_NAME} in
	arm)
	if [ ${KERNEL_2_X_SUP}X = "NX" ]; then
		echo -e '\tsudo ${QEMUT} -s -S \' >> ${MF}
		echo -e '\t-M versatilepb \' >> ${MF}
		echo -e '\t-m ${RAM_SIZE}M \' >> ${MF}
		echo -e '\t-kernel ${LINUX_DIR}/${ARCH}/boot/zImage \' >> ${MF}
		[ ${HAS_BLK} = "Y" ] && echo -e '\t-device virtio-blk-device,drive=hd0 \' >> ${MF}
		[ ${HAS_BLK} = "Y" ] && echo -e '\t-drive file=${ROOT}/Freeze.img,format=raw,id=hd0 \' >> ${MF} 
		echo -e '\t-nodefaults \' >> ${MF}
		echo -e '\t-serial stdio \' >> ${MF}
		echo -e '\t-nographic \' >> ${MF}
		echo -e '\t-append "${CMDLINE}" \' >> ${MF}
		echo -e '\t-initrd ${ROOT}/BiscuitOS.img' >> ${MF}
	else
		echo '	${ROOT}/package/gdb/gdb.pl ${ROOT} ${CROSS_TOOL}' >> ${MF}
		echo -e '\tsudo ${QEMUT} -s -S \' >> ${MF}
		echo -e '\t-M vexpress-a9 \' >> ${MF}
		echo -e '\t-m ${RAM_SIZE}M \' >> ${MF}
		echo -e '\t-kernel ${LINUX_DIR}/${ARCH}/boot/zImage \' >> ${MF}
		[ ${KERNEL_DTB_USE}X != "N"X ] && echo -e '\t-dtb ${LINUX_DIR}/${ARCH}/boot/dts/vexpress-v2p-ca9.dtb \' >> ${MF}
		echo -e '\t-nodefaults \' >> ${MF}
		echo -e '\t-serial stdio \' >> ${MF}
		[ ${HAS_BLK} = "Y" ] && echo -e '\t-device virtio-blk-device,drive=hd0 \' >> ${MF}
		[ ${HAS_BLK} = "Y" ] && echo -e '\t-drive file=${ROOT}/Freeze.img,format=raw,id=hd0 \' >> ${MF} 
		echo -e '\t-nographic \' >> ${MF}
		echo -e '\t-append "${CMDLINE}" \' >> ${MF}
		echo -e '\t-initrd ${ROOT}/BiscuitOS.img' >> ${MF}
	fi
	;;
	arm64)
		echo -e '\tsudo ${QEMUT} -s -S \' >> ${MF}
		echo -e '\t-M virt \' >> ${MF}
		echo -e '\t-cpu cortex-a53 \' >> ${MF}
		echo -e '\t-smp 2 \' >> ${MF}
		echo -e '\t-m ${RAM_SIZE}M \' >> ${MF}
		echo -e '\t-kernel ${LINUX_DIR}/${ARCH}/boot/Image \' >> ${MF}
		echo -e '\t-nodefaults \' >> ${MF}
		[ ${HAS_BLK} = "Y" ] && echo -e '\t-device virtio-blk-device,drive=hd0 \' >> ${MF}
		[ ${HAS_BLK} = "Y" ] && echo -e '\t-drive file=${ROOT}/Freeze.img,format=raw,id=hd0 \' >> ${MF} 
		echo -e '\t-serial stdio \' >> ${MF}
		echo -e '\t-nographic \' >> ${MF}
		echo -e '\t-append "${CMDLINE}" \' >> ${MF}
		echo -e '\t-initrd ${ROOT}/BiscuitOS.img' >> ${MF}
	;;
esac
echo '}' >> ${MF}
echo '' >>  ${MF}
##
# Common Networking function
#
# -> Used to connect networking
echo '' >> ${MF}
echo 'do_network()' >> ${MF}
echo '{' >> ${MF}
case ${ARCH_NAME} in
	arm)
        if [ ${KERNEL_2_X_SUP}X = "NX" ]; then
		echo -e '\tsudo ${QEMUT} \' >> ${MF}
		echo -e '\t-M versatilepb \' >> ${MF}
		echo -e '\t-m ${RAM_SIZE}M \' >> ${MF}
		echo -e '\t-net tap \' >> ${MF}
		echo -e '\t-device virtio-net-device,netdev=bsnet0,mac=E0:FE:D0:3C:2E:EE \' >> ${MF}
		echo -e '\t-netdev tap,id=bsnet0,ifname=bsTap0 \' >> ${MF}
		echo -e '\t-kernel ${LINUX_DIR}/${ARCH}/boot/zImage \' >> ${MF}
		[ ${HAS_BLK} = "Y" ] && echo -e '\t-device virtio-blk-device,drive=hd0 \' >> ${MF}
		[ ${HAS_BLK} = "Y" ] && echo -e '\t-drive file=${ROOT}/Freeze.img,format=raw,id=hd0 \' >> ${MF} 
		echo -e '\t-nodefaults \' >> ${MF}
		echo -e '\t-serial stdio \' >> ${MF}
		echo -e '\t-nographic \' >> ${MF}
		echo -e '\t-append "${CMDLINE}" \' >> ${MF}
		echo -e '\t-initrd ${ROOT}/BiscuitOS.img' >> ${MF}
        else
		echo -e '\tsudo ${QEMUT} \' >> ${MF}
		echo -e '\t-M vexpress-a9 \' >> ${MF}
		echo -e '\t-m ${RAM_SIZE}M \' >> ${MF}
		echo -e '\t-net tap \' >> ${MF}
		echo -e '\t-device virtio-net-device,netdev=bsnet0,mac=E0:FE:D0:3C:2E:EE \' >> ${MF}
		echo -e '\t-netdev tap,id=bsnet0,ifname=bsTap0 \' >> ${MF}
		[ ${HAS_BLK} = "Y" ] && echo -e '\t-device virtio-blk-device,drive=hd0 \' >> ${MF}
		[ ${HAS_BLK} = "Y" ] && echo -e '\t-drive file=${ROOT}/Freeze.img,format=raw,id=hd0 \' >> ${MF} 
		echo -e '\t-kernel ${LINUX_DIR}/${ARCH}/boot/zImage \' >> ${MF}
		[ ${KERNEL_DTB_USE}X != "N"X ] && echo -e '\t-dtb ${LINUX_DIR}/${ARCH}/boot/dts/vexpress-v2p-ca9.dtb \' >> ${MF}
		echo -e '\t-nodefaults \' >> ${MF}
		echo -e '\t-serial stdio \' >> ${MF}
		echo -e '\t-nographic \' >> ${MF}
		echo -e '\t-append "${CMDLINE}" \' >> ${MF}
		echo -e '\t-initrd ${ROOT}/BiscuitOS.img' >> ${MF}
        fi
	;;
	arm64)
		echo -e '\tsudo ${QEMUT} \' >> ${MF}
		echo -e '\t-M virt \' >> ${MF}
		echo -e '\t-cpu cortex-a53 \' >> ${MF}
		echo -e '\t-smp 2 \' >> ${MF}
		echo -e '\t-m ${RAM_SIZE}M \' >> ${MF}
		echo -e '\t-net tap \' >> ${MF}
		echo -e '\t-device virtio-net-device,netdev=bsnet0,mac=E0:FE:D0:3C:2E:EE \' >> ${MF}
		echo -e '\t-netdev tap,id=bsnet0,ifname=bsTap0 \' >> ${MF}
		echo -e '\t-kernel ${LINUX_DIR}/${ARCH}/boot/Image \' >> ${MF}
		echo -e '\t-nodefaults \' >> ${MF}
		[ ${HAS_BLK} = "Y" ] && echo -e '\t-device virtio-blk-device,drive=hd0 \' >> ${MF}
		[ ${HAS_BLK} = "Y" ] && echo -e '\t-drive file=${ROOT}/Freeze.img,format=raw,id=hd0 \' >> ${MF} 
		echo -e '\t-serial stdio \' >> ${MF}
		echo -e '\t-nographic \' >> ${MF}
		echo -e '\t-append "${CMDLINE}" \' >> ${MF}
		echo -e '\t-initrd ${ROOT}/BiscuitOS.img' >> ${MF}
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
echo -e '\tgzip --best -c ${OUTPUT}/rootfs/ramdisk > ${OUTPUT}/rootfs/ramdisk.gz' >> ${MF}
echo -e '\tmkimage -n "ramdisk" -A arm -O linux -T ramdisk -C gzip \' >> ${MF}
echo -e '\t        -d ${OUTPUT}/rootfs/ramdisk.gz ${OUTPUT}/BiscuitOS.img' >> ${MF}
echo -e '\trm -rf ${OUTPUT}/rootfs/tmpfs' >> ${MF}
echo -e '\trm -rf ${OUTPUT}/rootfs/ramdisk' >> ${MF}
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
echo -e '\t"start")' >> ${MF}
echo -e '\t\t# Running BiscuitOS Simple' >> ${MF}
echo -e '\t\tdo_umount' >> ${MF}
echo -e '\t\tdo_running' >> ${MF}
echo -e '\t\t;;' >> ${MF}
echo -e '\t"pack")' >> ${MF}
echo -e '\t\t# Package BiscuitOS.img' >> ${MF}
echo -e '\t\tdo_package' >> ${MF}
echo -e '\t\t;;' >> ${MF}
echo -e '\t"debug")' >> ${MF}
echo -e '\t\t# Debugging BiscuitOS' >> ${MF}
echo -e '\t\tdo_umount' >> ${MF}
echo -e '\t\tdo_debug' >> ${MF}
echo -e '\t\t;;' >> ${MF}
echo -e '\t"net")' >> ${MF}
echo -e '\t\t# Establish Netwroking' >> ${MF}
echo -e '\t\tsudo ${NET_CFG}/bridge.sh' >> ${MF}
echo -e '\t\tsudo cp -rf ${NET_CFG}/qemu-ifup /etc' >> ${MF}
echo -e '\t\tsudo cp -rf ${NET_CFG}/qemu-ifdown /etc' >> ${MF}
echo -e '\t\tdo_umount' >> ${MF}
echo -e '\t\tdo_network' >> ${MF}
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
echo -e '\t\tdo_running' >> ${MF}
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
if [ ${UBOOT} = "yX" ]; then
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
echo "make ARCH=${ARCH_NAME} clean" >> ${MF}
case ${ARCH_NAME} in
	arm)
	if [ ${KERNEL_2_X_SUP}X = "NX" ]; then
		echo "make ARCH=${ARCH_NAME} versatile_defconfig" >> ${MF}
	else
		echo "make ARCH=${ARCH_NAME} vexpress_defconfig" >> ${MF}
	fi
	;;
	arm64)
		echo "make ARCH=${ARCH_NAME} defconfig" >> ${MF}
	;;
esac
echo '' >> ${MF}
echo "make ARCH=${ARCH_NAME} menuconfig" >> ${MF}
echo '  General setup --->' >> ${MF}
echo '        [*]Initial RAM filesystem and RAM disk (initramfs/initrd) support' >> ${MF}
echo '' >> ${MF}
echo '  Device Driver --->' >> ${MF}
echo '    [*] Block devices --->' >> ${MF}
echo '        <*> RAM block device support' >> ${MF}
echo '        (153600) Default RAM disk size' >> ${MF}
echo '  Enable the block layer --->' >> ${MF}
echo '        [*] Support for large (2TB+) block devices and files' >> ${MF}
if [ ${KERNEL_2_6_SUP} = "Y" ]; then
	echo '  Kernel Features --->' >> ${MF}
	echo '    [*] Use the ARM EABI to compile the kernel' >> ${MF}
	echo '' >> ${MF}
	echo '  File systems --->' >> ${MF}
	echo '    <*> Ext3 journalling file system support' >> ${MF}
	echo '    [*]   Ext3 extended attributes' >> ${MF}
	echo '' >> ${MF}
	echo '  -*- Enable the block layer --->' >> ${MF}
	echo '    [*] Support for large (2TB+) block devices and files' >> ${MF}
fi
echo '' >> ${MF}
case ${ARCH_NAME} in
	arm)
		echo "make ARCH=${ARCH_NAME} CROSS_COMPILE=${DEF_KERNEL_CROSS} -j8" >> ${MF}
	;;
	arm64)
		echo "make ARCH=${ARCH_NAME} CROSS_COMPILE=${DEF_KERNEL_CROSS} Image -j8" >> ${MF}
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
echo '  Busybox Settings --->' >> ${MF}
echo '    Build Options --->' >> ${MF}
echo '      [*] Build BusyBox as a static binary (no shared libs)' >> ${MF}
echo '' >> ${MF}
echo "make CROSS_COMPILE=${DEF_KERNEL_CROSS} -j8" >> ${MF}
echo '' >> ${MF}
echo "make CROSS_COMPILE=${DEF_KERNEL_CROSS} install" >> ${MF}
echo '```' >> ${MF}

##
# Running Uboot
echo '' >> ${MF}
if [ ${UBOOT} = "yX" ]; then
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
echo "./${RUNSCP_NAME} start" >> ${MF}
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
		echo "${OUTPUT}/${CROSS_TOOL}/${CROSS_TOOL}/bin/${CROSS_TOOL}-gdb -x ${OUTPUT}/package/gdb/gdb_zImage" >> ${MF}
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
		echo "${OUTPUT}/${CROSS_TOOL}/${CROSS_TOOL}/bin/${CROSS_TOOL}-gdb -x ${OUTPUT}/package/gdb/gdb_RzImage" >> ${MF}
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
		echo "${OUTPUT}/${CROSS_TOOL}/${CROSS_TOOL}/bin/${CROSS_TOOL}-gdb -x ${OUTPUT}/package/gdb/gdb_Image" >> ${MF}
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
		echo "${OUTPUT}/${CROSS_TOOL}/${CROSS_TOOL}/bin/${CROSS_TOOL}-gdb -x ${OUTPUT}/package/gdb/gdb_RImage" >> ${MF}
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
		echo "${OUTPUT}/${CROSS_TOOL}/${CROSS_TOOL}/bin/${CROSS_TOOL}-gdb ${OUTPUT}/linux/linux/vmlinux -x ${OUTPUT}/package/gdb/gdb_Kernel" >> ${MF}
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
		echo "${OUTPUT}/${CROSS_TOOL}/${CROSS_TOOL}/bin/${CROSS_TOOL}-gdb ${OUTPUT}/linux/linux/vmlinux" >> ${MF}
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
