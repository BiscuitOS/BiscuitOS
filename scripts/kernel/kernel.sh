#!/bin/bash

#
# This scripts is used to download/update/compile kernel 
# (C) 2017.11.11 <buddy.zhang@aliyun.com>
#

srctree=$3
github=$2
kernel_version=$1

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
)

# Pre-check: need dl/ and kernel/ directory.
mkdir -p ${srctree}/dl ${srctree}/kernel

# Download kernel source
if [ ! -d ${srctree}/dl/kernel ]; then
	mkdir -p ${srctree}/dl/kernel
	git clone ${github} ${srctree}/dl/kernel
	if [ $? -ne 0 ]; then
		echo "Bad download kernel source code"
	fi
fi

## Copy kernel into target directory
if [ ! -d ${srctree}/kernel/Linux_${kernel_version} ]; then
	cp -rf ${srctree}/dl/kernel ${srctree}/kernel/Linux_${kernel_version}
## Check and change source version
	j=0
	for i in ${KVersion[@]}; do
		if [ $i = ${kernel_version} ]; then
        		cd ${srctree}/kernel/Linux_${kernel_version}
			git reset --hard ${TagVersion[$j]}
			cd ${srctree}
		fi
		j=`expr $j + 1`
	done

## Patch to current version

fi



