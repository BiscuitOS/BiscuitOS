#!/bin/bash

#
# mknode /dev/*
#
ROOT=$1
DEV_STAGING_DIR=${ROOT}/output/rootfs/dev

# The minor of tty-device
tty_list=(
0 1 2 3 4 5 6 7 8 9 10
)

# The minor of hard-device
hd_list=(
0 1 2 3 4 5 6 7 8
)

# Create tty device node on /dev/
for i in ${tty_list[@]}; do
	# Create tty node on /dev/
	if [ ! -c ${DEV_STAGING_DIR}/tty${i} ]; then
		sudo mknod ${DEV_STAGING_DIR}/tty${i} c 4 $i
		sudo chown root.tty ${DEV_STAGING_DIR}/tty${i}
	fi
done

# Create hd device node on /dev/
for i in ${hd_list[@]}; do
	# Create hd node on /dev/
	if [ ! -b ${DEV_STAGING_DIR}/hd${i} ]; then
		sudo mknod ${DEV_STAGING_DIR}/hd${i} b 3 $i
		sudo chown root.root ${DEV_STAGING_DIR}/hd${i}
	fi
done

