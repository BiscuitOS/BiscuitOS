#!/bin/bash

#
# This scripts is used to download and establish kernel of BiscuitOS
# Don't edit, if you want please mail to me :-)
#
# (C) 2018.07.23 BuddyZhang1 <buddy.zhang@aliyun.com>
# (C) 2018.08.20 BiscuitOS <buddy.biscuitos@gmail.com>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2 as
# published by the Free Software Foundation.
#

###
## Don't edit
ROOT=$3
kernel_version=$1

if [ ! -f ${ROOT}/dl/linux-${kernel_version}.tar.xz ]; then
  cd ${ROOT}/dl
  cd -
fi

if [ -d ${ROOT}/kernel/linux-${kernel_version} ]; then
  exit 0
fi

mkdir -p ${ROOT}/kernel/linux-${kernel_version}

cp -rf ${ROOT}/dl/linux-${kernel_version}.tar.xz ${ROOT}/kernel
cd ${ROOT}/kernel/
tar xvJf linux-${kernel_version}.tar.xz
rm -rf linux-${kernel_version}.tar.xz
cd ${ROOT}
