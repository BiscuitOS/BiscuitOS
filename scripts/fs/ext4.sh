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
EMARCH=X

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
if [ ${EMARCH} = "Y" ]; then
	# Linux 2.6.x
	echo "Linux 2.6.x" > /dev/null
else
	if [ -d ${GCC}/${CROSS_TOOL}/libc/lib/${CROSS_TOOL} ]; then
		cp -arf ${GCC}/${CROSS_TOOL}/libc/lib/${CROSS_TOOL}/* ${OUTPUT}/rootfs/${ROOTFS_NAME}/lib/
	else
		cp -arf ${GCC}/${CROSS_TOOL}/libc/lib/* ${OUTPUT}/rootfs/${ROOTFS_NAME}/lib/
	fi
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

## Auto build README.md
${ROOT}/scripts/rootfs/readme.sh $1 $2 $3 $4 $5 $6 $7 $8 $9 ${10} ${11} \
					${12} ${13} ${14} ${15} ${16}

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
