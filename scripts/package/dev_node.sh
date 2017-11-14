#!/bin/bash

#
# mknode /dev/*
#
ROOT=$1
STAGING_DIR=${ROOT}/output/rootfs/dev

tty_list=(
0 1 2 3 4 5 6 7 8 9 10
)

for i in ${tty_list[@]}; do
	# Create tty node on /dev/
	if [ ! -c ${STAGING_DIR}/tty${i} ]; then
		sudo mknod ${STAGING_DIR}/tty${i} c 4 $i
		sudo chown root.tty ${STAGING_DIR}/tty${i}
	fi
done
