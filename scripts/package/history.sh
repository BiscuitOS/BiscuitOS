#/bin/bash

set -e
# Establish Kernel history.
#
# (C) 2019.08.30 BiscuitOS <buddy.zhang@aliyun.com>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2 as
# published by the Free Software Foundation.

# Root path
PROJECT_ROOT=${1%X}
# Package Name
PACKAGE_NAME=${2%X}
# Package version
PACKAGE_VERSION=${3%X}
# Download website
PACKAGE_SITE=${4%X}
# Download GitHub
PACKAGE_GITHIB=${5%X}
# Package Patch
PACKAGE_PATCH=${6%X}
# Kernel Version
KERNEL_VERSION=${7%X}
# Project Name (Default SDK name)
PROJECT_NAME=${8%X}
# Compression package type
PACKAGE_TARTYPE=${9%X}
# Cross Compile
PACKAGE_TOOL=${10%X}
# Sub-name
PACKAGE_SUBN=${11%X}
# KBuild Configure
KBUILD_CONFIG=${12%X}
# Kbuild Dynamic/Static library PATH (so, la, a)
KBUILD_LIBPATH=${13%X}
# Kbuild C/C++ Header PATH
KBUILD_CPPFLAGS=${14%X}
# Kbuild pkg-config library path
KBUILD_DPKCONFIG=${15%X}
# Kbuild CFLAGS 
KBUILD_CFLAGS=${16%X}
# Kbuild LDFLAGS
KBUILD_LDFLAGS=${17%X}
# Kbuild CXXFLAGS
KBUILD_CXXFLAGS=${18%X}
# Kbuild ASFLAGS
KBUILD_ASFLAGS=${19%X}
# BSfile
BSFILE=${20%X}
# Host Build-Architecture
HBARCH=${21%X}
# Compile Source list
CSRC=${22%X}
# Package Path
PPATH=${PACKAGE_PATCH%%/patch}
# Split Path
SPLIT_SUBDIR=${25%X}
# New Branch name
BRANCH_MAME=${26%X}
# GIT TAG
TAG=${27%X}
# ENABLE
ENABLE=${28}
# Split Root
OUTPUT=${PROJECT_ROOT}/output/${PROJECT_NAME}/
HISTORY_ROOT=${OUTPUT}/History
KERNEL_TREE=${OUTPUT}/linux/linux

# Determine Architecture
ARCH=unknown
[[ ${PROJECT_NAME} == *arm32* ]]   && ARCH=arm
[[ ${PROJECT_NAME} == *aarch* ]]   && ARCH=arm64
[[ ${PROJECT_NAME} == *i386* ]]    && ARCH=i386
[[ ${PROJECT_NAME} == *x86_64* ]]  && ARCH=x86_64
[[ ${PROJECT_NAME} == *riscv* ]]   && ARCH=riscv

# Disable History
[ ${ENABLE} = "X" ] && exit 0

# Determine History root
[ ! -d ${HISTORY_ROOT} ] && mkdir -p ${HISTORY_ROOT}

# Determine split directory
[ ! -d ${KERNEL_TREE}/${SPLIT_SUBDIR} ] && echo "${SPLIT_SUBDIR} doesn't exist!" && exit -1

# Determine new directory
if [ -d ${HISTORY_ROOT}/${BRANCH_MAME} ]; then
	echo "${BRANCH_MAME} has exist!"
	exit 0
else
	mkdir -p ${HISTORY_ROOT}/${BRANCH_MAME}
fi

# Determine git tag
if [ ${TAG} = "normal" ]; then
	cd ${KERNEL_TREE} > /dev/null
	echo "Use current version"
	cd - > /dev/null
elif [ ${TAG} = "newest" ]; then
	cd ${KERNEL_TREE} > /dev/null
	echo "Git pull from github, plese wait..."
	git pull
	echo "Git pull down"
	cd - > /dev/null
else
	cd ${KERNEL_TREE} > /dev/null
	git tag | grep "${TAG}" -q
	[ $? = 1 ] && echo "git tag doesn't exist, plese check git tag" && exit -1
	cd - > /dev/null
fi

# True work
cp -rfa ${KERNEL_TREE} ${OUTPUT}/.tmpTree
cd ${OUTPUT}/.tmpTree > /dev/null
[ ${TAG} != "normal" ] && git reset --hard ${TAG}
# Determine subdir
if [ ! -d ${SPLIT_SUBDIR} ]; then
	echo "Tag: ${TAG} doesn't contain ${SPLIT_SUBDIR}"
	ls ${OUTPUT}/.tmpTree
	exit -1
fi
echo "Spliting.... please wait 30mins..."
git subtree split -P ${SPLIT_SUBDIR} -b ${BRANCH_MAME}
cd ${HISTORY_ROOT} > /dev/null
mkdir -p ${HISTORY_ROOT}/${BRANCH_MAME}
cd ${HISTORY_ROOT}/${BRANCH_MAME} > /dev/null
git init
echo "Git pull from split..."
git pull ${OUTPUT}/.tmpTree ${BRANCH_MAME}
# Remove unused file
git filter-branch -f --index-filter "git rm -r -f -q --cache --ignore-unmatch ${BRANCH_MAME}" --prune-empty HEAD
cd ${OUTPUT} > /dev/null
rm -rf ${OUTPUT}/.tmpTree
exit 0
