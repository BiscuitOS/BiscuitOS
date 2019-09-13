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
KERNEL_2_6_SUP=X
UCROSS_PATH=${OUTPUT}/${UBOOT_CROSS}/${UBOOT_CROSS}
KCROSS_PATH=${OUTPUT}/${CROSS_TOOL}/${CROSS_TOOL}
QEMU_PATH=${OUTPUT}/qemu-system/qemu-system

README_NAME=README.md
RUNSCP_NAME=RunBiscuitOS.sh

##
## Architecture information
ARCH=${11%X}
ARCH_TYPE=
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

#
[ ${KERNEL_VER:0:3} = "2.6" ] && KERNEL_2_6_SUP=Y

##
# Rootfs Inforamtion
FS_TYPE=
FS_TYPE_TOOLS=

if [ ${KERNEL_2_6_SUP} = "Y" ]; then
	DEF_UBOOT_CROOS=${UCROSS_PATH}/bin/arm-none-linux-gnueabi-
	DEF_KERNEL_CROSS=${KCROSS_PATH}/bin/arm-none-linux-gnueabi-
	FS_TYPE=ext3
	FS_TYPE_TOOLS=mkfs.ext3
else
	DEF_UBOOT_CROOS=${UCROSS_PATH}/bin/${UBOOT_CROSS}-
	DEF_KERNEL_CROSS=${KCROSS_PATH}/bin/${CROSS_TOOL}-
	FS_TYPE=ext4
	FS_TYPE_TOOLS=mkfs.ext4
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
		echo -e '\t${QEMUT} \' >> ${MF}
		echo -e '\t-M versatilepb \' >> ${MF}
		echo -e '\t-m 256M \' >> ${MF}
		echo -e '\t-kernel ${LINUX_DIR}/${ARCH}/boot/zImage \' >> ${MF}
		echo -e '\t-nodefaults \' >> ${MF}
		echo -e '\t-serial stdio \' >> ${MF}
		echo -e '\t-nographic \' >> ${MF}
		echo -e '\t-append "${CMDLINE}" \' >> ${MF}
		echo -e '\t-initrd ${ROOT}/ramdisk.img' >> ${MF}
	else
		echo -e '\t${QEMUT} \' >> ${MF}
		echo -e '\t-M vexpress-a9 \' >> ${MF}
		echo -e '\t-m ${RAM_SIZE}M \' >> ${MF}
		echo -e '\t-kernel ${LINUX_DIR}/${ARCH}/boot/zImage \' >> ${MF}
		[ ${KERNEL_DTB_USE}X != "N"X ] && echo -e '\t-dtb ${LINUX_DIR}/${ARCH}/boot/dts/vexpress-v2p-ca9.dtb \' >> ${MF}
		echo -e '\t-nodefaults \' >> ${MF}
		echo -e '\t-serial stdio \' >> ${MF}
		echo -e '\t-nographic \' >> ${MF}
		echo -e '\t-append "${CMDLINE}" \' >> ${MF}
		echo -e '\t-initrd ${ROOT}/ramdisk.img' >> ${MF}
	fi
	;;
	arm64)
		echo -e '\t${QEMUT} \' >> ${MF}
		echo -e '\t-M virt \' >> ${MF}
		echo -e '\t-cpu cortex-a53 \' >> ${MF}
		echo -e '\t-smp 2 \' >> ${MF}
		echo -e '\t-m ${RAM_SIZE}M \' >> ${MF}
		echo -e '\t-kernel ${LINUX_DIR}/${ARCH}/boot/Image \' >> ${MF}
		echo -e '\t-nodefaults \' >> ${MF}
		echo -e '\t-serial stdio \' >> ${MF}
		echo -e '\t-nographic \' >> ${MF}
		echo -e '\t-append "${CMDLINE}" \' >> ${MF}
		echo -e '\t-initrd ${ROOT}/ramdisk.img' >> ${MF}
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
		echo -e '\t${QEMUT} -s -S \' >> ${MF}
		echo -e '\t-M versatilepb \' >> ${MF}
		echo -e '\t-m ${RAM_SIZE}M \' >> ${MF}
		echo -e '\t-kernel ${LINUX_DIR}/${ARCH}/boot/zImage \' >> ${MF}
		echo -e '\t-nodefaults \' >> ${MF}
		echo -e '\t-serial stdio \' >> ${MF}
		echo -e '\t-nographic \' >> ${MF}
		echo -e '\t-append "${CMDLINE}" \' >> ${MF}
		echo -e '\t-initrd ${ROOT}/ramdisk.img' >> ${MF}
	else
		echo '	${ROOT}/package/gdb/gdb.pl ${ROOT} ${CROSS_TOOL}' >> ${MF}
		echo -e '\t${QEMUT} -s -S \' >> ${MF}
		echo -e '\t-M vexpress-a9 \' >> ${MF}
		echo -e '\t-m ${RAM_SIZE}M \' >> ${MF}
		echo -e '\t-kernel ${LINUX_DIR}/${ARCH}/boot/zImage \' >> ${MF}
		[ ${KERNEL_DTB_USE}X != "N"X ] && echo -e '\t-dtb ${LINUX_DIR}/${ARCH}/boot/dts/vexpress-v2p-ca9.dtb \' >> ${MF}
		echo -e '\t-nodefaults \' >> ${MF}
		echo -e '\t-serial stdio \' >> ${MF}
		echo -e '\t-nographic \' >> ${MF}
		echo -e '\t-append "${CMDLINE}" \' >> ${MF}
		echo -e '\t-initrd ${ROOT}/ramdisk.img' >> ${MF}
	fi
	;;
	arm64)
		echo -e '\t${QEMUT} -s -S \' >> ${MF}
		echo -e '\t-M virt \' >> ${MF}
		echo -e '\t-cpu cortex-a53 \' >> ${MF}
		echo -e '\t-smp 2 \' >> ${MF}
		echo -e '\t-m ${RAM_SIZE}M \' >> ${MF}
		echo -e '\t-kernel ${LINUX_DIR}/${ARCH}/boot/Image \' >> ${MF}
		echo -e '\t-nodefaults \' >> ${MF}
		echo -e '\t-serial stdio \' >> ${MF}
		echo -e '\t-nographic \' >> ${MF}
		echo -e '\t-append "${CMDLINE}" \' >> ${MF}
		echo -e '\t-initrd ${ROOT}/ramdisk.img' >> ${MF}
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
		echo -e '\t${QEMUT} \' >> ${MF}
		echo -e '\t-M versatilepb \' >> ${MF}
		echo -e '\t-m ${RAM_SIZE}M \' >> ${MF}
		echo -e '\t-net tap \' >> ${MF}
		echo -e '\t-device virtio-net-device,netdev=bsnet0,mac=E0:FE:D0:3C:2E:EE \' >> ${MF}
		echo -e '\t-netdev tap,id=bsnet0,ifname=bsTap0 \' >> ${MF}
		echo -e '\t-kernel ${LINUX_DIR}/${ARCH}/boot/zImage \' >> ${MF}
		echo -e '\t-nodefaults \' >> ${MF}
		echo -e '\t-serial stdio \' >> ${MF}
		echo -e '\t-nographic \' >> ${MF}
		echo -e '\t-append "${CMDLINE}" \' >> ${MF}
		echo -e '\t-initrd ${ROOT}/ramdisk.img' >> ${MF}
        else
		echo -e '\t${QEMUT} \' >> ${MF}
		echo -e '\t-M vexpress-a9 \' >> ${MF}
		echo -e '\t-m ${RAM_SIZE}M \' >> ${MF}
		echo -e '\t-net tap \' >> ${MF}
		echo -e '\t-device virtio-net-device,netdev=bsnet0,mac=E0:FE:D0:3C:2E:EE \' >> ${MF}
		echo -e '\t-netdev tap,id=bsnet0,ifname=bsTap0 \' >> ${MF}
		echo -e '\t-kernel ${LINUX_DIR}/${ARCH}/boot/zImage \' >> ${MF}
		[ ${KERNEL_DTB_USE}X != "N"X ] && echo -e '\t-dtb ${LINUX_DIR}/${ARCH}/boot/dts/vexpress-v2p-ca9.dtb \' >> ${MF}
		echo -e '\t-nodefaults \' >> ${MF}
		echo -e '\t-serial stdio \' >> ${MF}
		echo -e '\t-nographic \' >> ${MF}
		echo -e '\t-append "${CMDLINE}" \' >> ${MF}
		echo -e '\t-initrd ${ROOT}/ramdisk.img' >> ${MF}
        fi
	;;
	arm64)
		echo -e '\t${QEMUT} \' >> ${MF}
		echo -e '\t-M virt \' >> ${MF}
		echo -e '\t-cpu cortex-a53 \' >> ${MF}
		echo -e '\t-smp 2 \' >> ${MF}
		echo -e '\t-m ${RAM_SIZE}M \' >> ${MF}
		echo -e '\t-net tap \' >> ${MF}
		echo -e '\t-device virtio-net-device,netdev=bsnet0,mac=E0:FE:D0:3C:2E:EE \' >> ${MF}
		echo -e '\t-netdev tap,id=bsnet0,ifname=bsTap0 \' >> ${MF}
		echo -e '\t-kernel ${LINUX_DIR}/${ARCH}/boot/Image \' >> ${MF}
		echo -e '\t-nodefaults \' >> ${MF}
		echo -e '\t-serial stdio \' >> ${MF}
		echo -e '\t-nographic \' >> ${MF}
		echo -e '\t-append "${CMDLINE}" \' >> ${MF}
		echo -e '\t-initrd ${ROOT}/ramdisk.img' >> ${MF}
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
echo -e '\t        -d ${OUTPUT}/rootfs/ramdisk.gz ${OUTPUT}/ramdisk.img' >> ${MF}
echo -e '\trm -rf ${OUTPUT}/rootfs/tmpfs' >> ${MF}
echo -e '\trm -rf ${OUTPUT}/rootfs/ramdisk' >> ${MF}
echo '}' >> ${MF}
echo '' >> ${MF}

## 
# Command parse
#
echo '# Lunching Base Linux' >> ${MF}
echo '[ X$1 = "Xstart" ] && do_running' >> ${MF}
echo '' >> ${MF}
echo '# Packing Image' >> ${MF}
echo '[ X$1 = "Xpack" ] && do_package' >> ${MF}
echo '' >> ${MF}
echo '# Launching Debug function' >> ${MF}
echo '[ X$1 = "Xdebug" ] && do_debug' >> ${MF}
if [ ${UBOOT} = "yX" ]; then
	echo '' >> ${MF}
	echo '[ X$1 = "Xuboot" ] && do_uboot' >> ${MF}
fi
echo '' >> ${MF}
echo '# Lunching Networking' >> ${MF}
echo 'if [ X$1 = "Xnet" ]; then' >> ${MF}
echo -e '\t# Establish Netwroking' >> ${MF}
echo -e '\t${NET_CFG}/bridge.sh' >> ${MF}
echo -e '\tcp -rf ${NET_CFG}/qemu-ifup /etc' >> ${MF}
echo -e '\tcp -rf ${NET_CFG}/qemu-ifdown /etc' >> ${MF}
echo -e '\tdo_network' >> ${MF}
echo 'fi' >> ${MF}
chmod 755 ${MF}

## Auto create README.md
MF=${OUTPUT}/${README_NAME}
echo "Linux ${PROJECT_NAME} Usermanual" >> ${MF}
echo '--------------------------------' >> ${MF}
echo '' > ${MF}
[ -f ${MF} ] && rm -rf ${MF}

##
# Uboot Configure and Compile
if [ ${UBOOT} = "yX" ]; then
	echo '# Build Uboot' >> ${MF}
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
echo '# Build Linux Kernel' >> ${MF}
echo '' >> ${MF}
echo '```' >> ${MF}
echo "cd ${OUTPUT}/linux/linux"  >> ${MF}
echo "make ARCH=${ARCH_TYPE} clean" >> ${MF}
case ${ARCH_NAME} in
	arm)
	if [ ${KERNEL_2_X_SUP}X = "NX" ]; then
		echo "make ARCH=${ARCH_TYPE} versatile_defconfig" >> ${MF}
	else
		echo "make ARCH=${ARCH_TYPE} vexpress_defconfig" >> ${MF}
	fi
	;;
	arm64)
		echo "make ARCH=${ARCH_TYPE} defconfig" >> ${MF}
	;;
esac
echo '' >> ${MF}
echo "make ARCH=${ARCH_TYPE} menuconfig" >> ${MF}
echo '  General setup --->' >> ${MF}
echo '    ---> [*]Initial RAM filesystem and RAM disk (initramfs/initrd) support' >> ${MF}
echo '' >> ${MF}
echo '  Device Driver --->' >> ${MF}
echo '    [*] Block devices --->' >> ${MF}
echo '        <*> RAM block device support' >> ${MF}
echo '        (153600) Default RAM disk size' >> ${MF}
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
		echo "make ARCH=${ARCH_TYPE} CROSS_COMPILE=${DEF_KERNEL_CROSS} -j8" >> ${MF}
	;;
	arm64)
		echo "make ARCH=${ARCH_TYPE} CROSS_COMPILE=${DEF_KERNEL_CROSS} Image -j8" >> ${MF}
esac
echo '```' >> ${MF}
echo '' >> ${MF}

##
# Busybox Configure and Compile
echo '# Build Busybox' >> ${MF}
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
	echo '' >> ${MF}
	echo '# Boot from Uboot' >> ${MF}
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
echo '# Re-Build Rootfs' >> ${MF}
echo '' >> ${MF}
echo '```' >> ${MF}

##
# Re-pack Rootfs
echo "cd ${OUTPUT}" >> ${MF}
echo "./${RUNSCP_NAME} pack" >> ${MF}
echo '```' >> ${MF}
echo '' >> ${MF}

##
# Lanuch a Linux Disto
echo '' >> ${MF}
echo '# Running Linux on Qemu' >> ${MF}
echo '' >> ${MF}
echo '```' >> ${MF}
echo "cd ${OUTPUT}" >> ${MF}
echo "./${RUNSCP_NAME} start" >> ${MF}
echo '```' >> ${MF}
echo '' >> ${MF}
case ${ARCH_NAME} in
	arm)
		echo '# Debugging zImage before Relocated' >> ${MF}
		echo '' >> ${MF}
		echo '### First Terminal' >> ${MF}
		echo '' >> ${MF}
		echo '```' >> ${MF}
		echo "cd ${OUTPUT}" >> ${MF}
		echo "./${RUNSCP_NAME} debug" >> ${MF}
		echo '```' >> ${MF}
		echo '' >> ${MF}
		echo '### Second Terminal' >> ${MF}
		echo '' >> ${MF}
		echo '```' >> ${MF}
		echo "${OUTPUT}/${CROSS_TOOL}/${CROSS_TOOL}/bin/${CROSS_TOOL}-gdb -x ${OUTPUT}/package/gdb/gdb_zImage" >> ${MF}
		echo '' >> ${MF}
		echo '(gdb) b XXX_bk' >> ${MF}
		echo '(gdb) c' >> ${MF}
		echo '(gdb) info reg' >> ${MF}
		echo '```' >> ${MF}
		echo '' >> ${MF}
		echo '# Debugging zImage After Relocated' >> ${MF}
		echo '' >> ${MF}
		echo '### First Terminal' >> ${MF}
		echo '' >> ${MF}
		echo '```' >> ${MF}
		echo "cd ${OUTPUT}" >> ${MF}
		echo "./${RUNSCP_NAME} debug" >> ${MF}
		echo '```' >> ${MF}
		echo '' >> ${MF}
		echo '### Second Terminal' >> ${MF}
		echo '' >> ${MF}
		echo '```' >> ${MF}
		echo "${OUTPUT}/${CROSS_TOOL}/${CROSS_TOOL}/bin/${CROSS_TOOL}-gdb -x ${OUTPUT}/package/gdb/gdb_RzImage" >> ${MF}
		echo '' >> ${MF}
		echo '(gdb) b XXX_bk' >> ${MF}
		echo '(gdb) c' >> ${MF}
		echo '(gdb) info reg' >> ${MF}
		echo '```' >> ${MF}
		echo '' >> ${MF}
		echo '# Debugging kernel MMU OFF before start_kernel' >> ${MF}
		echo '' >> ${MF}
		echo '### First Terminal' >> ${MF}
		echo '' >> ${MF}
		echo '```' >> ${MF}
		echo "cd ${OUTPUT}" >> ${MF}
		echo "./${RUNSCP_NAME} debug" >> ${MF}
		echo '```' >> ${MF}
		echo '' >> ${MF}
		echo '### Second Terminal' >> ${MF}
		echo '' >> ${MF}
		echo '```' >> ${MF}
		echo "${OUTPUT}/${CROSS_TOOL}/${CROSS_TOOL}/bin/${CROSS_TOOL}-gdb -x ${OUTPUT}/package/gdb/gdb_Image" >> ${MF}
		echo '' >> ${MF}
		echo '(gdb) b XXX_bk' >> ${MF}
		echo '(gdb) c' >> ${MF}
		echo '(gdb) info reg' >> ${MF}
		echo '```' >> ${MF}
		echo '' >> ${MF}
		echo '# Debugging kernel MMU ON before start_kernel' >> ${MF}
		echo '' >> ${MF}
		echo '### First Terminal' >> ${MF}
		echo '' >> ${MF}
		echo '```' >> ${MF}
		echo "cd ${OUTPUT}" >> ${MF}
		echo "./${RUNSCP_NAME} debug" >> ${MF}
		echo '```' >> ${MF}
		echo '' >> ${MF}
		echo '### Second Terminal' >> ${MF}
		echo '' >> ${MF}
		echo '```' >> ${MF}
		echo "${OUTPUT}/${CROSS_TOOL}/${CROSS_TOOL}/bin/${CROSS_TOOL}-gdb -x ${OUTPUT}/package/gdb/gdb_RImage" >> ${MF}
		echo '' >> ${MF}
		echo '(gdb) b XXX_bk' >> ${MF}
		echo '(gdb) c' >> ${MF}
		echo '(gdb) info reg' >> ${MF}
		echo '```' >> ${MF}
		echo '' >> ${MF}
		echo '# Debugging kernel after start_kernel' >> ${MF}
		echo '' >> ${MF}
		echo '### First Terminal' >> ${MF}
		echo '' >> ${MF}
		echo '```' >> ${MF}
		echo "cd ${OUTPUT}" >> ${MF}
		echo "./${RUNSCP_NAME} debug" >> ${MF}
		echo '```' >> ${MF}
		echo '' >> ${MF}
		echo '### Second Terminal' >> ${MF}
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
		echo '# Debugging Linux Kernel' >> ${MF}
		echo '' >> ${MF}
		echo '### First Terminal' >> ${MF}
		echo '' >> ${MF}
		echo '```' >> ${MF}
		echo "cd ${OUTPUT}" >> ${MF}
		echo "./${RUNSCP_NAME} debug" >> ${MF}
		echo '```' >> ${MF}
		echo '' >> ${MF}
		echo '### Second Terminal' >> ${MF}
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
