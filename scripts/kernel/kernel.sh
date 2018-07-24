#!/bin/bash

#
# This scripts is used to download and establish kernel 
#
# (C) 2018.07.23 BiscuitOS <buddy.zhang@aliyun.com>
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

###
# Don't edit
KERN_SOURCE=${srctree}/dl/kernel
TARGET=${srctree}/kernel/linux_${kernel_version}
PATCH_DIR=${srctree}/target/kernel/patch/linux_${kernel_version}

### Kernel version
KVersion=(
"0.11"
"0.12"
"0.95.1"
"0.95.3"
"0.95a"
"0.96.1"
"0.97.1"
"0.98.1"
"0.99.1"
"1.0.1"
"1.0.1.1"
)

TagVersion=(
"v0.11.3"
"v0.12.1"
"v0.95.1"
"v0.95.3"
"v0.95a"
"v0.96.1"
"v0.97.1"
"v0.98.1"
"v0.99.1"
"v1.0.1"
"v1.0.1.1"
)

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
    cp -rf ${KERN_SOURCE} ${TARGET}
    ## Check and change source version
    j=0
    for i in ${KVersion[@]}; do
        if [ $i = ${kernel_version} ]; then
            cd ${TARGET}
            if [ -d ${TARGET}/tools/means ]; then
                rm -rf ${TARGET}/tools/means
            fi
            git reset --hard ${TagVersion[$j]} > /dev/null 2>&1
            git am ${PATCH_DIR}/*.patch
            if [ ${kernel_magic} -gt 9 ]; then
                if [ ${fs_magic} -eq 0 ]; then
                    make linux_minix_defconfig
                fi
                if [ ${fs_magic} -eq 1 ]; then
                    make linux_ext2_defconfig
                fi
                if [ ${fs_magic} -eq 2 ]; then
                    make linux_msdos_defconfig
                fi
            else
                make defconfig
            fi
            cd - > /dev/null 2>&1
        fi
    j=`expr $j + 1`
    done
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
    establish_kernel
fi
