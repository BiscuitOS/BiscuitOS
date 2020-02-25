#/bin/bash

set -e
# Establish busybox for ARM64/ARM32/X86_64.
#
# (C) 2019.01.14 BiscuitOS <buddy.zhang@aliyun.com>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2 as
# published by the Free Software Foundation.

ROOT=$1
BUSYBOX_NAME=${2%X}
BUSYBOX_VERSION=${3%X}
BUSYBOX_SITE=${4%X}
BUSYBOX_GITHUB=${5%X}
BUSYBOX_PATCH=${6%X}
KERN_VERION=$7
BUSYBOX_SRC=${8%X}
PROJ_NAME=${9%X}
BUSYBOX_TAR=${10%X}
BUSYBOX_SUBNAME=${13%X}
OUTPUT=${ROOT}/output/${PROJ_NAME}

if [ -d ${OUTPUT}/${BUSYBOX_NAME}/${BUSYBOX_NAME} ]; then
        version=`sed -n 1p ${OUTPUT}/${BUSYBOX_NAME}/version`

        if [ ${version} = ${BUSYBOX_VERSION} ]; then
                exit 0
        fi
fi

## Get from github
if [ ${BUSYBOX_SRC} = "1" ]; then
	if [ ! -d ${ROOT}/dl/busybox ]; then
		cd ${ROOT}/dl/
		git clone ${BUSYBOX_GITHUB}
		cd ${ROOT}/dl/busybox
		git tag > BUSYBOX_TAG
		cd -
	else
		cd ${ROOT}/dl/busybox
		git tag > BUSYBOX_TAG
		git pull
	fi
	mkdir -p ${OUTPUT}/${BUSYBOX_NAME}
	if [ -d ${OUTPUT}/${BUSYBOX_NAME}/busybox_github ]; then
		rm -rf ${OUTPUT}/${BUSYBOX_NAME}/busybox_github
	fi
	cp -rfa ${ROOT}/dl/busybox ${OUTPUT}/${BUSYBOX_NAME}/busybox_github
	cd ${OUTPUT}/${BUSYBOX_NAME}/busybox_github
	cd ${OUTPUT}/${BUSYBOX_NAME}/
	rm -rf ${OUTPUT}/${BUSYBOX_NAME}/${BUSYBOX_NAME}
        ln -s ${OUTPUT}/${BUSYBOX_NAME}/busybox_github ${OUTPUT}/${BUSYBOX_NAME}/${BUSYBOX_NAME}
	echo ${BUSYBOX_VERSION} > ${OUTPUT}/${BUSYBOX_NAME}/version
fi

## Get from External package
if [ ${BUSYBOX_SRC} = "2" ]; then
	BUSYBOX_SUBNAME=${BUSYBOX_SUBNAME%X}
	if [ ! -f ${BUSYBOX_SUBNAME} ]; then
		echo -e "\033[31m ${BUSYBOX_SUBNAME} doesn't exist! \033[0m"
		exit -1
	fi
	mkdir -p ${OUTPUT}/${BUSYBOX_NAME}/
	cp -rf ${BUSYBOX_SUBNAME} ${OUTPUT}/${BUSYBOX_NAME}/
	cd ${OUTPUT}/${BUSYBOX_NAME}/
	BASE_TAR=${BUSYBOX_SUBNAME##*/}
	BASE_FILE=${BASE_TAR%.${BUSYBOX_TAR}}
	tar -xvjf ${BASE_TAR}
        echo ${BUSYBOX_VERSION} > ${OUTPUT}/${BUSYBOX_NAME}/version
        rm -rf ${OUTPUT}/${BUSYBOX_NAME}/${BUSYBOX_NAME}
	rm -rf ${OUTPUT}/${BUSYBOX_NAME}/${BASE_TAR}
        ln -s ${OUTPUT}/${BUSYBOX_NAME}/${BASE_FILE} ${OUTPUT}/${BUSYBOX_NAME}/${BUSYBOX_NAME}
fi

## Get from wget
if [ ${BUSYBOX_SRC} = "3" ]; then
	BASE_NAME=${BUSYBOX_NAME}-${BUSYBOX_VERSION}.${BUSYBOX_TAR}
	BASE=${BUSYBOX_NAME}-${BUSYBOX_VERSION}
	if [ ! -f ${ROOT}/dl/${BASE_NAME} ]; then
		cd ${ROOT}/dl/
		wget ${BUSYBOX_SITE}/${BASE_NAME}
	fi
	mkdir -p ${OUTPUT}/${BUSYBOX_NAME}/
	cp ${ROOT}/dl/${BASE_NAME} ${OUTPUT}/${BUSYBOX_NAME}/
	cd ${OUTPUT}/${BUSYBOX_NAME}/
	tar -xvjf ${BASE_NAME}
	rm -rf ${BASE_NAME}
        echo ${BUSYBOX_VERSION} > ${OUTPUT}/${BUSYBOX_NAME}/version
        rm -rf ${OUTPUT}/${BUSYBOX_NAME}/${BUSYBOX_NAME}
        ln -s ${OUTPUT}/${BUSYBOX_NAME}/${BASE} ${OUTPUT}/${BUSYBOX_NAME}/${BUSYBOX_NAME}
fi

# Compile BusyBox
ARCH_SRC=${11%X}
ARCH_CROSS=${12%X}
if [ ${ARCH_SRC} = "1" ]; then
	CROSS_GCC=gcc
	ARCH_TYPE=x86
elif [ ${ARCH_SRC} = "2" ]; then
	if [ ${BUSYBOX_VERSION} = "1.18.1" ]; then
		CROSS_GCC=${OUTPUT}/${ARCH_CROSS}/${ARCH_CROSS}/bin/arm-none-linux-gnueabi-
		exit 0
	else
		CROSS_GCC=${OUTPUT}/${ARCH_CROSS}/${ARCH_CROSS}/bin/${ARCH_CROSS}-
	fi
	ARCH_TYPE=arm
elif [ ${ARCH_SRC} = "3" ]; then
	CROSS_GCC=${OUTPUT}/aarch64-linux-gnu/aarch64-linux-gnu/bin/aarch64-linux-gnu-
	ARCH_TYPE=arm64
fi
cd ${OUTPUT}/${BUSYBOX_NAME}/${BUSYBOX_NAME}
LEACY_CROSS=${CROSS_COMPILE}
[ ${ARCH_SRC} -eq 6 ] && export CROSS_COMPILE=${CROSS_GCC}
make clean
make defconfig
make -j8
make install
export CROSS_COMPILE=${LEACY_CROSS}
