#/bin/bash

set -e
# Establish Rootfs.
#
# (C) 2019.01.15 BiscuitOS.img <buddy.zhang@aliyun.com>
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
KERNEL_VER=${7%X}

ARCH=riscv${CROSS_TOOL:5:2}
[ ${ARCH} = "riscv64" ] && ABI=lp64d
[ ${ARCH} = "riscv32" ] && ABI=ilp32d

# CROSS
CROSS_DIR=${OUTPUT}/${CROSS_TOOL}/${CROSS_TOOL}

rm -rf ${OUTPUT}/rootfs/
mkdir -p ${OUTPUT}/rootfs/${ROOTFS_NAME}
cp ${BUSYBOX}/_install/*  ${OUTPUT}/rootfs/${ROOTFS_NAME} -raf 
mkdir -p ${OUTPUT}/rootfs/${ROOTFS_NAME}/proc/
mkdir -p ${OUTPUT}/rootfs/${ROOTFS_NAME}/sys/
mkdir -p ${OUTPUT}/rootfs/${ROOTFS_NAME}/tmp/
mkdir -p ${OUTPUT}/rootfs/${ROOTFS_NAME}/root/
mkdir -p ${OUTPUT}/rootfs/${ROOTFS_NAME}/var/
mkdir -p ${OUTPUT}/rootfs/${ROOTFS_NAME}/mnt/
mkdir -p ${OUTPUT}/rootfs/${ROOTFS_NAME}/lib/
mkdir -p ${OUTPUT}/rootfs/${ROOTFS_NAME}/etc/init.d

### rcS
RC=${OUTPUT}/rootfs/${ROOTFS_NAME}/etc/init.d/rcS
## Auto create rcS file
cat << EOF > ${RC}
PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/bin:/mnt/Freeze/usr/bin:/mnt/Freeze/usr/sbin:/mnt/Freeze/usr/local/bin:
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
# Setup default gw
# -> route add default gw gatway_ipaddr

mkdir -p /dev/pts
mount -t devpts devpts /dev/pts
echo /sbin/mdev > /proc/sys/kernel/hotplug
mdev -s
/usr/sbin/telnetd &

# Mount Freeze Disk
mkdir -p /mnt/Freeze
mount -t ext4 /dev/vdb /mnt/Freeze > /dev/null 2>&1

echo " ____  _                _ _    ___  ____  "
echo "| __ )(_)___  ___ _   _(_) |_ / _ \/ ___| "
echo "|  _ \| / __|/ __| | | | | __| | | \___ \ "
echo "| |_) | \__ \ (__| |_| | | |_| |_| |___) |"
echo "|____/|_|___/\___|\__,_|_|\__|\___/|____/ "

echo "Welcome to BiscuitOS"
EOF
chmod 755 ${RC}

### fstab
RC=${OUTPUT}/rootfs/${ROOTFS_NAME}/etc/fstab
## Auto create fstab file
cat << EOF > ${RC}
proc /proc proc defaults 0 0
tmpfs /tmp tmpfs defaults 0 0
sysfs /sys sysfs defaults 0 0
tmpfs /dev tmpfs defaults 0 0
EOF
chmod 664 ${RC}

### inittab
RC=${OUTPUT}/rootfs/${ROOTFS_NAME}/etc/inittab
## Auto create initab file
cat << EOF > ${RC}
::sysinit:/etc/init.d/rcS
::respawn:-/bin/sh
::askfirst:-/bin/sh
::ctrlaltdel:/sbin/reboot
::shutdown:/bin/umount -a -r
EOF

## group
RC=${OUTPUT}/rootfs/${ROOTFS_NAME}/etc/group
cat << EOF > ${RC}
root::0:root
EOF

## passwd
RC=${OUTPUT}/rootfs/${ROOTFS_NAME}/etc/passwd
cat << EOF > ${RC}
root::0:0:root:/:/bin/sh
EOF

## passwd
RC=${OUTPUT}/rootfs/${ROOTFS_NAME}/etc/resolv.conf
cat << EOF > ${RC}
nameserver 1.2.4.8
nameserver 8.8.8.8
EOF

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

LDSO_NAME=ld-linux-${ARCH}-${ABI}.so.1
LDSO_TARGET=$(readlink ${CROSS_DIR}/sysroot/lib/${LDSO_NAME})

copy_libs $(dirname ${CROSS_DIR}/sysroot/lib/${LDSO_TARGET})/ ${OUTPUT}/rootfs/${ROOTFS_NAME}/lib/
copy_libs ${CROSS_DIR}/sysroot/usr/lib/ ${OUTPUT}/rootfs/${ROOTFS_NAME}/lib/

mkdir -p ${OUTPUT}/rootfs/${ROOTFS_NAME}/dev/
sudo mknod ${OUTPUT}/rootfs/${ROOTFS_NAME}/dev/tty1 c 4 1
sudo mknod ${OUTPUT}/rootfs/${ROOTFS_NAME}/dev/tty2 c 4 2
sudo mknod ${OUTPUT}/rootfs/${ROOTFS_NAME}/dev/tty3 c 4 3
sudo mknod ${OUTPUT}/rootfs/${ROOTFS_NAME}/dev/tty4 c 4 4
sudo mknod ${OUTPUT}/rootfs/${ROOTFS_NAME}/dev/console c 5 1
sudo mknod ${OUTPUT}/rootfs/${ROOTFS_NAME}/dev/null c 1 3
dd if=/dev/zero of=${OUTPUT}/BiscuitOS.img bs=1M count=150
mkfs.ext4 -F ${OUTPUT}/BiscuitOS.img
mkdir -p ${OUTPUT}/rootfs/tmpfs
sudo mount -t ext4 ${OUTPUT}/BiscuitOS.img ${OUTPUT}/rootfs/tmpfs/ -o loop
sudo cp -raf ${OUTPUT}/rootfs/${ROOTFS_NAME}/*  ${OUTPUT}/rootfs/tmpfs/
sync
sudo umount ${OUTPUT}/rootfs/tmpfs
rm -rf ${OUTPUT}/rootfs/tmpfs
[ -d ${OUTPUT}/rootfs/rootfs ] && rm -rf ${OUTPUT}/rootfs/rootfs
ln -s ${OUTPUT}/rootfs/${ROOTFS_NAME} ${OUTPUT}/rootfs/rootfs

## Establish a freeze disk
FREEZE_DISK=Freeze.img
FREEZE_SIZE=512
if [ ! -f ${OUTPUT}/${FREEZE_DISK} ]; then
       	dd bs=1M count=${FREEZE_SIZE} if=/dev/zero of=${OUTPUT}/${FREEZE_DISK}
	sync
	mkfs.ext4 -F ${OUTPUT}/${FREEZE_DISK}
fi

## Auto build README.md
${ROOT}/scripts/rootfs/readme.sh $1 $2 $3 $4 $5 $6 $7 $8 $9 ${10} ${11} \
					${12} ${13} ${14} ${15} ${16} \
					${FREEZE_DISK}X

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
