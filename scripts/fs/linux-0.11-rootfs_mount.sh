#!/bin/bash
set -e

# Mount linux 0.11 Rootfs.
#
# (C) 2019.07.19 BiscuitOS <buddy.zhang@aliyun.com>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2 as
# published by the Free Software Foundation.

PWD=`pwd`
LOOPDEV=`sudo losetup -f`
OFFSET=18880512
IMAGE=${PWD}/BiscuitOS.img
ROOTFS=${PWD}/BiscuitOS_rootfs
CMD=${1}X

if [ ! -f ${FILE} ]; then
	echo "${FILE} doesn't exist.\n"
fi

if [ ${CMD} = "mountX" ]; then
	sudo losetup -o ${OFFSET} ${LOOPDEV} ${IMAGE}
	mkdir -p ${ROOTFS}
	sudo mount ${LOOPDEV} ${ROOTFS}

	echo "****************************"
	echo "Mount Path: ${ROOTFS}"
	echo "****************************"
elif [ ${CMD} = "umountX" ]; then
	sudo umount ${ROOTFS}
	rm -rf ${ROOTFS}
	sudo losetup -d ${LOOPDEV} > /dev/null 2>&1
elif [ ${CMD} = "helpX"]; then
	echo ""
	echo "Mount linux 0.11 rootfs"
	echo "    ./linux-0.11-rootfs_mount.sh mount"
	echo ""
	echo "Umount linux 0.11 rootfs"
	echo "    ./linux-0.11-rootfs_mount.sh umount"
else
	echo "You can input: ./linux-0.11-rootfs_mount.sh help"
fi
