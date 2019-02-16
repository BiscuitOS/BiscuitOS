#!/bin/bash

set -e
#
# This scripts is used to download and establish kernel of BiscuitOS
# Don't edit, if you want please mail to me :-)
#
# (C) 2018.09.18 BuddyZhang1 <buddy.zhang@aliyun.com>
# (C) 2018.09.18 BiscuitOS <buddy.biscuitos@gmail.com>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2 as
# published by the Free Software Foundation.
#

### 
# Don't edit !!
##

ROOT=$1
DTS_DIR=${5%X}
DTS=${ROOT}/board/dts/${2%X}
KER_VER=${3%X}
PROJ=${4%X}

if [ ! -f ${DTS} ]; then
	echo -e "\033[31m ${DTS} doesn't exist! \033[0m"
	exit -1
fi

if [ -z ${KER_VER} ]; then
	KER_VER=non
fi

## estabish output direct
mkdir -p ${ROOT}/output/${PROJ}/${DTS_DIR}/

## establish dtb
dtc -I dts -O dtb -o ${ROOT}/output/${PROJ}/${DTS_DIR}/system_${KER_VER}.dtb ${DTS}

## Install dtb
if [ -f ${ROOT}/output/${PROJ}/${DTS_DIR}/system.dtb ]; then
	rm -rf ${ROOT}/output/${PROJ}/${DTS_DIR}/system.dtb
fi
ln -s ${ROOT}/output/${PROJ}/${DTS_DIR}/system_${KER_VER}.dtb ${ROOT}/output/${PROJ}/${DTS_DIR}/system.dtb
