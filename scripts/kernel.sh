#!/bin/bash

#
# This scripts is used to download/update/compile kernel 
# (C) 2017.11.11 <buddy.zhang@aliyun.com>
#

# $1: ROOT
# $2: kernel version
# $3: git_site 
# $4: command

ROOT=$1
STAGING_KERNEL=${ROOT}/kernel

# prepare source code of kernel
if [ ! -d ${STAGING_KERNEL}/.git ]; then
  git clone $3 ${STAGING_KERNEL}
fi

# config kernel
if [ ! -f ${STAGING_KERNEL}/.config ]; then
  ${MAKE} -C ${STAGING_KERNEL} defconfig
fi
# compile kernel
if [ $4 == "make" ]; then
  ${MAKE} -C ${STAGING_KERNEL} clean
  ${MAKE} -C ${STAGING_KERNEL}
fi
