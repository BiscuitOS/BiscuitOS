#/bin/bash
# MAX ARGS 37

UBUNTU_FULL=$(cat /etc/issue | grep "Ubuntu" | awk '{print $2}')
UBUNTU=${UBUNTU_FULL:0:2}
if [ ${UBUNTU}X != "22X" ]; then
  set -e
fi
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
[ ${PROJECT_NAME} = "SerenityOS-on-BiscuitOS" ] && exit 0
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
[ ${KERNEL_VERSION} = "newest-gitee" ] && KERNEL_VERSION=6.0.0
[ ${KERNEL_VERSION} = "next" ] && KERNEL_VERSION=6.0.0
# Rootfs NAME
ROOTFS_NAME=${2%X}
# Rootfs Version
ROOTFS_VERSION=${3%X}
# Rootfs Path
ROOTFS_PATH=${OUTPUT}/rootfs/${ROOTFS_NAME}
# Disk size (MB)
DISK_SIZE=${17%X}
[ ! ${DISK_SIZE} ] && DISK_SIZE=512
ROOTFS_DIY_SIZE=${29%X}
[ ! ${ROOTFS_DIY_SIZE} ] && ROOTFS_DIY_SIZE=${DISK_SIZE}
[ ${DISK_SIZE}X != ${ROOTFS_DIY_SIZE}X ] && DISK_SIZE=${ROOTFS_DIY_SIZE}

# Freeze size
FREEZE_SIZE=${18%X}
# Broiler Support
SUPPORT_BROILER=${19}
# QEMU Support
SUPPORT_QEMU=${20}
[ ${SUPPORT_BROILER} = "yX" -a ${SUPPORT_QEMU} = "yX" ] && echo "Only Support Broiler or QEMU" && exit -1  
[ ${SUPPORT_BROILER} = "yX" ] && SUPPORT_HYPV="Broiler"
[ ${SUPPORT_QEMU} = "yX" ] && SUPPORT_HYPV="QEMU"
# NUMA
SUPPORT_NUMA=${21}
[ ${32} == yX ] && SUPPORT_NUMA=yX
SUPPORT_KVM=${22}

##
# Feature Area
SUPPORT_EXT3=N
SUPPORT_CROSS_LIB=Y
SUPPORT_RAMDISK=N
RISCV_LIB_INSTALL=N
SUPPORT_RPI=N
SUPPORT_RPI4B=N
SUPPORT_RPI3B=N
SUPPORT_LIB26=N
SUPPORT_LIB2611=N

# Kernel Version field
KERNEL_MAJOR_NO=
KERNEL_MINOR_NO=
KERNEL_MINIR_NO=

# Architecture
ARCH_MAGIC=${11%X}
ARCH_NAME=unknown
ARCH=

## DISK Default EXT4
SUPPORT_DEFAULT_DISK=N
SUPPORT_VDB=ext4
SUPPORT_VDC=ext4
SUPPORT_VDD=ext4
SUPPORT_VDE=ext4
SUPPORT_VDF=ext4
SUPPORT_VDG=ext4
SUPPORT_VDH=ext4
SUPPORT_VDI=ext4
SUPPORT_VDJ=ext4
SUPPORT_VDK=ext4
SUPPORT_VDL=ext4
SUPPORT_VDM=ext4
SUPPORT_VDN=ext4
SUPPORT_VDO=ext4
SUPPORT_VDP=ext4
SUPPORT_VDQ=ext4
SUPPORT_VDR=ext4
SUPPORT_VDS=ext4
[ ${49} == yX ] && SUPPORT_VDB=ext2 	&& SUPPORT_DEFAULT_DISK=Y 
[ ${53} == yX ] && SUPPORT_VDC=ext3 	&& SUPPORT_DEFAULT_DISK=Y
[ ${48} == yX ] && SUPPORT_VDD=ext4 	&& SUPPORT_DEFAULT_DISK=Y
[ ${47} == yX ] && SUPPORT_VDE=minix	&& SUPPORT_DEFAULT_DISK=Y
[ ${52} == yX ] && SUPPORT_VDF=vfat 	&& SUPPORT_DEFAULT_DISK=Y
[ ${54} == yX ] && SUPPORT_VDG=fat 	&& SUPPORT_DEFAULT_DISK=Y
[ ${57} == yX ] && SUPPORT_VDH=msdos 	&& SUPPORT_DEFAULT_DISK=Y
[ ${55} == yX ] && SUPPORT_VDI=bfs 	&& SUPPORT_DEFAULT_DISK=Y
[ ${56} == yX ] && SUPPORT_VDJ=cramfs 	&& SUPPORT_DEFAULT_DISK=Y
[ ${58} == yX ] && SUPPORT_VDK=jffs2 	&& SUPPORT_DEFAULT_DISK=Y
[ ${60} == yX ] && SUPPORT_VDM=squashfs	&& SUPPORT_DEFAULT_DISK=Y
[ ${61} == yX ] && SUPPORT_VDN=btrfs 	&& SUPPORT_DEFAULT_DISK=Y 
[ ${62} == yX ] && SUPPORT_VDO=reiserfs	&& SUPPORT_DEFAULT_DISK=Y
[ ${63} == yX ] && SUPPORT_VDP=jfs 	&& SUPPORT_DEFAULT_DISK=Y
[ ${64} == yX ] && SUPPORT_VDQ=xfs 	&& SUPPORT_DEFAULT_DISK=Y 
[ ${65} == yX ] && SUPPORT_VDR=gfs2 	&& SUPPORT_DEFAULT_DISK=Y
[ ${66} == yX ] && SUPPORT_VDS=f2fs 	&& SUPPORT_DEFAULT_DISK=Y

# HARDWARE PMEM
SUPPORT_HW_PMEM=N
[ ${70} == yX ] && SUPPORT_HW_PMEM=Y

# Pseudo FS
SUPPORT_GUEST_TMPFS=N
[ ${50%} = yX ] && SUPPORT_GUEST_TMPFS=Y
# Pseudo Huge FS
SUPPORT_GUEST_HUGE_TMPFS=N
[ ${51%} = yX ] && SUPPORT_GUEST_HUGE_TMPFS=Y

# DMESG LOGLEVEL
DEFAULT_LOGLEVEL=${67%X}
[ ${67} == "X" ] && DEFAULT_LOGLEVEL=8

# SWAP/ZSWAP
SUPPORT_SWAP=N
SUPPORT_ZSWAP=N
[ ${68%} = yX ] && SUPPORT_SWAP=Y
[ ${69%} = yX ] && SUPPORT_ZSWAP=Y

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
	# minir field of kernel version
	KERNEL_MINIR_NO=${tmpv1#*.}
}
detect_kernel_version_field

# Kernel Version setup
[ ${KERNEL_MAJOR_NO}Y = "2Y" -a ${KERNEL_MINOR_NO}Y = "6Y" ] && DISK_SIZE=20 && FREEZE_SIZE=4 
[ ${KERNEL_MAJOR_NO}Y = "2Y" -a ${KERNEL_MINOR_NO}Y = "6Y" -a ${ARCH_MAGIC}Y = "6Y" ] && DISK_SIZE=80 && FREEZE_SIZE=4 
# Compile
[ ${KERNEL_MAJOR_NO}Y = "2Y" -a ${KERNEL_MINOR_NO}Y = "6Y" -a ${KERNEL_MINIR_NO} -lt 24 ] && CROSS_COMPILE=arm-linux && SUPPORT_LIB2611=Y
[ ${KERNEL_MAJOR_NO}Y = "2Y" -a ${KERNEL_MINOR_NO}Y = "6Y" -a ${KERNEL_MINIR_NO} -ge 24 ] && CROSS_COMPILE=arm-none-linux-gnueabi && SUPPORT_LIB26=Y

# CROSS PATH
CROSS_PATH=${OUTPUT}/${CROSS_COMPILE}/${CROSS_COMPILE}

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

# Support RAMDISK (2.x Support)
# --> Mount / at RAMDISK
[ ${KERNEL_MAJOR_NO} -lt 4 ] && SUPPORT_RAMDISK=Y
[ ${ARCH_NAME} == "arm64" ]  && SUPPORT_RAMDISK=N
[ ${ARCH_NAME} == "x86" ] && SUPPORT_RAMDISK=N
[ ${ARCH_NAME} == "x86_64" ] && SUPPORT_RAMDISK=N

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
sudo rm -rf ${OUTPUT}/rootfs/
mkdir -p ${ROOTFS_PATH}
[ -d ${BUSYBOX}/_install/ ] && cp ${BUSYBOX}/_install/*  ${ROOTFS_PATH} -raf 
mkdir -p ${ROOTFS_PATH}/proc/
mkdir -p ${ROOTFS_PATH}/sys/
mkdir -p ${ROOTFS_PATH}/tmp/
mkdir -p ${ROOTFS_PATH}/root/
mkdir -p ${ROOTFS_PATH}/var/
mkdir -p ${ROOTFS_PATH}/mnt/
mkdir -p ${ROOTFS_PATH}/etc/init.d

### LOG
RC=${ROOTFS_PATH}/etc/BiscuitOS.log

## Auto create fstab file
cat << EOF > ${RC}
 ____  _                _ _    ___  ____  
| __ )(_)___  ___ _   _(_) |_ / _ \/ ___| 
|  _ \| / __|/ __| | | | | __| | | \___ \ 
| |_) | \__ \ (__| |_| | | |_| |_| |___) |
|____/|_|___/\___|\__,_|_|\__|\___/|____/

EOF

RC=${ROOTFS_PATH}/etc/Broiler.log
## Auto create fstab file
cat << EOF > ${RC}
 ____            _ _           
| __ ) _ __ ___ (_) | ___ _ __ 
|  _ \| '__/ _ \| | |/ _ \ '__|
| |_) | | | (_) | | |  __/ |   
|____/|_|  \___/|_|_|\___|_|   
                             
EOF


### rcS
RC=${ROOTFS_PATH}/etc/init.d/rcS
## Auto create rcS file
cat << EOF > ${RC}
PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/bin:
SHELL=/bin/ash
export PATH SHELL
mkdir -p /proc
mkdir -p /tmp
mkdir -p /sys
mkdir -p /mnt
mkdir -p /nfs
mkdir -p /dev/shm
/bin/mount -a
/bin/hostname BiscuitOS
[ -f /bin/busybox ] && chmod 7755 /bin/busybox

# Netwroking
ifconfig lo up > /dev/null 2>&1
ifconfig lo 127.0.0.1
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
[ -b /dev/vda ] && mount -t ${FS_TYPE} /dev/vda /mnt/Freeze > /dev/null 2>&1
[ -f /mnt/Freeze/BiscuitOS/usr/bin/qemu-kvm ] && ln -s /mnt/Freeze/BiscuitOS/usr/bin/qemu-kvm /usr/bin/qemu-kvm

# Mount DISK
mkdir -p /mnt/ext2
[ -b /dev/vdb ] && mount /dev/vdb /mnt/ext2 > /dev/null 2>&1 
[ ! -f /mnt/ext2/BiscuitOS.txt ] && dmesg > /mnt/ext2/BiscuitOS.txt
mkdir -p /mnt/ext3
[ -b /dev/vdc ] && mount /dev/vdc /mnt/ext3 > /dev/null 2>&1 
[ ! -f /mnt/ext3/BiscuitOS.txt ] && dmesg > /mnt/ext3/BiscuitOS.txt
mkdir -p /mnt/ext4
[ -b /dev/vdd ] && mount /dev/vdd /mnt/ext4 > /dev/null 2>&1
[ ! -f /mnt/ext4/BiscuitOS.txt ] && dmesg > /mnt/ext4/BiscuitOS.txt
mkdir -p /mnt/minix
[ -b /dev/vde ] && mount /dev/vde /mnt/minix > /dev/null 2>&1
[ ! -f /mnt/minix/BiscuitOS.txt ] && dmesg > /mnt/minix/BiscuitOS.txt
mkdir -p /mnt/vfat
[ -b /dev/vdf ] && mount /dev/vdf /mnt/vfat > /dev/null 2>&1
[ ! -f /mnt/vfat/BiscuitOS.txt ] && dmesg > /mnt/vfat/BiscuitOS.txt
mkdir -p /mnt/fat
[ -b /dev/vdg ] && mount /dev/vdg /mnt/fat > /dev/null 2>&1
[ ! -f /mnt/fat/BiscuitOS.txt ] && dmesg > /mnt/fat/BiscuitOS.txt
mkdir -p /mnt/msdos
[ -b /dev/vdh ] && mount /dev/vdh /mnt/msdos > /dev/null 2>&1
[ ! -f /mnt/msdos/BiscuitOS.txt ] && dmesg > /mnt/msdos/BiscuitOS.txt
mkdir -p /mnt/bfs
[ -b /dev/vdi ] && mount /dev/vdi /mnt/bfs > /dev/null 2>&1
[ ! -f /mnt/bfs/BiscuitOS.txt ] && dmesg > /mnt/bfs/BiscuitOS.txt
mkdir -p /mnt/cramfs
[ -b /dev/vdj ] && mount /dev/vdj /mnt/cramfs > /dev/null 2>&1
mkdir -p /mnt/jffs2
[ -b /dev/vdk ] && mount /dev/vdk /mnt/jffs2 > /dev/null 2>&1
[ ! -f /mnt/jffs2/BiscuitOS.txt ] && dmesg > /mnt/jffs2/BiscuitOS.txt
mkdir -p /mnt/ubifs
[ -b /dev/vdl ] && mount /dev/vdl /mnt/ubifs > /dev/null 2>&1
[ ! -f /mnt/ubifs/BiscuitOS.txt ] && dmesg > /mnt/ubifs/BiscuitOS.txt
mkdir -p /mnt/squashfs
[ -b /dev/vdm ] && mount /dev/vdm /mnt/squashfs > /dev/null 2>&1
[ ! -f /mnt/squashfs/BiscuitOS.txt ] && dmesg > /mnt/squashfs/BiscuitOS.txt
mkdir -p /mnt/btrfs
[ -b /dev/vdn ] && mount /dev/vdn /mnt/btrfs > /dev/null 2>&1
[ ! -f /mnt/btrfs/BiscuitOS.txt ] && dmesg > /mnt/btrfs/BiscuitOS.txt
mkdir -p /mnt/reiserfs
[ -b /dev/vdo ] && mount /dev/vdo /mnt/reiserfs > /dev/null 2>&1
[ ! -f /mnt/reiserfs/BiscuitOS.txt ] && dmesg > /mnt/reiserfs/BiscuitOS.txt
mkdir -p /mnt/jfs
[ -b /dev/vdp ] && mount /dev/vdp /mnt/jfs > /dev/null 2>&1
[ ! -f /mnt/jfs/BiscuitOS.txt ] && dmesg > /mnt/jfs/BiscuitOS.txt
mkdir -p /mnt/xfs
[ -b /dev/vdq ] && mount /dev/vdq /mnt/xfs > /dev/null 2>&1
[ ! -f /mnt/xfs/BiscuitOS.txt ] && dmesg > /mnt/xfs/BiscuitOS.txt
mkdir -p /mnt/gfs2
[ -b /dev/vdr ] && mount /dev/vdr /mnt/gfs2 > /dev/null 2>&1
[ ! -f /mnt/gfs2/BiscuitOS.txt ] && dmesg > /mnt/gfs2/BiscuitOS.txt
mkdir -p /mnt/f2fs
[ -b /dev/vds ] && mount /dev/vds /mnt/f2fs > /dev/null 2>&1
[ ! -f /mnt/f2fs/BiscuitOS.txt ] && dmesg > /mnt/f2fs/BiscuitOS.txt

# DMESG
echo 8 > /proc/sys/kernel/printk
EOF

if [ ${SUPPORT_SWAP} = "Y" ]; then
	RC=${ROOTFS_PATH}/etc/init.d/rcS
	echo '' >> ${RC} 
	echo '# SWAP' >> ${RC} 
	echo 'dd bs=1M count=4 if=/dev/zero of=/SWAP > /dev/null 2>&1' >> ${RC} 
	echo 'mkswap /SWAP > /dev/null 2>&1' >> ${RC} 
	echo 'swapon /SWAP > /dev/null 2>&1' >> ${RC} 
	echo 'echo 100 > /proc/sys/vm/swappiness' >> ${RC} 
	echo '' >> ${RC} 
fi
if [ ${SUPPORT_ZSWAP} = "Y" ]; then
	RC=${ROOTFS_PATH}/etc/init.d/rcS
	echo '' >> ${RC} 
	echo '#ZSWAP' >> ${RC} 
	echo 'echo 16M > /sys/block/zram0/disksize' >> ${RC} 
	echo 'mkswap /dev/zram0 > /dev/null 2>&1' >> ${RC} 
	echo 'swapon /dev/zram0 > /dev/null 2>&1' >> ${RC} 
	echo 'echo 100 > /proc/sys/vm/swappiness' >> ${RC} 
	echo '' >> ${RC} 
fi

if [ ${SUPPORT_GUEST_TMPFS} = "Y" ]; then
	RC=${ROOTFS_PATH}/etc/init.d/rcS
	echo 'mkdir -p /mnt/tmpfs ; mount -t tmpfs nodev /mnt/tmpfs/' >> ${RC}
	echo "[ ! -f /mnt/tmpfs/BiscuitOS.txt ] && dmesg > /mnt/tmpfs/BiscuitOS.txt" >> ${RC}
fi
if [ ${SUPPORT_GUEST_HUGE_TMPFS} = "Y" ]; then
	RC=${ROOTFS_PATH}/etc/init.d/rcS
	echo 'mkdir -p /mnt/huge-tmpfs ; mount -t tmpfs nodev -o huge=always /mnt/huge-tmpfs/' >> ${RC}
	echo "[ ! -f /mnt/huge-tmpfs/BiscuitOS.txt ] && dmesg > /mnt/huge-tmpfs/BiscuitOS.txt" >> ${RC}
fi

RC=${ROOTFS_PATH}/etc/init.d/rcS
chmod 755 ${RC}
echo '# Auto Running Broiler' >> ${RC}
echo 'cat /proc/cmdline | grep -w "Broiler" > /dev/null' >> ${RC}
echo '[ $? -ne 0 ] && cat /etc/BiscuitOS.log && echo "Welcome to BiscuitOS"' >> ${RC}
echo 'cat /proc/cmdline | grep -w "Broiler" > /dev/null' >> ${RC}
echo '[ $? -eq 0 ] && cat /etc/Broiler.log && echo "Welcome to Broiler" && rm -rf /usr/bin/RunBroiler.sh && rm -rf /usr/bin/BiscuitOS-Broiler-default  && exit 0' >> ${RC}
echo '[ -f /etc/init.d/rcS.broiler ] && RunBroiler.sh' >> ${RC}
echo '[ ! -f /etc/init.d/rcS.broiler ] && rm -rf /usr/bin/RunBroiler.sh' >> ${RC}

### fstab
RC=${ROOTFS_PATH}/etc/fstab
## Auto create fstab file
cat << EOF > ${RC}
proc /proc proc defaults 0 0
tmpfs /tmp tmpfs defaults 0 0
sysfs /sys sysfs defaults 0 0
tmpfs /dev tmpfs defaults 0 0
tmpfs /dev/shm tmpfs defaults 0 0
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

## Hosts
RC=${ROOTFS_PATH}/etc/hosts
cat << EOF > ${RC}
127.0.0.1 localhost
127.0.1.1 BiscuitOS
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
	if [ ${SUPPORT_LIB26} = "Y" -a ${ARCH_NAME} = "arm" ]; then
		LIBS_PATH_IN=${CROSS_PATH}/${CROSS_COMPILE}/libc/lib
		if [ -d ${LIBS_PATH_IN} ]; then
			cp -arf ${LIBS_PATH_IN}/* ${ROOTFS_PATH}/lib/
		fi
	elif [ ${SUPPORT_LIB2611} = "Y" -a ${ARCH_NAME} = "arm" ]; then
		LIBS_PATH_IN=${CROSS_PATH}/${CROSS_COMPILE}/lib
		if [ -d ${LIBS_PATH_IN} ]; then
			cp -arf ${LIBS_PATH_IN}/* ${ROOTFS_PATH}/lib/
		fi
	else
		LIBS_PATH_IN=${CROSS_PATH}/${CROSS_COMPILE}/libc/lib
		if [ -d ${LIBS_PATH_IN} ]; then
			cp -arf ${LIBS_PATH_IN}/* ${ROOTFS_PATH}/lib/
		else
			# X86/i386
			[ ${ARCH_NAME}Y = "x86Y" ] && LIBS_PATH_IN=/lib/i386-linux-gnu
			[ ${ARCH_NAME}Y = "x86_64Y" ] && LIBS_PATH_IN=/lib/x86_64-linux-gnu
			if [ ${ARCH_NAME}Y = "x86_64Y" ]; then
				mkdir -p ${ROOTFS_PATH}/lib64/
				mkdir -p ${ROOTFS_PATH}/usr/lib/
				# [ -f /usr/lib/x86_64-linux-gnu/libnuma.so ] && cp -rf /usr/lib/x86_64-linux-gnu/libnuma.* ${ROOTFS_PATH}/usr/lib/
				[ -f /usr/lib/x86_64-linux-gnu/libstdc++.so.6 ] && cp -rf /usr/lib/x86_64-linux-gnu/libstdc++.so.* ${ROOTFS_PATH}/usr/lib/
				[ -f /usr/lib/x86_64-linux-gnu/libasan.so.4 ] && cp -rf /usr/lib/x86_64-linux-gnu/libasan.so.4* ${ROOTFS_PATH}/usr/lib/
				if [ ${UBUNTU}X == "24X" ]; then
				  sudo mkdir -p ${ROOTFS_PATH}/usr/lib64/
				  [ ! -f ${ROOTFS_PATH}/lib64/ld-linux-x86-64.so.2 ] && sudo cp -rfa /lib/x86_64-linux-gnu/ld-linux-x86-64.so.2 ${ROOTFS_PATH}/lib64/
				  [ ! -f ${ROOTFS_PATH}/usr/lib/libstdc++.so.6 ] && sudo cp -rfa /lib/x86_64-linux-gnu/libstdc++.so.* ${ROOTFS_PATH}/usr/lib/
				  [ ! -f ${ROOTFS_PATH}/usr/lib/libc.so.6 ] && sudo cp -rfa /lib/x86_64-linux-gnu/libc.so.* ${ROOTFS_PATH}/usr/lib/
				elif [ ${UBUNTU}X == "22X" ]; then
				  sudo mkdir -p ${ROOTFS_PATH}/usr/lib64/
				  [ ! -f ${ROOTFS_PATH}/lib64/ld-linux-x86-64.so.2 ] && sudo cp -rfa /lib/x86_64-linux-gnu/ld-linux-x86-64.so.2 ${ROOTFS_PATH}/lib64/
				  [ ! -f ${ROOTFS_PATH}/usr/lib/libstdc++.so.6 ] && sudo cp -rfa /lib/x86_64-linux-gnu/libstdc++.so.* ${ROOTFS_PATH}/usr/lib/
				  [ ! -f ${ROOTFS_PATH}/usr/lib/libc.so.6 ] && sudo cp -rfa /lib/x86_64-linux-gnu/libc.so.* ${ROOTFS_PATH}/usr/lib/
				elif [ ${UBUNTU}X == "20X" ]; then
				  sudo mkdir -p ${ROOTFS_PATH}/usr/lib64/
				  [ ! -f ${ROOTFS_PATH}/lib64/ld-linux-x86-64.so.2 ] && sudo cp -rfa /lib/x86_64-linux-gnu/ld-* ${ROOTFS_PATH}/lib64/
				  [ ! -f ${ROOTFS_PATH}/usr/lib/libstdc++.so.6 ] && sudo cp -rfa /lib/x86_64-linux-gnu/libstdc++.so.* ${ROOTFS_PATH}/usr/lib/
				  [ ! -f ${ROOTFS_PATH}/usr/lib/libz.so.1 ] && sudo cp -rfa /lib/x86_64-linux-gnu/libz.so.* ${ROOTFS_PATH}/usr/lib/
				  [ ! -f ${ROOTFS_PATH}/usr/lib/libresolv.so.2 ] && sudo cp -rfa /lib/x86_64-linux-gnu/libresolv*.* ${ROOTFS_PATH}/usr/lib/
				  [ ! -f ${ROOTFS_PATH}/usr/lib/libudev.so.1 ] && sudo cp -rfa /lib/x86_64-linux-gnu/libudev.so.* ${ROOTFS_PATH}/usr/lib/
				  [ ! -f ${ROOTFS_PATH}/usr/lib/libc.so.6 ] && sudo cp -rfa /lib/x86_64-linux-gnu/libc.so.6 ${ROOTFS_PATH}/usr/lib/ && sudo cp -rfa /lib/x86_64-linux-gnu/libc-*.so ${ROOTFS_PATH}/usr/lib/
				  [ ! -f ${ROOTFS_PATH}/usr/lib/libpthread.so.0 ] && sudo cp -rfa /lib/x86_64-linux-gnu/libpthread* ${ROOTFS_PATH}/usr/lib/
				  [ ! -f ${ROOTFS_PATH}/usr/lib/liblzma.so.5 ] && sudo cp -rfa /lib/x86_64-linux-gnu/liblzma.so.* ${ROOTFS_PATH}/usr/lib/
				  [ ! -f ${ROOTFS_PATH}/lib/librt.so.1 ] && sudo cp -rfa /lib/x86_64-linux-gnu/librt* ${ROOTFS_PATH}/lib/
				  [ ! -f ${ROOTFS_PATH}/lib/libm.so.6 ] && sudo cp -rfa /lib/x86_64-linux-gnu/libm* ${ROOTFS_PATH}/lib/
				  [ ! -f ${ROOTFS_PATH}/lib/libdl.so.2 ] && sudo cp -rfa /lib/x86_64-linux-gnu/libdl* ${ROOTFS_PATH}/lib/
				  [ ! -f ${ROOTFS_PATH}/lib/libelf.so.1 ] && sudo cp -rfa /lib/x86_64-linux-gnu/libelf* ${ROOTFS_PATH}/lib/
				  [ ! -f ${ROOTFS_PATH}/lib/libcrypto.so.1.1 ] && sudo cp -rfa /lib/x86_64-linux-gnu/libcrypto.so.* ${ROOTFS_PATH}/lib/
				  [ ! -f ${ROOTFS_PATH}/lib/libslang.so.2 ] && sudo cp -rfa /lib/x86_64-linux-gnu/libslang.so.* ${ROOTFS_PATH}/lib/
				  [ ! -f ${ROOTFS_PATH}/lib/libpython3.8.so.1.0 ] && sudo cp -rfa /lib/x86_64-linux-gnu/libpython3.8.so.* ${ROOTFS_PATH}/lib/
				  [ ! -f ${ROOTFS_PATH}/lib/libbfd-2.34-system.so ] && sudo cp -rfa /lib/x86_64-linux-gnu/libbfd-2.34-system.so ${ROOTFS_PATH}/lib/
				  [ ! -f ${ROOTFS_PATH}/lib/libopcodes-2.34-system.so ] && sudo cp -rfa /lib/x86_64-linux-gnu/libopcodes-2.34-system.so ${ROOTFS_PATH}/lib/
				  [ ! -f ${ROOTFS_PATH}/lib/libcap.so.2 ] && sudo cp -rfa /lib/x86_64-linux-gnu/libcap.so.* ${ROOTFS_PATH}/lib/
				  [ ! -f ${ROOTFS_PATH}/lib/libexpat.so.1 ] && sudo cp -rfa /lib/x86_64-linux-gnu/libexpat.so.* ${ROOTFS_PATH}/lib/
				  [ ! -f ${ROOTFS_PATH}/lib/libutil.so.1 ] && sudo cp -rfa /lib/x86_64-linux-gnu/libutil* ${ROOTFS_PATH}/lib/
				  [ ! -f ${ROOTFS_PATH}/lib/libgcc_s.so.1 ] && sudo cp -rfa /lib/x86_64-linux-gnu/libgcc_s.so.* ${ROOTFS_PATH}/lib/
				  [ ! -f ${ROOTFS_PATH}/lib/libblkid.so.1 ] && sudo cp -rfa /lib/x86_64-linux-gnu/libblkid.so.1* ${ROOTFS_PATH}/lib/
				  [ ! -f ${ROOTFS_PATH}/lib/libuuid.so.1 ] && sudo cp -rfa /lib/x86_64-linux-gnu/libuuid.so.1* ${ROOTFS_PATH}/lib/
				  [ ! -f ${ROOTFS_PATH}/lib/libreadline.so.5 ] && sudo cp -rfa /lib/x86_64-linux-gnu/libreadline.so.* ${ROOTFS_PATH}/lib/
				  [ ! -f ${ROOTFS_PATH}/lib/libdevmapper.so.1.02.1 ] && sudo cp -rfa /lib/x86_64-linux-gnu/libdevmapper.so.1.02.1 ${ROOTFS_PATH}/lib/
				  [ ! -f ${ROOTFS_PATH}/lib/libtinfo.so.6 ] && sudo cp -rfa /lib/x86_64-linux-gnu/libtinfo.so.* ${ROOTFS_PATH}/lib/
				  [ ! -f ${ROOTFS_PATH}/lib/libselinux.so.1 ] && sudo cp -rfa /lib/x86_64-linux-gnu/libselinux.so.1 ${ROOTFS_PATH}/lib/
				  [ ! -f ${ROOTFS_PATH}/lib/libpcre2-8.so.0 ] && sudo cp -rfa /lib/x86_64-linux-gnu/libpcre2-8.so.* ${ROOTFS_PATH}/lib/
				else
				  cp -rfa /lib64/* ${ROOTFS_PATH}/lib64/
				  cp -arf ${LIBS_PATH_IN}/* ${ROOTFS_PATH}/lib64/
				  cp -arf ${LIBS_PATH_IN}/* ${ROOTFS_PATH}/lib/
				fi
			else
				#cp -arf ${LIBS_PATH_IN}/* ${ROOTFS_PATH}/lib/
				mkdir -p ${ROOTFS_PATH}/usr/lib/
				[ -f /usr/lib/i386-linux-gnu/libstdc++.so.6 ] && cp -rf /usr/lib/i386-linux-gnu/libstdc++.so.* ${ROOTFS_PATH}/usr/lib/
				[ ! -f ${ROOTFS_PATH}/lib/ld-2.31.so ] && sudo cp -rfa /lib/i386-linux-gnu/ld-* ${ROOTFS_PATH}/lib/
				[ ! -f ${ROOTFS_PATH}/lib/libc.so.6 ] && sudo cp -rfa /lib/i386-linux-gnu/libc* ${ROOTFS_PATH}/lib/
			fi
		fi
	fi
	sudo rm -rf ${ROOTFS_PATH}/lib/*.a
fi

## BiscuitOS/Broiler Scripts
[ ! -d ${ROOTFS_PATH}/usr/bin/ ] && sudo mkdir -p ${ROOTFS_PATH}/usr/bin/
sudo cp -rf ${ROOT}/scripts/package/KRunBiscuitOS.sh ${ROOTFS_PATH}/usr/bin/

mkdir -p ${ROOTFS_PATH}/dev/
sudo mknod ${ROOTFS_PATH}/dev/tty1 c 4 1
sudo mknod ${ROOTFS_PATH}/dev/tty2 c 4 2
sudo mknod ${ROOTFS_PATH}/dev/tty3 c 4 3
sudo mknod ${ROOTFS_PATH}/dev/tty4 c 4 4
sudo mknod ${ROOTFS_PATH}/dev/console c 5 1
sudo mknod ${ROOTFS_PATH}/dev/null c 1 3

## Change root
if [ ${UBUNTU}X != "24X" ]; then
	sudo chown root:root ${ROOTFS_PATH}/* -R
else
	sudo chown root.root ${ROOTFS_PATH}/* -R
fi
mkdir -p ${OUTPUT}/Hardware

if [ ! -f ${OUTPUT}/Hardware/ROOTFS-SIZE.info ]; then
	ROOTFS_IMG_SIZE=0
else
	ROOTFS_IMG_SIZE=$(cat ${OUTPUT}/Hardware/ROOTFS-SIZE.info)
fi

if [ ${SUPPORT_RAMDISK}X = "NX" -a -f ${OUTPUT}/Hardware/BiscuitOS.img -a ${ROOTFS_IMG_SIZE} = ${DISK_SIZE} ]; then
	mkdir -p ${OUTPUT}/rootfs/tmpfs
	sudo mount -t ${FS_TYPE} ${OUTPUT}/Hardware/BiscuitOS.img ${OUTPUT}/rootfs/tmpfs/ -o loop
	sudo rm -rf ${OUTPUT}/rootfs/tmpfs/*
	sudo cp -raf ${OUTPUT}/rootfs/${ROOTFS_NAME}/*  ${OUTPUT}/rootfs/tmpfs/
	sync
	sudo umount ${OUTPUT}/rootfs/tmpfs
else
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
			mv ${OUTPUT}/rootfs/ramdisk.gz ${OUTPUT}/Hardware/BiscuitOS.img
		else
			mkimage -n "ramdisk" -A arm -O linux -T ramdisk -C gzip -d ${OUTPUT}/rootfs/ramdisk.gz ${OUTPUT}/Hardware/BiscuitOS.img
		fi
		sudo rm -rf ${OUTPUT}/rootfs/ramdisk
	else
		# Support HardDisk
		mv ${OUTPUT}/rootfs/ramdisk ${OUTPUT}/Hardware/BiscuitOS.img
	fi
	# DISK-SIZE
	echo ${DISK_SIZE} > ${OUTPUT}/Hardware/ROOTFS-SIZE.info
fi

sudo rm -rf ${OUTPUT}/rootfs/tmpfs
[ -d ${OUTPUT}/rootfs/rootfs ] && sudo rm -rf ${OUTPUT}/rootfs/rootfs
ln -s ${OUTPUT}/rootfs/${ROOTFS_NAME} ${OUTPUT}/rootfs/rootfs

## Establish a freeze disk
FREEZE_DISK=Freeze.img
[ ! ${FREEZE_SIZE} ] && FREEZE_SIZE=1024
if [ ! -f ${OUTPUT}/Hardware/${FREEZE_DISK} ]; then
       	dd bs=1M count=${FREEZE_SIZE} if=/dev/zero of=${OUTPUT}/Hardware/${FREEZE_DISK} > /dev/null 2>&1
	sync
	mkfs.ext4 ${OUTPUT}/Hardware/${FREEZE_DISK}
fi
if [ ${SUPPORT_VDB} != N ]; then
	INFO=N
	[ -f ${OUTPUT}/Hardware/VDB.info ] && INFO=`cat ${OUTPUT}/Hardware/VDB.info`
	if [ $INFO == N -o $INFO != ${SUPPORT_VDB} ]; then
		dd bs=1M count=16 if=/dev/zero of=${OUTPUT}/Hardware/VDB.img > /dev/null 2>&1
		sync
		mkfs.${SUPPORT_VDB} ${OUTPUT}/Hardware/VDB.img
		echo "${SUPPORT_VDB}" > ${OUTPUT}/Hardware/VDB.info
	fi
fi
if [ ${SUPPORT_VDC} != N ]; then
	INFO=N
	[ -f ${OUTPUT}/Hardware/VDC.info ] && INFO=`cat ${OUTPUT}/Hardware/VDC.info`
	if [ $INFO == N -o $INFO != ${SUPPORT_VDC} ]; then
		dd bs=1M count=16 if=/dev/zero of=${OUTPUT}/Hardware/VDC.img > /dev/null 2>&1
		sync
		mkfs.${SUPPORT_VDC} ${OUTPUT}/Hardware/VDC.img
		echo "${SUPPORT_VDC}" > ${OUTPUT}/Hardware/VDC.info
	fi
fi
if [ ${SUPPORT_VDD} != N ]; then
	INFO=N
	[ -f ${OUTPUT}/Hardware/VDD.info ] && INFO=`cat ${OUTPUT}/Hardware/VDD.info`
	if [ $INFO == N -o $INFO != ${SUPPORT_VDD} ]; then
		dd bs=1M count=16 if=/dev/zero of=${OUTPUT}/Hardware/VDD.img > /dev/null 2>&1
		sync
		mkfs.${SUPPORT_VDD} ${OUTPUT}/Hardware/VDD.img
		echo "${SUPPORT_VDD}" > ${OUTPUT}/Hardware/VDD.info
	fi
fi
if [ ${SUPPORT_VDE} != N ]; then
	INFO=N
	[ -f ${OUTPUT}/Hardware/VDE.info ] && INFO=`cat ${OUTPUT}/Hardware/VDE.info`
	if [ $INFO == N -o $INFO != ${SUPPORT_VDE} ]; then
		dd bs=1M count=16 if=/dev/zero of=${OUTPUT}/Hardware/VDE.img > /dev/null 2>&1
		sync
		mkfs.${SUPPORT_VDE} ${OUTPUT}/Hardware/VDE.img
		echo "${SUPPORT_VDE}" > ${OUTPUT}/Hardware/VDE.info
	fi
fi
if [ ${SUPPORT_VDF} != N ]; then
	INFO=N
	[ -f ${OUTPUT}/Hardware/VDF.info ] && INFO=`cat ${OUTPUT}/Hardware/VDF.info`
	if [ $INFO == N -o $INFO != ${SUPPORT_VDF} ]; then
		dd bs=1M count=16 if=/dev/zero of=${OUTPUT}/Hardware/VDF.img > /dev/null 2>&1
		sync
		mkfs.${SUPPORT_VDF} ${OUTPUT}/Hardware/VDF.img
		echo "${SUPPORT_VDF}" > ${OUTPUT}/Hardware/VDF.info
	fi
fi
if [ ${SUPPORT_VDG} != N ]; then
        INFO=N
        [ -f ${OUTPUT}/Hardware/VDG.info ] && INFO=`cat ${OUTPUT}/Hardware/VDG.info`
        if [ $INFO == N -o $INFO != ${SUPPORT_VDG} ]; then
                dd bs=1M count=16 if=/dev/zero of=${OUTPUT}/Hardware/VDG.img > /dev/null 2>&1
                sync
                mkfs.${SUPPORT_VDG} ${OUTPUT}/Hardware/VDG.img
                echo "${SUPPORT_VDG}" > ${OUTPUT}/Hardware/VDG.info
        fi
fi
if [ ${SUPPORT_VDH} != N ]; then
        INFO=N
        [ -f ${OUTPUT}/Hardware/VDH.info ] && INFO=`cat ${OUTPUT}/Hardware/VDH.info`
        if [ $INFO == N -o $INFO != ${SUPPORT_VDH} ]; then
                dd bs=1M count=16 if=/dev/zero of=${OUTPUT}/Hardware/VDH.img > /dev/null 2>&1
                sync
                mkfs.${SUPPORT_VDH} ${OUTPUT}/Hardware/VDH.img
                echo "${SUPPORT_VDH}" > ${OUTPUT}/Hardware/VDH.info
        fi
fi
if [ ${SUPPORT_VDI} != N ]; then
        INFO=N
        [ -f ${OUTPUT}/Hardware/VDI.info ] && INFO=`cat ${OUTPUT}/Hardware/VDI.info`
        if [ $INFO == N -o $INFO != ${SUPPORT_VDI} ]; then
                dd bs=1M count=16 if=/dev/zero of=${OUTPUT}/Hardware/VDI.img > /dev/null 2>&1
                sync
                mkfs.${SUPPORT_VDI} ${OUTPUT}/Hardware/VDI.img
                echo "${SUPPORT_VDI}" > ${OUTPUT}/Hardware/VDI.info
        fi
fi
if [ ${SUPPORT_VDJ} != N ]; then
        INFO=N
        [ -f ${OUTPUT}/Hardware/VDJ.info ] && INFO=`cat ${OUTPUT}/Hardware/VDJ.info`
        if [ $INFO == N -o $INFO != ${SUPPORT_VDJ} ]; then
                dd bs=1M count=16 if=/dev/zero of=${OUTPUT}/Hardware/VDJ.img > /dev/null 2>&1
                sync
		if [ ${SUPPORT_VDJ} == cramfs ]; then
			mkdir -p .tmp
			dmesg > .tmp/BiscuitOS.txt
			mkfs.cramfs .tmp/ ${OUTPUT}/Hardware/VDJ.img
			rm -rf .tmp
		else
                	mkfs.${SUPPORT_VDJ} ${OUTPUT}/Hardware/VDJ.img
		fi
                echo "${SUPPORT_VDJ}" > ${OUTPUT}/Hardware/VDJ.info
        fi
fi

if [ ${SUPPORT_VDK} != N ]; then
        INFO=N
        [ -f ${OUTPUT}/Hardware/VDK.info ] && INFO=`cat ${OUTPUT}/Hardware/VDK.info`
        if [ $INFO == N -o $INFO != ${SUPPORT_VDK} ]; then
                dd bs=1M count=16 if=/dev/zero of=${OUTPUT}/Hardware/VDK.img > /dev/null 2>&1
                sync
		if [ ${SUPPORT_VDK} == jffs2 ]; then
                        mkdir -p .tmp
                        dmesg > .tmp/BiscuitOS.txt
                        mkfs.jffs2 -d .tmp/ -l -e 0x200000 -o ${OUTPUT}/Hardware/VDK.img
                        rm -rf .tmp
                else
                	mkfs.${SUPPORT_VDK} ${OUTPUT}/Hardware/VDK.img
		fi
                echo "${SUPPORT_VDK}" > ${OUTPUT}/Hardware/VDK.info
        fi
fi

if [ ${SUPPORT_VDL} != N ]; then
        INFO=N
        [ -f ${OUTPUT}/Hardware/VDL.info ] && INFO=`cat ${OUTPUT}/Hardware/VDL.info`
        if [ $INFO == N -o $INFO != ${SUPPORT_VDL} ]; then
                dd bs=1M count=16 if=/dev/zero of=${OUTPUT}/Hardware/VDL.img > /dev/null 2>&1
                sync
                mkfs.${SUPPORT_VDL} ${OUTPUT}/Hardware/VDL.img
                echo "${SUPPORT_VDL}" > ${OUTPUT}/Hardware/VDL.info
        fi
fi

if [ ${SUPPORT_VDM} != N ]; then
        INFO=N
        [ -f ${OUTPUT}/Hardware/VDM.info ] && INFO=`cat ${OUTPUT}/Hardware/VDM.info`
        if [ $INFO == N -o $INFO != ${SUPPORT_VDM} ]; then
                dd bs=1M count=16 if=/dev/zero of=${OUTPUT}/Hardware/VDM.img > /dev/null 2>&1
                sync
		if [ ${SUPPORT_VDM} == squashfs ]; then
                        mkdir -p .tmp
                        dmesg > .tmp/BiscuitOS.txt
			rm ${OUTPUT}/Hardware/VDM.img 
                        mksquashfs .tmp/ ${OUTPUT}/Hardware/VDM.img
                        rm -rf .tmp
		else
                	mkfs.${SUPPORT_VDM} ${OUTPUT}/Hardware/VDM.img
		fi
                echo "${SUPPORT_VDM}" > ${OUTPUT}/Hardware/VDM.info
        fi
fi
if [ ${SUPPORT_VDN} != N ]; then
        INFO=N
        [ -f ${OUTPUT}/Hardware/VDN.info ] && INFO=`cat ${OUTPUT}/Hardware/VDN.info`
        if [ $INFO == N -o $INFO != ${SUPPORT_VDN} ]; then
		if [ ${SUPPORT_VDN} == btrfs ]; then
                	dd bs=1M count=96 if=/dev/zero of=${OUTPUT}/Hardware/VDN.img > /dev/null 2>&1
                	sync
                        mkfs.btrfs -m single ${OUTPUT}/Hardware/VDN.img
                else
                	dd bs=1M count=16 if=/dev/zero of=${OUTPUT}/Hardware/VDN.img > /dev/null 2>&1
                	sync
                	mkfs.${SUPPORT_VDN} ${OUTPUT}/Hardware/VDN.img
		fi
                echo "${SUPPORT_VDN}" > ${OUTPUT}/Hardware/VDN.info
        fi
fi
if [ ${SUPPORT_VDO} != N ]; then
        INFO=N
        [ -f ${OUTPUT}/Hardware/VDO.info ] && INFO=`cat ${OUTPUT}/Hardware/VDO.info`
        if [ $INFO == N -o $INFO != ${SUPPORT_VDO} ]; then
                dd bs=1M count=64 if=/dev/zero of=${OUTPUT}/Hardware/VDO.img > /dev/null 2>&1
                sync
		if [ ${SUPPORT_VDO} == reiserfs ]; then
			LOOP=`sudo losetup -f`
			sudo losetup ${LOOP} ${OUTPUT}/Hardware/VDO.img
			sudo mkfs.reiserfs -f ${LOOP}
			sudo losetup -d ${LOOP}
		else
                	mkfs.${SUPPORT_VDO} ${OUTPUT}/Hardware/VDO.img
		fi
                echo "${SUPPORT_VDO}" > ${OUTPUT}/Hardware/VDO.info
        fi
fi
if [ ${SUPPORT_VDP} != N ]; then
        INFO=N
        [ -f ${OUTPUT}/Hardware/VDP.info ] && INFO=`cat ${OUTPUT}/Hardware/VDP.info`
        if [ $INFO == N -o $INFO != ${SUPPORT_VDP} -o ${SUPPORT_VDP} == jfs ]; then
                dd bs=1M count=16 if=/dev/zero of=${OUTPUT}/Hardware/VDP.img > /dev/null 2>&1
                sync
		if [ ${SUPPORT_VDP} == jfs ]; then
                	mkfs.${SUPPORT_VDP} -f ${OUTPUT}/Hardware/VDP.img
		else
                	mkfs.${SUPPORT_VDP} ${OUTPUT}/Hardware/VDP.img
		fi
                echo "${SUPPORT_VDP}" > ${OUTPUT}/Hardware/VDP.info
        fi
fi
if [ ${SUPPORT_VDQ} != N ]; then
        INFO=N
        [ -f ${OUTPUT}/Hardware/VDQ.info ] && INFO=`cat ${OUTPUT}/Hardware/VDQ.info`
        if [ $INFO == N -o $INFO != ${SUPPORT_VDQ} ]; then
                dd bs=1M count=16 if=/dev/zero of=${OUTPUT}/Hardware/VDQ.img > /dev/null 2>&1
                sync
                mkfs.${SUPPORT_VDQ} ${OUTPUT}/Hardware/VDQ.img
                echo "${SUPPORT_VDQ}" > ${OUTPUT}/Hardware/VDQ.info
        fi
fi
if [ ${SUPPORT_VDR} != N ]; then
        INFO=N
        [ -f ${OUTPUT}/Hardware/VDR.info ] && INFO=`cat ${OUTPUT}/Hardware/VDR.info`
        if [ $INFO == N -o $INFO != ${SUPPORT_VDR} ]; then
                dd bs=1M count=16 if=/dev/zero of=${OUTPUT}/Hardware/VDR.img > /dev/null 2>&1
                sync
		if [ ${SUPPORT_VDR} == gfs2 ]; then
                	mkfs.${SUPPORT_VDR} -O -p lock_nolock ${OUTPUT}/Hardware/VDR.img
		else
                	mkfs.${SUPPORT_VDR} ${OUTPUT}/Hardware/VDR.img
		fi
                echo "${SUPPORT_VDR}" > ${OUTPUT}/Hardware/VDR.info
        fi
fi
if [ ${SUPPORT_VDS} != N ]; then
        INFO=N
        [ -f ${OUTPUT}/Hardware/VDS.info ] && INFO=`cat ${OUTPUT}/Hardware/VDS.info`
        if [ $INFO == N -o $INFO != ${SUPPORT_VDS} ]; then
                dd bs=1M count=64 if=/dev/zero of=${OUTPUT}/Hardware/VDS.img > /dev/null 2>&1
                sync
                mkfs.${SUPPORT_VDS} ${OUTPUT}/Hardware/VDS.img
                echo "${SUPPORT_VDS}" > ${OUTPUT}/Hardware/VDS.info
        fi
fi

## MEMORY FLUID
sudo mkdir -p ${ROOTFS_PATH}/usr/share/ > /dev/null 2>&1
if [ -f ${OUTPUT}/RunBiscuitOS.sh ]; then
	if [ ! -f ${ROOT}/dl/MEMORY_FLUID/BiscuitOS_memory_fluid.h.${PROJECT_NAME} ]; then
		[ -f ${OUTPUT}/linux/linux/BiscuitOS-MEMORY-FLUID ] && rm -rf ${OUTPUT}/linux/linux/BiscuitOS-MEMORY-FLUID
		echo ""
		echo ""
		echo "Pls Run 'make install_tools' !"
		echo ""
		echo ""
		exit -1
	fi
	if [ ${ARCH_NAME}X = "x86X" ]; then
		sudo cp -rf ${ROOT}/dl/MEMORY_FLUID/BiscuitOS_memory_fluid.h.${PROJECT_NAME} ${ROOTFS_PATH}/usr/share/BiscuitOS_memory_fluid.h > /dev/null 2>&1
	elif [ ${ARCH_NAME}X = "x86_64X" ]; then
		sudo cp -rf ${ROOT}/dl/MEMORY_FLUID/BiscuitOS_memory_fluid.h.${PROJECT_NAME} ${ROOTFS_PATH}/usr/share/BiscuitOS_memory_fluid.h > /dev/null 2>&1
	elif [ ${ARCH_NAME}X = "armX" ]; then
		sudo cp -rf ${ROOT}/dl/MEMORY_FLUID/BiscuitOS_memory_fluid.h.${PROJECT_NAME} ${ROOTFS_PATH}/usr/share/BiscuitOS_memory_fluid.h > /dev/null 2>&1
	elif [ ${ARCH_NAME}X = "arm64X" ]; then
		sudo cp -rf ${ROOT}/dl/MEMORY_FLUID/BiscuitOS_memory_fluid.h.${PROJECT_NAME} ${ROOTFS_PATH}/usr/share/BiscuitOS_memory_fluid.h > /dev/null 2>&1
	fi
fi

## Auto build README.md
${ROOT}/scripts/rootfs/readme.sh $1 $2 $3 $4 $5 $6 $7 $8 $9 ${10} ${11} \
					${12} ${13} ${14} ${15} ${16} \
					${FREEZE_SIZE}X ${DISK_SIZE}X \
					ARG19 ARG20 ${SUPPORT_HYPV}X ${SUPPORT_NUMA} ${SUPPORT_KVM} \
                                        ARG24 ARG25 \
                                        ${26}X ${27}X ${28}X ${29}X ${30}X "${31}X" ${32}X ${33}X ${34}X \
					${35}X ${36}X ${37}X ${38}X ${39}X ${40}X \
					${41}X ${42}X ${43}X ${44}X ${45}X ${46}X ${SUPPORT_VDB} ${SUPPORT_VDC} \
					${SUPPORT_VDD} ${SUPPORT_VDE} ${SUPPORT_VDF} \
					${SUPPORT_VDG} ${SUPPORT_VDH} ${SUPPORT_VDI} \
					${SUPPORT_VDJ} ${SUPPORT_VDK} ${SUPPORT_VDL} \
					${SUPPORT_VDM} ${SUPPORT_VDN} ${SUPPORT_VDO} \
					${SUPPORT_VDP} ${SUPPORT_VDQ} ${SUPPORT_VDR} \
					${SUPPORT_VDS} ${SUPPORT_DEFAULT_DISK} \
					${DEFAULT_LOGLEVEL} ${SUPPORT_SWAP} \
					${SUPPORT_ZSWAP} ${SUPPORT_HW_PMEM}
                                        
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
echo -e "\033[31m http://www.biscuitos.cn/blog/BiscuitOS_Catalogue/ \033[0m"
echo ""
echo "***********************************************"
