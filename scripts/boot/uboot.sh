#/bin/bash

set -e
# Establish uboot source code.
#
# (C) 2019.01.15 BiscuitOS <buddy.zhang@aliyun.com>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2 as
# published by the Free Software Foundation.

ROOT=${1%X}
UBOOT_NAME=${2%X}
UBOOT_VERSION=${3%X}
UBOOT_SITE=${4%X}
UBOOT_GITHUB=${5%X}
UBOOT_PATCH=${6%X}
UBOOT_SRC=${8%X}
PROJ_NAME=${9%X}
UBOOT_TAR=${10%X}
UBOOT_SUBNAME=${13%X}
OUTPUT=${ROOT}/output/${PROJ_NAME}
ARCH_MAGIC=${14%X}
ARCH_NAME=
UBOOT_TOOLS=${12%X}

if [ -d ${OUTPUT}/${UBOOT_NAME}/${UBOOT_NAME} ]; then
        version=`sed -n 1p ${OUTPUT}/${UBOOT_NAME}/version`

        [ ${version} = ${UBOOT_VERSION} ] && exit 0
fi

TAR_OPT=-xvf

case ${ARCH_MAGIC} in
	1)
		ARCH_NAME=x86
		;;
	2)
		ARCH_NAME=arm
		;;
	3)
		ARCH_NAME=arm64
		;;
	4)
		ARCH_NAME=riscv32
		;;
	5)
		ARCH_NAME=riscv64
		;;
esac

PATCH_DIR=${ROOT}/boot/u-boot/patch/${ARCH_NAME}/${UBOOT_VERSION}

## Get from github
if [ ${UBOOT_SRC} = "1" ]; then
	if [ ! -d ${ROOT}/dl/${UBOOT_NAME} ]; then
		cd ${ROOT}/dl/
		git clone ${UBOOT_GITHUB}
		cd ${ROOT}/dl/${UBOOT_NAME}
		cd -
	else
		cd ${ROOT}/dl/${UBOOT_NAME}
		git pull
	fi
	mkdir -p ${OUTPUT}/${UBOOT_NAME}
	if [ -d ${OUTPUT}/${UBOOT_NAME}/${UBOOT_NAME}_github ]; then
		rm -rf ${OUTPUT}/${UBOOT_NAME}/${UBOOT_NAME}_github
	fi
	cp -rfa ${ROOT}/dl/${UBOOT_NAME} ${OUTPUT}/${UBOOT_NAME}/${UBOOT_NAME}_github
	cd ${OUTPUT}/${UBOOT_NAME}/${UBOOT_NAME}_github
	cd ${OUTPUT}/${UBOOT_NAME}/
	rm -rf ${OUTPUT}/${UBOOT_NAME}/${UBOOT_NAME}
        ln -s ${OUTPUT}/${UBOOT_NAME}/${UBOOT_NAME}_github ${OUTPUT}/${UBOOT_NAME}/${UBOOT_NAME}
	echo ${UBOOT_VERSION} > ${OUTPUT}/${UBOOT_NAME}/version
fi

## Get from External package
if [ ${UBOOT_SRC} = "2" ]; then
	UBOOT_SUBNAME=${UBOOT_SUBNAME%X}
	if [ ! -f ${UBOOT_SUBNAME} ]; then
		echo -e "\033[31m ${UBOOT_SUBNAME} doesn't exist! \033[0m"
		exit -1
	fi
	mkdir -p ${OUTPUT}/${UBOOT_NAME}/
	cp -rf ${UBOOT_SUBNAME} ${OUTPUT}/${UBOOT_NAME}/
	cd ${OUTPUT}/${UBOOT_NAME}/
	BASE_TAR=${UBOOT_SUBNAME##*/}
	BASE_FILE=${BASE_TAR%.${UBOOT_TAR}}
	tar ${TAR_OPT} ${BASE_TAR}
        echo ${UBOOT_VERSION} > ${OUTPUT}/${UBOOT_NAME}/version
        rm -rf ${OUTPUT}/${UBOOT_NAME}/${UBOOT_NAME}
	rm -rf ${OUTPUT}/${UBOOT_NAME}/${BASE_TAR}
        ln -s ${OUTPUT}/${UBOOT_NAME}/${BASE_FILE} ${OUTPUT}/${UBOOT_NAME}/${UBOOT_NAME}
fi

## Get from wget
if [ ${UBOOT_SRC} = "3" ]; then
	BASE_NAME=${UBOOT_NAME}-${UBOOT_VERSION}.${UBOOT_TAR}
	BASE=${UBOOT_NAME}-${UBOOT_VERSION}
	if [ ! -f ${ROOT}/dl/${BASE_NAME} ]; then
		cd ${ROOT}/dl/
		wget ${UBOOT_SITE}/${BASE_NAME}
		echo "Downloading finish"
	fi
	mkdir -p ${OUTPUT}/${UBOOT_NAME}/
	cp ${ROOT}/dl/${BASE_NAME} ${OUTPUT}/${UBOOT_NAME}/
	cd ${OUTPUT}/${UBOOT_NAME}/
	tar ${TAR_OPT} ${BASE_NAME}
	if [ $? -ne 0 ]; then
		echo -e "\033[31m Invalid tar operation for: ${TAR_OPT} \033[0m"
		exit -1
	fi
	rm -rf ${BASE_NAME}
        echo ${UBOOT_VERSION} > ${OUTPUT}/${UBOOT_NAME}/version
        rm -rf ${OUTPUT}/${UBOOT_NAME}/${UBOOT_NAME}
        ln -s ${OUTPUT}/${UBOOT_NAME}/${BASE} ${OUTPUT}/${UBOOT_NAME}/${UBOOT_NAME}
fi

# PATCH
# --> Create a patch
#     --> diff -uprN old/ new/ > 000001.patch
# --> Apply a patch
#     --> copy 000001.patch into old/
#     --> patch -p1 < 000001.patch
if [ -d ${PATCH_DIR} ]; then
	echo "Patching for ${OUTPUT}/u-boot/u-boot/"
        for patchfile in `ls ${PATCH_DIR}`
	do
		cp ${PATCH_DIR}/${patchfile} ${OUTPUT}/u-boot/u-boot
		cd ${OUTPUT}/u-boot/u-boot/ > /dev/null 2>&1
		patch -p1 < ${patchfile}
		cd - > /dev/null 2>&1
		rm -rf ${OUTPUT}/u-boot/u-boot/${patchfile} > /dev/null 2>&1
	done
fi
