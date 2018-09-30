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
srctree=$3
github=$2
kernel_version=$1
kernel_magic=$4
fs_magic=$5
tag_version=$6
if [ ! -z $7 ]; then
  COREBOOT="y"
else
  COREBOOT="n"
fi

###
# Don't edit
KERN_SOURCE=${srctree}/dl/kernel
TARGET=${srctree}/kernel/linux_${kernel_version}
PATCH_DIR=${srctree}/target/kernel/patch/linux_${kernel_version}

download_kernel()
{
    mkdir -p ${KERN_SOURCE}
    git clone ${github} ${KERN_SOURCE}
    if [ $? -ne 0 ]; then
        echo -e "\e[1;31m Unable download kernel from ${github} \e[0m"
    fi
}

establish_kernel()
{
    if [ ! -d ${TARGET} ]; then
        cp -rf ${KERN_SOURCE} ${TARGET}
    fi
    cd ${TARGET}
    if [ $1 = "establish" ]; then
        if [ -d ${TARGET}/tools/means ]; then
            rm -rf ${TARGET}/tools/means
        fi
        git reset --hard ${tag_version} > /dev/null 2>&1
        git am ${PATCH_DIR}/*.patch > /dev/null 2>&1
    fi
    make distclean
    if [ ${kernel_magic} -gt 9 ]; then
        if [ ${fs_magic} -eq 0 ]; then
            if [ ${COREBOOT} == "y" ]; then
                make linux_minix_X_defconfig
            else
                make linux_minix_defconfig
            fi
        fi
        if [ ${fs_magic} -eq 1 ]; then
            if [ ${COREBOOT} == "y" ]; then
                make linux_ext2_X_defconfig
            else
                make linux_ext2_defconfig
            fi
        fi
        if [ ${fs_magic} -eq 2 ]; then
            make linux_msdos_defconfig
        fi
    else
        make defconfig
    fi
    cd - > /dev/null 2>&1
}

precheck()
{
    mkdir -p ${srctree}/dl ${srctree}/kernel
    if [ ! -d ${KERN_SOURCE} ]; then
        echo -e "\e[1;31m Download kernel from ${github} \e[0m"
        download_kernel
    fi
}

## Start working
precheck

### Download/nothing
if [ ! -d ${TARGET} ]; then
    establish_kernel establish
else
    establish_kernel configure
fi
