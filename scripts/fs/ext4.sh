#/bin/bash

set -e
# Establish Rootfs.
#
# (C) 2019.01.15 BiscuitOS <buddy.zhang@aliyun.com>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2 as
# published by the Free Software Foundation.

ROOT=${1%X}
ROOTFS_NAME=${2%X}
ROOTFS_VERSION=${3%X}
PROJ_NAME=${9%X}
CROSS_TOOL=${12%X}
OUTPUT=${ROOT}/output/${PROJ_NAME}
BUSYBOX=${OUTPUT}/busybox/busybox
GCC=${OUTPUT}/${CROSS_TOOL}/${CROSS_TOOL}
UBOOT=${15}
UBOOT_CROSS=${16%X}
KERNEL_VER=${7%X}
KERN_DTB=
DMARCH=

# detect kernel version
KER_MAJ=`echo "${KERNEL_VER}"| awk -F '.' '{print $1"."$2}'`
if [ ${KER_MAJ}X = "2.6X" -o ${KER_MAJ}X = "2.4X" -o ${KER_MAJ}X = "3.0X" -o \
     ${KER_MAJ}X = "3.1X" -o ${KER_MAJ}X = "3.2X" -o ${KER_MAJ}X = "3.3X" -o \
     ${KER_MAJ}X = "3.4X" ]; then
	KERN_DTB=N
fi
if [ ${KER_MAJ}X = "2.6X" -o ${KER_MAJ}X = "2.4X" ]; then
	DMARCH=N	
fi

rm -rf ${OUTPUT}/rootfs/
mkdir -p ${OUTPUT}/rootfs/${ROOTFS_NAME}
cp ${BUSYBOX}/_install/*  ${OUTPUT}/rootfs/${ROOTFS_NAME} -raf 
mkdir -p ${OUTPUT}/rootfs/${ROOTFS_NAME}/proc/
mkdir -p ${OUTPUT}/rootfs/${ROOTFS_NAME}/sys/
mkdir -p ${OUTPUT}/rootfs/${ROOTFS_NAME}/tmp/
mkdir -p ${OUTPUT}/rootfs/${ROOTFS_NAME}/root/
mkdir -p ${OUTPUT}/rootfs/${ROOTFS_NAME}/var/
mkdir -p ${OUTPUT}/rootfs/${ROOTFS_NAME}/mnt/
mkdir -p ${OUTPUT}/rootfs/${ROOTFS_NAME}/etc/init.d

### rcS
RC=${OUTPUT}/rootfs/${ROOTFS_NAME}/etc/init.d/rcS
## Auto create rcS file
echo 'mkdir -p /proc' >> ${RC}
echo 'mkdir -p /tmp' >> ${RC}
echo 'mkdir -p /sys' >> ${RC}
echo 'mkdir -p /mnt' >> ${RC}
echo '/bin/mount -a' >> ${RC}
echo 'mkdir -p /dev/pts' >> ${RC}
echo 'mount -t devpts devpts /dev/pts' >> ${RC}
echo 'echo /sbin/mdev > /proc/sys/kernel/hotplug' >> ${RC}
echo 'mdev -s' >> ${RC}
echo '' >> ${RC}
echo 'echo " ____  _                _ _    ___  ____  "' >> ${RC}
echo 'echo "| __ )(_)___  ___ _   _(_) |_ / _ \/ ___| "' >> ${RC}
echo 'echo "|  _ \| / __|/ __| | | | | __| | | \___ \ "' >> ${RC}
echo 'echo "| |_) | \__ \ (__| |_| | | |_| |_| |___) |"' >> ${RC}
echo 'echo "|____/|_|___/\___|\__,_|_|\__|\___/|____/ "' >> ${RC}
echo '' >> ${RC}
echo 'echo "Welcome to BiscuitOS"' >> ${RC}
chmod 755 ${RC}

### fstab
RC=${OUTPUT}/rootfs/${ROOTFS_NAME}/etc/fstab
## Auto create fstab file
echo 'proc /proc proc defaults 0 0' >> ${RC}
echo 'tmpfs /tmp tmpfs defaults 0 0' >> ${RC}
echo 'sysfs /sys sysfs defaults 0 0' >> ${RC}
echo 'tmpfs /dev tmpfs defaults 0 0' >> ${RC}
echo 'debugfs /sys/kernel/debug debugfs defaults 0 0' >> ${RC}
echo '' >> ${RC}
chmod 664 ${RC}

### inittab
RC=${OUTPUT}/rootfs/${ROOTFS_NAME}/etc/inittab
## Auto create initab file
echo '::sysinit:/etc/init.d/rcS' >> ${RC}
echo '::respawn:-/bin/sh' >> ${RC}
echo '::askfirst:-/bin/sh' >> ${RC}
echo '::ctrlaltdel:/bin/umount -a -r' >> ${RC}

mkdir -p ${OUTPUT}/rootfs/${ROOTFS_NAME}/lib
if [ -d ${GCC}/${CROSS_TOOL}/libc/lib/${CROSS_TOOL} ]; then
	cp -arf ${GCC}/${CROSS_TOOL}/libc/lib/${CROSS_TOOL}/* ${OUTPUT}/rootfs/${ROOTFS_NAME}/lib/
else
	cp -arf ${GCC}/${CROSS_TOOL}/libc/lib/* ${OUTPUT}/rootfs/${ROOTFS_NAME}/lib/
fi
rm -rf ${OUTPUT}/rootfs/${ROOTFS_NAME}/lib/*.a
#${GCC}/bin/${CROSS_TOOL}-strip ${OUTPUT}/rootfs/${ROOTFS_NAME}/lib/*.so > /dev/null 2>&1
mkdir -p ${OUTPUT}/rootfs/${ROOTFS_NAME}/dev/
sudo mknod ${OUTPUT}/rootfs/${ROOTFS_NAME}/dev/tty1 c 4 1
sudo mknod ${OUTPUT}/rootfs/${ROOTFS_NAME}/dev/tty2 c 4 2
sudo mknod ${OUTPUT}/rootfs/${ROOTFS_NAME}/dev/tty3 c 4 3
sudo mknod ${OUTPUT}/rootfs/${ROOTFS_NAME}/dev/tty4 c 4 4
sudo mknod ${OUTPUT}/rootfs/${ROOTFS_NAME}/dev/console c 5 1
sudo mknod ${OUTPUT}/rootfs/${ROOTFS_NAME}/dev/null c 1 3
dd if=/dev/zero of=${OUTPUT}/rootfs/ramdisk bs=1M count=150
mkfs.ext4 -F ${OUTPUT}/rootfs/ramdisk
mkdir -p ${OUTPUT}/rootfs/tmpfs
sudo mount -t ext4 ${OUTPUT}/rootfs/ramdisk ${OUTPUT}/rootfs/tmpfs/ -o loop
sudo cp -raf ${OUTPUT}/rootfs/${ROOTFS_NAME}/*  ${OUTPUT}/rootfs/tmpfs/
sync
sudo umount ${OUTPUT}/rootfs/tmpfs
gzip --best -c ${OUTPUT}/rootfs/ramdisk > ${OUTPUT}/rootfs/ramdisk.gz
mkimage -n "ramdisk" -A arm -O linux -T ramdisk -C gzip -d ${OUTPUT}/rootfs/ramdisk.gz ${OUTPUT}/ramdisk.img
rm -rf ${OUTPUT}/rootfs/tmpfs
rm -rf ${OUTPUT}/rootfs/ramdisk
if [ -d ${OUTPUT}/rootfs/rootfs ]; then
	rm -rf ${OUTPUT}/rootfs/rootfs
fi
ln -s ${OUTPUT}/rootfs/${ROOTFS_NAME} ${OUTPUT}/rootfs/rootfs

## Debug Stuff
if [ -d ${OUTPUT}/package/gdb ]; then
	rm -rf ${OUTPUT}/package/gdb
fi
mkdir -p ${OUTPUT}/package/gdb
MF=${OUTPUT}/package/gdb/gdb_zImage
echo '# Debug zImage before relocated zImage' >> ${MF}
echo '#' >> ${MF}
echo '# (C) 2019.04.11 BuddyZhang1 <buddy.zhang@aliyun.com>' >> ${MF}
echo '#' >> ${MF}
echo '# This program is free software; you can redistribute it and/or modify' >> ${MF}
echo '# it under the terms of the GNU General Public License version 2 as' >> ${MF}
echo '# published by the Free Software Foundation.' >> ${MF}
echo '' >> ${MF}
echo '# Remote to gdb' >> ${MF}
echo '#' >> ${MF}
echo 'target remote :1234' >> ${MF}
echo '' >> ${MF}
echo '# Reload vmlinux for zImage' >> ${MF}
echo '#' >> ${MF}
echo "add-symbol-file ${OUTPUT}/linux/linux/arch/arm/boot/compressed/vmlinux 0x60010000" >> ${MF}

MF=${OUTPUT}/package/gdb/gdb_RzImage
echo '# Debug zImage after relocated zImage' >> ${MF}
echo '#' >> ${MF}
echo '# (C) 2019.04.15 BuddyZhang1 <buddy.zhang@aliyun.com>' >> ${MF}
echo '#' >> ${MF}
echo '# This program is free software; you can redistribute it and/or modify' >> ${MF}
echo '# it under the terms of the GNU General Public License version 2 as' >> ${MF}
echo '# published by the Free Software Foundation.' >> ${MF}
echo '' >> ${MF}
echo '# Remote to gdb' >> ${MF}
echo '#' >> ${MF}
echo 'target remote :1234' >> ${MF}
echo '' >> ${MF}
echo '# Reload vmlinux for zImage' >> ${MF}
echo '#' >> ${MF}

# gdb pl
if [ ! -f ${OUTPUT}/package/gdb/gdb.pl ]; then
	cp ${ROOT}/scripts/package/gdb.pl ${OUTPUT}/package/gdb/
fi

## Auto create Running scripts
MF=${OUTPUT}/RunQemuKernel.sh
if [ -f ${MF} ]; then
	rm -rf ${MF}
fi
ARCH=${11%X}
ARCH_TYPE=
if [ ${ARCH}X = "1X" ]; then
	QEMU=${OUTPUT}/qemu-system/qemu-system/x86_64-softmmu/qemu-system-x86_64
	ARCH_TYPE=x86
elif [ ${ARCH}X = "2X" ]; then
	QEMU=${OUTPUT}/qemu-system/qemu-system/arm-softmmu/qemu-system-arm
	ARCH_TYPE=arm
elif [ ${ARCH}X = "3X" ]; then
	QEMU=${OUTPUT}/qemu-system/qemu-system/aarch64-softmmu/qemu-system-aarch64
	ARCH_TYPE=arm64
fi

echo '#!/bin/bash' >> ${MF}
echo '' >> ${MF}
echo '# Build system.' >> ${MF}
echo '#' >> ${MF}
echo '# (C) 2019.01.14 BiscuitOS <buddy.zhang@aliyun.com>' >> ${MF}
echo '#' >> ${MF}
echo '# This program is free software; you can redistribute it and/or modify' >> ${MF}
echo '# it under the terms of the GNU General Public License version 2 as' >> ${MF}
echo '# published by the Free Software Foundation.' >> ${MF}
echo '' >> ${MF}
echo "ROOT=${OUTPUT}" >> ${MF}
echo "QEMUT=${QEMU}" >> ${MF}
echo "ARCH=${ARCH_TYPE}" >> ${MF}
echo "BUSYBOX=${BUSYBOX}" >> ${MF}
echo "OUTPUT=${OUTPUT}" >> ${MF}
echo "ROOTFS_NAME=${ROOTFS_NAME}" >> ${MF}
echo "CROSS_TOOL=${CROSS_TOOL}" >> ${MF}
if [ ${UBOOT} = "yX" ]; then
	echo "UBOOT=${OUTPUT}/u-boot/u-boot" >> ${MF}
	echo '' >> ${MF}
	echo 'do_uboot()' >> ${MF}
	echo '{' >> ${MF}
	echo '	${QEMUT} -M vexpress-a9 -kernel ${UBOOT}/u-boot -m 512 -nographic' >> ${MF}
	echo '}' >> ${MF}
fi
echo '' >> ${MF}
echo 'do_running()' >> ${MF}
echo '{' >> ${MF}
if [ ${ARCH}X = "2X" ]; then
	if [ ${DMARCH}X = "NX" ]; then
		echo '	${QEMUT} -M versatilepb -m 256M -kernel ${ROOT}/linux/linux/arch/${ARCH}/boot/zImage -nodefaults -serial stdio -nographic -append "earlycon root=/dev/ram0 rw rootfstype=ext4 console=ttyAMA0 init=/linuxrc loglevel=8" -initrd ${ROOT}/ramdisk.img' >> ${MF}
	else
		echo '	${QEMUT} -M vexpress-a9 -m 512M -kernel ${ROOT}/linux/linux/arch/${ARCH}/boot/zImage -dtb ${ROOT}/linux/linux/arch/${ARCH}/boot/dts/vexpress-v2p-ca9.dtb -nodefaults -serial stdio -nographic -append "earlycon root=/dev/ram0 rw rootfstype=ext4 console=ttyAMA0 init=/linuxrc loglevel=8" -initrd ${ROOT}/ramdisk.img' >> ${MF}
	fi
elif [ ${ARCH}X = "3X" ]; then
	echo '	${QEMUT} -M virt -cpu cortex-a53 -smp 2 -m 1024M -kernel ${ROOT}/linux/linux/arch/${ARCH}/boot/Image -nodefaults -serial stdio -nographic -append "earlycon root=/dev/ram0 rw rootfstype=ext4 console=ttyAMA0 init=/linuxrc loglevel=8" -initrd ${ROOT}/ramdisk.img' >> ${MF}
fi
echo '}' >> ${MF}
echo '' >> ${MF}
echo 'do_debug()' >> ${MF}
echo '{' >> ${MF}
if [ ${ARCH}X = "2X" ]; then
	if [ ${DMARCH}X = "NX" ]; then
		echo '	${QEMUT} -s -S -M versatilepb -m 256M -kernel ${ROOT}/linux/linux/arch/${ARCH}/boot/zImage -nodefaults -serial stdio -nographic -append "earlycon root=/dev/ram0 rw rootfstype=ext4 console=ttyAMA0 init=/linuxrc loglevel=8" -initrd ${ROOT}/ramdisk.img' >> ${MF}
	else
		echo '	RzImage_addr=`${ROOT}/package/gdb/gdb.pl ${ROOT} ${CROSS_TOOL}`' >> ${MF}
		echo "	echo \"add-symbol-file \${ROOT}/linux/linux/arch/arm/boot/compressed/vmlinux \${RzImage_addr}\" >> \${ROOT}/package/gdb/gdb_RzImage" >> ${MF}

		echo '	${QEMUT} -s -S -M vexpress-a9 -m 512M -kernel ${ROOT}/linux/linux/arch/${ARCH}/boot/zImage -dtb ${ROOT}/linux/linux/arch/${ARCH}/boot/dts/vexpress-v2p-ca9.dtb -nodefaults -serial stdio -nographic -append "earlycon root=/dev/ram0 rw rootfstype=ext4 console=ttyAMA0 init=/linuxrc loglevel=8" -initrd ${ROOT}/ramdisk.img' >> ${MF}
	fi
elif [ ${ARCH}X = "3X" ]; then
	echo '	${QEMUT} -s -S -M virt -cpu cortex-a53 -smp 2 -m 1024M -kernel ${ROOT}/linux/linux/arch/${ARCH}/boot/Image -nodefaults -serial stdio -nographic -append "earlycon root=/dev/ram0 rw rootfstype=ext4 console=ttyAMA0 init=/linuxrc loglevel=8" -initrd ${ROOT}/ramdisk.img' >> ${MF}
fi
echo '}' >> ${MF}
echo '' >>  ${MF}
echo '' >>  ${MF}
echo 'do_package()' >>  ${MF}
echo '{' >> ${MF}
echo '	cp ${BUSYBOX}/_install/*  ${OUTPUT}/rootfs/${ROOTFS_NAME} -raf' >> ${MF}
echo '	dd if=/dev/zero of=${OUTPUT}/rootfs/ramdisk bs=1M count=150' >> ${MF}
echo '	mkfs.ext4 -F ${OUTPUT}/rootfs/ramdisk' >> ${MF}
echo '	mkdir -p ${OUTPUT}/rootfs/tmpfs' >> ${MF}
echo '	sudo mount -t ext4 ${OUTPUT}/rootfs/ramdisk ${OUTPUT}/rootfs/tmpfs/ -o loop' >> ${MF}
echo '	sudo cp -raf ${OUTPUT}/rootfs/${ROOTFS_NAME}/*  ${OUTPUT}/rootfs/tmpfs/' >> ${MF}
echo '	sync' >> ${MF}
echo '	sudo umount ${OUTPUT}/rootfs/tmpfs' >> ${MF}
echo '	gzip --best -c ${OUTPUT}/rootfs/ramdisk > ${OUTPUT}/rootfs/ramdisk.gz' >> ${MF}
echo '	mkimage -n "ramdisk" -A arm -O linux -T ramdisk -C gzip -d ${OUTPUT}/rootfs/ramdisk.gz ${OUTPUT}/ramdisk.img' >> ${MF}
echo '	rm -rf ${OUTPUT}/rootfs/tmpfs' >> ${MF}
echo '	rm -rf ${OUTPUT}/rootfs/ramdisk' >> ${MF}
echo '}' >> ${MF}
echo '' >> ${MF}
echo '# Running Kernel' >> ${MF}
echo 'if [ X$1 = "Xstart" ]; then' >> ${MF}
echo '  do_running' >> ${MF}
echo 'fi' >> ${MF}
echo '' >> ${MF}
echo 'if [ X$1 = "Xpack" ]; then' >> ${MF}
echo '  do_package' >> ${MF}
echo 'fi' >> ${MF}
echo '' >> ${MF}
echo 'if [ X$1 = "Xdebug" ]; then' >> ${MF}
echo '  do_debug' >> ${MF}
echo 'fi' >> ${MF}
if [ ${UBOOT} = "yX" ]; then
	echo '' >> ${MF}
	echo 'if [ X$1 = "Xuboot" ]; then' >> ${MF}
	echo '  do_uboot' >> ${MF}
	echo 'fi' >> ${MF}
fi
chmod 755 ${MF}

## Auto create README.md
MF=${OUTPUT}/README.md
echo "Linux ${PROJ_NAME} Usermanual" >> ${MF}
echo '--------------------------------' >> ${MF}
echo '' > ${MF}
if [ -f ${MF} ]; then
	rm -rf ${MF}
fi

if [ ${UBOOT} = "yX" ]; then
	echo '# Build Uboot' >> ${MF}
	echo '' >> ${MF}
	echo '```' >> ${MF}
	echo "cd ${OUTPUT}/u-boot/u-boot/" >> ${MF}
	echo "make ARCH=arm clean" >> ${MF}
	echo "make ARCH=arm vexpress_ca9x4_defconfig" >> ${MF}
	echo "make ARCH=arm CROSS_COMPILE=${OUTPUT}/${UBOOT_CROSS}/${UBOOT_CROSS}/bin/${UBOOT_CROSS}- -j8" >> ${MF}
	echo '```' >> ${MF}
	echo '' >> ${MF}
fi
echo '# Build Linux Kernel' >> ${MF}
echo '' >> ${MF}
echo '```' >> ${MF}
echo "cd ${OUTPUT}/linux/linux"  >> ${MF}
echo "make ARCH=${ARCH_TYPE} clean" >> ${MF}
if [ ${ARCH}X = "2X" ]; then
	if [ ${DMARCH}X = "NX" ]; then
		echo "make ARCH=${ARCH_TYPE} versatile_defconfig" >> ${MF}
	else
		echo "make ARCH=${ARCH_TYPE} vexpress_defconfig" >> ${MF}
	fi
elif [ ${ARCH}X = "3X" ]; then
	echo "make ARCH=${ARCH_TYPE} defconfig" >> ${MF}
fi
echo '' >> ${MF}
echo "make ARCH=${ARCH_TYPE} menuconfig" >> ${MF}
echo '  General setup --->' >> ${MF}
echo '    ---> [*]Initial RAM filesystem and RAM disk (initramfs/initrd) support' >> ${MF}
echo '' >> ${MF}
echo '  Device Driver --->' >> ${MF}
echo '    [*] Block devices --->' >> ${MF}
echo '        <*> RAM block device support' >> ${MF}
echo '        (153600) Default RAM disk size' >> ${MF}
echo '' >> ${MF}
if [ ${ARCH}X = "2X" ]; then
	echo "make ARCH=${ARCH_TYPE} CROSS_COMPILE=${OUTPUT}/${CROSS_TOOL}/${CROSS_TOOL}/bin/${CROSS_TOOL}- -j8" >> ${MF}
	if [ ${KERN_DTB}X = "NX" ]; then
		echo "" >> ${MF}
	else
		echo "make ARCH=${ARCH_TYPE} CROSS_COMPILE=${OUTPUT}/${CROSS_TOOL}/${CROSS_TOOL}/bin/${CROSS_TOOL}- dtbs" >> ${MF}
	fi
elif [ ${ARCH}X = "3X" ]; then
	echo "make ARCH=${ARCH_TYPE} CROSS_COMPILE=${OUTPUT}/${CROSS_TOOL}/${CROSS_TOOL}/bin/${CROSS_TOOL}- Image -j8" >> ${MF}
fi
echo '```' >> ${MF}
echo '' >> ${MF}
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
echo "make CROSS_COMPILE=${OUTPUT}/${CROSS_TOOL}/${CROSS_TOOL}/bin/${CROSS_TOOL}- -j8" >> ${MF}
echo '' >> ${MF}
echo "make CROSS_COMPILE=${OUTPUT}/${CROSS_TOOL}/${CROSS_TOOL}/bin/${CROSS_TOOL}- install" >> ${MF}
echo '```' >> ${MF}
echo '' >> ${MF}
if [ ${UBOOT} = "yX" ]; then
	echo '' >> ${MF}
	echo '# Boot from Uboot' >> ${MF}
	echo '' >> ${MF}
	echo '```' >> ${MF}
	echo "cd ${OUTPUT}" >> ${MF}
	echo './RunQemuKernel.sh uboot' >> ${MF}
	echo '```' >> ${MF}
	echo '' >> ${MF}
fi
echo '' >> ${MF}
echo '# Re-Build Rootfs' >> ${MF}
echo '' >> ${MF}
echo '```' >> ${MF}
echo "cd ${OUTPUT}" >> ${MF}
echo './RunQemuKernel.sh pack' >> ${MF}
echo '```' >> ${MF}
echo '' >> ${MF}
echo '' >> ${MF}
echo '# Running Linux on Qemu' >> ${MF}
echo '' >> ${MF}
echo '```' >> ${MF}
echo "cd ${OUTPUT}" >> ${MF}
echo './RunQemuKernel.sh start' >> ${MF}
echo '```' >> ${MF}
echo '' >> ${MF}
echo '# Debugging Linux Kernel' >> ${MF}
echo '' >> ${MF}
echo '### First Terminal' >> ${MF}
echo '' >> ${MF}
echo '```' >> ${MF}
echo "cd ${OUTPUT}" >> ${MF}
echo './RunQemuKernel.sh debug' >> ${MF}
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
echo '# Debugging zImage before Relocated' >> ${MF}
echo '' >> ${MF}
echo '### First Terminal' >> ${MF}
echo '' >> ${MF}
echo '```' >> ${MF}
echo "cd ${OUTPUT}" >> ${MF}
echo './RunQemuKernel.sh debug' >> ${MF}
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
echo './RunQemuKernel.sh debug' >> ${MF}
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


## Output directory
echo ""
figlet BiscuitOS
echo "***********************************************"
echo "Output:"
echo -e "\033[31m ${OUTPUT} \033[0m"
echo ""
echo "linux:"
echo -e "\033[31m ${OUTPUT}/linux/linux \033[0m"
echo ""
echo "README:"
echo -e "\033[31m ${OUTPUT}/README.md \033[0m"
echo ""
echo "***********************************************"
