#!/bin/bash

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
DTS=${ROOT}/board/$2

## estabish output direct
mkdir -p ${ROOT}/output/DTS/

## establish dtb
dtc -I dts -O dtb -o ${ROOT}/output/DTS/system_$3.dtb ${DTS}

## Install dtb
cp -rf ${ROOT}/output/DTS/system_$3.dtb ${ROOT}/kernel/linux_$3/system.dtb
