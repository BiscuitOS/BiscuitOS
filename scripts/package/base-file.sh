#!/bin/bash

#
# Build base-file on userland
#
# (C) 2017.11 <buddy.zhang@aliyun.com>

#
# $1: root dirent
# $2: version
# $3: web site
# $4: command
#
ROOT=$1
STAGING_DIR=${ROOT}/output/rootfs
BASE_DIR=${ROOT}/package/base-file

target_dir=(
dev
etc
usr
)

# prepare output
for dir in ${target_dir[@]}; do
	if [ ! -d ${STAGING_DIR}/${dir} ]; then
		mkdir -p ${STAGING_DIR}/${dir}
	fi
done

# Node create
. ${ROOT}/scripts/package/dev_node.sh

# install /etc profile to target
cp -rfa ${BASE_DIR}/etc/* ${STAGING_DIR}/etc/
