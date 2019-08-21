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
PROJ_NAME=${9%X}
CROSS_TOOL=${12%X}
OUTPUT=${ROOT}/output/${PROJ_NAME}
BUSYBOX=${OUTPUT}/busybox/busybox
GCC=${OUTPUT}/${CROSS_TOOL}/${CROSS_TOOL}
UBOOT=${15}
UBOOT_CROSS=${16%X}
KERNEL_VER=${7%X}
EMARCH=X
EFS=ext4
EFS_T=mkfs.ext4

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
if [ ${KERNEL_VER:0:3} = "2.6" ]; then
	EMARCH=Y
fi

if [ ${EMARCH} = "Y" ]; then
	DEF_UBOOT_CROOS=${OUTPUT}/${UBOOT_CROSS}/${UBOOT_CROSS}/bin/arm-none-linux-gnueabi-
	DEF_CROOS=${OUTPUT}/${CROSS_TOOL}/${CROSS_TOOL}/bin/arm-none-linux-gnueabi-
	EFS=ext3
	EFS_T=mkfs.ext3
else
	DEF_UBOOT_CROOS=${OUTPUT}/${UBOOT_CROSS}/${UBOOT_CROSS}/bin/${UBOOT_CROSS}-
	DEF_CROOS=${OUTPUT}/${CROSS_TOOL}/${CROSS_TOOL}/bin/${CROSS_TOOL}-
fi


## Debug Stuff
if [ -d ${OUTPUT}/package/gdb ]; then
	rm -rf ${OUTPUT}/package/gdb
fi
mkdir -p ${OUTPUT}/package/gdb
# gdb pl
if [ ! -f ${OUTPUT}/package/gdb/gdb.pl ]; then
	cp ${ROOT}/scripts/package/gdb.pl ${OUTPUT}/package/gdb/
fi

mkdir -p ${OUTPUT}/package/networking
cp ${ROOT}/scripts/rootfs/qemu-if* ${OUTPUT}/package/networking
cp ${ROOT}/scripts/rootfs/bridge.sh ${OUTPUT}/package/networking

## Auto create Running scripts
MF=${OUTPUT}/RunBiscuitOS.sh
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
echo "EFS=${EFS}" >> ${MF}
echo "EFS_T=${EFS_T}" >> ${MF}
echo 'ROOTFS_SIZE=150' >> ${MF}
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
		echo '	${QEMUT} -M versatilepb -m 256M -kernel ${ROOT}/linux/linux/arch/${ARCH}/boot/zImage -nodefaults -serial stdio -nographic -append "earlycon root=/dev/ram0 rw rootfstype=${EFS} console=ttyAMA0 init=/linuxrc loglevel=8" -initrd ${ROOT}/ramdisk.img' >> ${MF}
	else
		echo '	${QEMUT} -M vexpress-a9 -m 512M -kernel ${ROOT}/linux/linux/arch/${ARCH}/boot/zImage -dtb ${ROOT}/linux/linux/arch/${ARCH}/boot/dts/vexpress-v2p-ca9.dtb -nodefaults -serial stdio -nographic -append "earlycon root=/dev/ram0 rw rootfstype=${EFS} console=ttyAMA0 init=/linuxrc loglevel=8" -initrd ${ROOT}/ramdisk.img' >> ${MF}
	fi
elif [ ${ARCH}X = "3X" ]; then
	echo '	${QEMUT} -M virt -cpu cortex-a53 -smp 2 -m 1024M -kernel ${ROOT}/linux/linux/arch/${ARCH}/boot/Image -nodefaults -serial stdio -nographic -append "earlycon root=/dev/ram0 rw rootfstype=${EFS} console=ttyAMA0 init=/linuxrc loglevel=8" -initrd ${ROOT}/ramdisk.img' >> ${MF}
fi
echo '}' >> ${MF}
echo '' >> ${MF}
echo 'do_debug()' >> ${MF}
echo '{' >> ${MF}
if [ ${ARCH}X = "2X" ]; then
	if [ ${DMARCH}X = "NX" ]; then
		echo '	${QEMUT} -s -S -M versatilepb -m 256M -kernel ${ROOT}/linux/linux/arch/${ARCH}/boot/zImage -nodefaults -serial stdio -nographic -append "earlycon root=/dev/ram0 rw rootfstype=${EFS} console=ttyAMA0 init=/linuxrc loglevel=8" -initrd ${ROOT}/ramdisk.img' >> ${MF}
	else
		echo '	${ROOT}/package/gdb/gdb.pl ${ROOT} ${CROSS_TOOL}' >> ${MF}
		echo '	${QEMUT} -s -S -M vexpress-a9 -m 512M -kernel ${ROOT}/linux/linux/arch/${ARCH}/boot/zImage -dtb ${ROOT}/linux/linux/arch/${ARCH}/boot/dts/vexpress-v2p-ca9.dtb -nodefaults -serial stdio -nographic -append "earlycon root=/dev/ram0 rw rootfstype=${EFS} console=ttyAMA0 init=/linuxrc loglevel=8" -initrd ${ROOT}/ramdisk.img' >> ${MF}
	fi
elif [ ${ARCH}X = "3X" ]; then
	echo '	${QEMUT} -s -S -M virt -cpu cortex-a53 -smp 2 -m 1024M -kernel ${ROOT}/linux/linux/arch/${ARCH}/boot/Image -nodefaults -serial stdio -nographic -append "earlycon root=/dev/ram0 rw rootfstype=${EFS} console=ttyAMA0 init=/linuxrc loglevel=8" -initrd ${ROOT}/ramdisk.img' >> ${MF}
fi
echo '}' >> ${MF}
echo '' >>  ${MF}
echo '' >> ${MF}
echo 'do_network()' >> ${MF}
echo '{' >> ${MF}
if [ ${ARCH}X = "2X" ]; then
        if [ ${DMARCH}X = "NX" ]; then
                echo '	${QEMUT} -M versatilepb -m 256M -net tap -device virtio-net-device,netdev=net0,mac=E0:FE:D0:3C:2E:EE -netdev tap,id=net0 -kernel ${ROOT}/linux/linux/arch/${ARCH}/boot/zImage -nodefaults -serial stdio -nographic -append "earlycon root=/dev/ram0 rw rootfstype=${EFS} console=ttyAMA0 init=/linuxrc loglevel=8" -initrd ${ROOT}/ramdisk.img' >> ${MF}
        else
                echo '	${QEMUT} -M vexpress-a9 -m 512M -net tap -device virtio-net-device,netdev=net0,mac=E0:FE:D0:3C:2E:EE -netdev tap,id=net0 -kernel ${ROOT}/linux/linux/arch/${ARCH}/boot/zImage -dtb ${ROOT}/linux/linux/arch/${ARCH}/boot/dts/vexpress-v2p-ca9.dtb -nodefaults -serial stdio -nographic -append "earlycon root=/dev/ram0 rw rootfstype=${EFS} console=ttyAMA0 init=/linuxrc loglevel=8" -initrd ${ROOT}/ramdisk.img' >> ${MF}
        fi
elif [ ${ARCH}X = "3X" ]; then
        echo '  ${QEMUT} -M virt -cpu cortex-a53 -smp 2 -m 1024M -kernel ${ROOT}/linux/linux/arch/${ARCH}/boot/Image -nodefaults -serial stdio -nographic -append "earlycon root=/dev/ram0 rw rootfstype=${EFS} console=ttyAMA0 init=/linuxrc loglevel=8" -initrd ${ROOT}/ramdisk.img' >> ${MF}
fi
echo '}' >> ${MF}
echo '' >> ${MF}
echo '' >>  ${MF}
echo 'do_package()' >>  ${MF}
echo '{' >> ${MF}
echo '	cp ${BUSYBOX}/_install/*  ${OUTPUT}/rootfs/${ROOTFS_NAME} -raf' >> ${MF}
echo '	dd if=/dev/zero of=${OUTPUT}/rootfs/ramdisk bs=1M count=${ROOTFS_SIZE}' >> ${MF}
echo '	${EFS_T} -F ${OUTPUT}/rootfs/ramdisk' >> ${MF}
echo '	mkdir -p ${OUTPUT}/rootfs/tmpfs' >> ${MF}
echo '	sudo mount -t ${EFS} ${OUTPUT}/rootfs/ramdisk ${OUTPUT}/rootfs/tmpfs/ -o loop' >> ${MF}
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
echo '	do_running' >> ${MF}
echo 'fi' >> ${MF}
echo '' >> ${MF}
echo 'if [ X$1 = "Xnet" ]; then' >> ${MF}
echo '	if [ ! -f /etc/qemu-ifup ]; then' >> ${MF}
echo '		cp -rf ${OUTPUT}/package/networking/qemu-ifup /etc/' >> ${MF}
echo '		cp -rf ${OUTPUT}/package/networking/qemu-ifdown /etc/' >> ${MF}
echo '	fi' >> ${MF}
echo '	do_network' >> ${MF}
echo 'fi' >> ${MF}
echo '' >> ${MF}
echo '' >> ${MF}
echo 'if [ X$1 = "Xpack" ]; then' >> ${MF}
echo '	do_package' >> ${MF}
echo 'fi' >> ${MF}
echo '' >> ${MF}
echo 'if [ X$1 = "Xdebug" ]; then' >> ${MF}
echo '	do_debug' >> ${MF}
echo 'fi' >> ${MF}
if [ ${UBOOT} = "yX" ]; then
	echo '' >> ${MF}
	echo 'if [ X$1 = "Xuboot" ]; then' >> ${MF}
	echo '	do_uboot' >> ${MF}
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
	echo "make ARCH=arm CROSS_COMPILE=${DEF_CROOS}" >> ${MF}
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
if [ ${EMARCH} = "Y" ]; then
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
if [ ${ARCH}X = "2X" ]; then
	echo "make ARCH=${ARCH_TYPE} CROSS_COMPILE=${DEF_CROOS} -j8" >> ${MF}
	if [ ${KERN_DTB}X = "NX" ]; then
		echo "" >> ${MF}
	else
		echo "make ARCH=${ARCH_TYPE} CROSS_COMPILE=${DEF_CROOS} dtbs" >> ${MF}
	fi
elif [ ${ARCH}X = "3X" ]; then
	echo "make ARCH=${ARCH_TYPE} CROSS_COMPILE=${DEF_CROOS} Image -j8" >> ${MF}
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
echo "make CROSS_COMPILE=${DEF_CROOS} -j8" >> ${MF}
echo '' >> ${MF}
echo "make CROSS_COMPILE=${DEF_CROOS} install" >> ${MF}
echo '```' >> ${MF}
echo '' >> ${MF}
if [ ${UBOOT} = "yX" ]; then
	echo '' >> ${MF}
	echo '# Boot from Uboot' >> ${MF}
	echo '' >> ${MF}
	echo '```' >> ${MF}
	echo "cd ${OUTPUT}" >> ${MF}
	echo './RunBiscuitOS.sh uboot' >> ${MF}
	echo '```' >> ${MF}
	echo '' >> ${MF}
fi
echo '' >> ${MF}
echo '# Re-Build Rootfs' >> ${MF}
echo '' >> ${MF}
echo '```' >> ${MF}
echo "cd ${OUTPUT}" >> ${MF}
echo './RunBiscuitOS.sh pack' >> ${MF}
echo '```' >> ${MF}
echo '' >> ${MF}
echo '' >> ${MF}
echo '# Running Linux on Qemu' >> ${MF}
echo '' >> ${MF}
echo '```' >> ${MF}
echo "cd ${OUTPUT}" >> ${MF}
echo './RunBiscuitOS.sh start' >> ${MF}
echo '```' >> ${MF}
echo '' >> ${MF}
if [ ${ARCH}X = "2X" ]; then # ARM32
	echo '# Debugging zImage before Relocated' >> ${MF}
	echo '' >> ${MF}
	echo '### First Terminal' >> ${MF}
	echo '' >> ${MF}
	echo '```' >> ${MF}
	echo "cd ${OUTPUT}" >> ${MF}
	echo './RunBiscuitOS.sh debug' >> ${MF}
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
	echo './RunBiscuitOS.sh debug' >> ${MF}
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
	echo './RunBiscuitOS.sh debug' >> ${MF}
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
	echo './RunBiscuitOS.sh debug' >> ${MF}
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
	echo './RunBiscuitOS.sh debug' >> ${MF}
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
elif [ ${ARCH}X = "3X" ]; then # ARM64
        echo '# Debugging Linux Kernel' >> ${MF}
        echo '' >> ${MF}
        echo '### First Terminal' >> ${MF}
        echo '' >> ${MF}
        echo '```' >> ${MF}
        echo "cd ${OUTPUT}" >> ${MF}
        echo './RunBiscuitOS.sh debug' >> ${MF}
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
fi
