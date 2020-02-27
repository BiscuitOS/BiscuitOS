#/bin/bash

set -e
# Establish Rootfs.
#
# (C) 2019.01.15 BiscuitOS <buddy.zhang@aliyun.com>
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

##
# Feature Area
SUPPORT_EXT3=N
SUPPORT_CROSS_LIB=Y
SUPPORT_RAMDISK=N
RISCV_LIB_INSTALL=N
SUPPORT_RPI=N
SUPPORT_RPI4B=N
SUPPORT_RPI3B=N

# Kernel Version field
KERNEL_MAJOR_NO=
KERNEL_MINOR_NO=
KERNEL_MINIR_NO=

# Architecture
ARCH_MAGIC=${11%X}
ARCH_NAME=unknown
ARCH=

# Copy library
copy_libs() {
	for lib in $1/*.so*; do
		if [[ ${lib} =~ (^libgomp.*|^libgfortran.*|.*\.py$) ]]; then
			: # continue
		elif [[ -e "$2/$(basename $lib)" ]]; then
			: # continue
		elif [[ -h "$lib" ]]; then
			ln -s $(basename $(readlink $lib)) $2/$(basename $lib)
		else
			cp -a $lib $2/$(basename $lib)
		fi
	done
}

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

# Architecture information
# 
case ${ARCH_MAGIC} in 
	1)
		ARCH_NAME=x86
	;;
	2)
		ARCH_NAME=arm
	;;
	3)
		ARCH_NAME=arm64
	;;
	4)
		ARCH_NAME=riscv32
		LDSO_NAME=ld-linux-riscv32-ilp32d.so.1
		LDSO_TARGET=$(readlink ${CROSS_PATH}/sysroot/lib/${LDSO_NAME})
		RISCV_LIB_INSTALL=Y
	;;
	5)
		ARCH_NAME=riscv64
		LDSO_NAME=ld-linux-riscv64-lp64d.so.1
		LDSO_TARGET=$(readlink ${CROSS_PATH}/sysroot/lib/${LDSO_NAME})
		RISCV_LIB_INSTALL=Y
	;;
	6)
		ARCH_NAME=x86_64
	;;
	*)
		ARCH_NAME=unknown
	;;
esac

# EXT3 support
# --> Kernel < 3.10 Only support EXT3
[ ${KERNEL_MAJOR_NO} -eq 3 -a ${KERNEL_MINOR_NO} -lt 10 ] && SUPPORT_EXT3=Y
[ ${KERNEL_MAJOR_NO} -lt 3 ] && SUPPORT_EXT3=Y
[ ${KERNEL_MAJOR_NO} -eq 3 -a ${KERNEL_MINOR_NO} -lt 21 -a ${ARCH_NAME} == "arm" ] && SUPPORT_EXT3=Y

# Linux 2.6 Lib support
[ ${KERNEL_MAJOR_NO} -eq 2 -a ${KERNEL_MINOR_NO} -eq 6 ] && SUPPORT_CROSS_LIB=N

# Support RAMDISK (2.x Support)
# --> Mount / at RAMDISK
[ ${KERNEL_MAJOR_NO} -lt 4 ] && SUPPORT_RAMDISK=Y
[ ${ARCH_NAME} == "arm64" ]  && SUPPORT_RAMDISK=N
[ ${ARCH_NAME} == "x86" ] && SUPPORT_RAMDISK=Y
[ ${ARCH_NAME} == "x86_64" ] && SUPPORT_RAMDISK=Y

# RaspberryPi 4B
[ ${PROJECT_NAME} = "RaspberryPi_4B" ] && SUPPORT_RPI4B=Y
[ ${PROJECT_NAME} = "RaspberryPi_3B" ] && SUPPORT_RPI3B=Y
[ ${SUPPORT_RPI4B} = "Y" -o ${SUPPORT_RPI3B} = "Y" ] && SUPPORT_RPI=Y

##
# Rootfs Inforamtion
FS_TYPE=
FS_TYPE_TOOLS=

if [ ${SUPPORT_EXT3} = "Y" ]; then
	FS_TYPE=ext3
	FS_TYPE_TOOLS=mkfs.ext3
else
	FS_TYPE=ext4
	FS_TYPE_TOOLS=mkfs.ext4
fi

# Prepare Direct on Rootfs
rm -rf ${OUTPUT}/rootfs/
mkdir -p ${ROOTFS_PATH}
[ -d ${BUSYBOX}/_install/ ] && cp ${BUSYBOX}/_install/*  ${ROOTFS_PATH} -raf 
mkdir -p ${ROOTFS_PATH}/proc/
mkdir -p ${ROOTFS_PATH}/sys/
mkdir -p ${ROOTFS_PATH}/tmp/
mkdir -p ${ROOTFS_PATH}/root/
mkdir -p ${ROOTFS_PATH}/var/
mkdir -p ${ROOTFS_PATH}/mnt/
mkdir -p ${ROOTFS_PATH}/etc/init.d

### rcS
RC=${ROOTFS_PATH}/etc/init.d/rcS
## Auto create rcS file
cat << EOF > ${RC}
PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/bin
SHELL=/bin/ash
export PATH SHELL
mkdir -p /proc
mkdir -p /tmp
mkdir -p /sys
mkdir -p /mnt
mkdir -p /nfs
/bin/mount -a
/bin/hostname BiscuitOS

# Netwroking
ifconfig eth0 up > /dev/null 2>&1
ifconfig eth0 172.88.1.6
route add default gw 172.88.1.1
# mount -t nfs 172.88.1.2:/xspace/OpenSource/BiscuitOS/BiscuitOS /nfs -o nolock
# Setup default gw
# -> route add default gw gatway_ipaddr

mkdir -p /dev/pts
mount -t devpts devpts /dev/pts
echo /sbin/mdev > /proc/sys/kernel/hotplug
mdev -s
/usr/sbin/telnetd &

# Mount Freeze Disk
mkdir -p /mnt/Freeze
[ -b /dev/vdb ] && mount -t ${FS_TYPE} /dev/vdb /mnt/Freeze > /dev/null 2>&1
[ ! -b /dev/vdb ] && mount -t ${FS_TYPE} /dev/vda /mnt/Freeze > /dev/null 2>&1

echo " ____  _                _ _    ___  ____  "
echo "| __ )(_)___  ___ _   _(_) |_ / _ \/ ___| "
echo "|  _ \| / __|/ __| | | | | __| | | \___ \ "
echo "| |_) | \__ \ (__| |_| | | |_| |_| |___) |"
echo "|____/|_|___/\___|\__,_|_|\__|\___/|____/ "

echo "Welcome to BiscuitOS"

EOF
chmod 755 ${RC}

### fstab
RC=${ROOTFS_PATH}/etc/fstab
## Auto create fstab file
cat << EOF > ${RC}
proc /proc proc defaults 0 0
tmpfs /tmp tmpfs defaults 0 0
sysfs /sys sysfs defaults 0 0
tmpfs /dev tmpfs defaults 0 0
debugfs /sys/kernel/debug debugfs defaults 0 0
EOF
chmod 664 ${RC}

### inittab
RC=${ROOTFS_PATH}/etc/inittab
## Auto create initab file
cat << EOF > ${RC}
::sysinit:/etc/init.d/rcS
::respawn:-/bin/sh
::askfirst:-/bin/sh
::ctrlaltdel:/sbin/reboot
::shutdown:/bin/umount -a -r
EOF

if [ ${SUPPORT_RPI} = "Y" ]; then
	RC=${ROOTFS_PATH}/etc/inittab
	echo 'ttyAMA0::respawn:/sbin/getty -L ttyAMA0 115200 vt100' >> ${RC}

	# /etc/issue
	RC=${ROOTFS_PATH}/etc/issue
	echo '' >> ${RC}
	echo ' ____  _                _ _    ___  ____' >> ${RC}
	echo '| __ )(_)___  ___ _   _(_) |_ / _ \\/ ___|' >> ${RC}
	echo '|  _ \\| / __|/ __| | | | | __| | | \\___ \\' >> ${RC}
	echo '| |_) | \\__ \\ (__| |_| | | |_| |_| |___) |' >> ${RC}
	echo '|____/|_|___/\\___|\\__,_|_|\\__|\\___/|____/' >> ${RC}
	echo '' >> ${RC}
	[ ${SUPPORT_RPI3B} = "Y" ] && echo 'RaspberryPi 3B with BiscuitOS' >> ${RC}
	[ ${SUPPORT_RPI4B} = "Y" ] && echo 'RaspberryPi 4B with BiscuitOS' >> ${RC}
	echo '' >> ${RC}
fi

## group
RC=${ROOTFS_PATH}/etc/group
cat << EOF > ${RC}
root::0:root
EOF

## passwd
RC=${ROOTFS_PATH}/etc/passwd
cat << EOF > ${RC}
root::0:0:root:/:/bin/sh
EOF

## DNS
RC=${ROOTFS_PATH}/etc/resolv.conf
cat << EOF > ${RC}
nameserver 1.2.4.8
nameserver 8.8.8.8
EOF

##
# Install Cross-compiler library
# --> linux 2.6 not support library
mkdir -p ${ROOTFS_PATH}/lib
if [ ${RISCV_LIB_INSTALL} = "Y" ]; then
	# RISC-V
	copy_libs $(dirname ${CROSS_PATH}/sysroot/lib/${LDSO_TARGET}) ${ROOTFS_PATH}/lib
	copy_libs ${CROSS_PATH}/sysroot/usr/lib ${ROOTFS_PATH}/lib
else
	if [ ${SUPPORT_CROSS_LIB} = "N" ]; then
		# Linux 2.6.x
		echo "Linux 2.6.x" > /dev/null
	else
		LIBS_PATH_IN=${CROSS_PATH}/${CROSS_COMPILE}/libc/lib
		if [ -d ${LIBS_PATH_IN}/${CROSS_COMPILE} ]; then
			cp -arf ${LIBS_PATH_IN}/${CROSS_COMPILE}/* \
				${ROOTFS_PATH}/lib/
		else
			# X86/i386
			[ ${ARCH_NAME}Y = "x86Y" ] && LIBS_PATH_IN=/lib/i386-linux-gnu
			[ ${ARCH_NAME}Y = "x86_64Y" ] && LIBS_PATH_IN=/lib/x86_64-linux-gnu
			cp -arf ${LIBS_PATH_IN}/* ${ROOTFS_PATH}/lib/
		fi
	fi
	rm -rf ${ROOTFS_PATH}/lib/*.a
fi

mkdir -p ${ROOTFS_PATH}/dev/
sudo mknod ${ROOTFS_PATH}/dev/tty1 c 4 1
sudo mknod ${ROOTFS_PATH}/dev/tty2 c 4 2
sudo mknod ${ROOTFS_PATH}/dev/tty3 c 4 3
sudo mknod ${ROOTFS_PATH}/dev/tty4 c 4 4
sudo mknod ${ROOTFS_PATH}/dev/console c 5 1
sudo mknod ${ROOTFS_PATH}/dev/null c 1 3
dd if=/dev/zero of=${OUTPUT}/rootfs/ramdisk bs=1M count=${DISK_SIZE}
${FS_TYPE_TOOLS} -F ${OUTPUT}/rootfs/ramdisk
mkdir -p ${OUTPUT}/rootfs/tmpfs
sudo mount -t ${FS_TYPE} ${OUTPUT}/rootfs/ramdisk ${OUTPUT}/rootfs/tmpfs/ -o loop
sudo cp -raf ${OUTPUT}/rootfs/${ROOTFS_NAME}/*  ${OUTPUT}/rootfs/tmpfs/
sync
sudo umount ${OUTPUT}/rootfs/tmpfs
if [ ${SUPPORT_RAMDISK} = "Y" ]; then
	# Support RAMdisk
	gzip --best -c ${OUTPUT}/rootfs/ramdisk > ${OUTPUT}/rootfs/ramdisk.gz
	if [ ${ARCH_NAME} = "x86" -o ${ARCH_NAME} = "x86_64" ]; then
		mv ${OUTPUT}/rootfs/ramdisk.gz ${OUTPUT}/BiscuitOS.img
	else
		mkimage -n "ramdisk" -A arm -O linux -T ramdisk -C gzip -d ${OUTPUT}/rootfs/ramdisk.gz ${OUTPUT}/BiscuitOS.img
	fi
	rm -rf ${OUTPUT}/rootfs/ramdisk
else
	# Support HardDisk
	mv ${OUTPUT}/rootfs/ramdisk ${OUTPUT}/BiscuitOS.img
fi

rm -rf ${OUTPUT}/rootfs/tmpfs
[ -d ${OUTPUT}/rootfs/rootfs ] && rm -rf ${OUTPUT}/rootfs/rootfs
ln -s ${OUTPUT}/rootfs/${ROOTFS_NAME} ${OUTPUT}/rootfs/rootfs

## Establish a freeze disk
FREEZE_DISK=Freeze.img
FREEZE_SIZE=${18%X}
[ ! ${FREEZE_SIZE} ] && FREEZE_SIZE=512
if [ ! -f ${OUTPUT}/${FREEZE_DISK} ]; then
       	dd bs=1M count=${FREEZE_SIZE} if=/dev/zero of=${OUTPUT}/${FREEZE_DISK}
	sync
	${FS_TYPE_TOOLS} -F ${OUTPUT}/${FREEZE_DISK}
fi

## Auto build README.md
${ROOT}/scripts/rootfs/readme.sh $1 $2 $3 $4 $5 $6 $7 $8 $9 ${10} ${11} \
					${12} ${13} ${14} ${15} ${16} \
					${FREEZE_SIZE}X ${DISK_SIZE}X \
					${19} ${20}

## Output directory
echo ""
[ "${BS_SILENCE}X" != "trueX" ] && figlet BiscuitOS
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
echo "Blog:"
echo -e "\033[31m https://biscuitos.github.io/blog/BiscuitOS_Catalogue/ \033[0m"
echo ""
echo "***********************************************"
