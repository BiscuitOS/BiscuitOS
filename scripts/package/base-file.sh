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

if [ ! -d ${STAGING_DIR} ]; then
  mkdir -p ${STAGING_DIR}
fi
sudo cp -rfa ${ROOT}/package/base-file/* ${STAGING_DIR}/
. ${ROOT}/scripts/package/tmp_node.sh
exit 0

target_dir=(
dev
etc
usr
tmp
mnt
var
usr/root
usr/tmp
usr/var
usr/src
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
cp -rfa ${BASE_DIR}/usr/* ${STAGING_DIR}/usr/
