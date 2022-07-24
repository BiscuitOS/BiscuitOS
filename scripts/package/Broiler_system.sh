#/bin/bash

set -e
# Establish Broiler-system X86_64.
#
# (C) 2019.01.14 BiscuitOS <buddy.zhang@aliyun.com>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2 as
# published by the Free Software Foundation.

ROOT=$1
BROILER_NAME=${2%X}
BROILER_VERSION=${3%X}
BROILER_SITE=${4%X}
BROILER_GITHUB=${5%X}
BROILER_PATCH=${6%X}
KERN_VERION=$7
BROILER_SRC=${8%X}
PROJ_NAME=${9%X}
BROILER_TAR=${10%X}
BROILER_SUBNAME=${11%X}
OUTPUT=${ROOT}/output/${PROJ_NAME}
ARCH_MAGIC=${12%X}
UBUNTU_FULL=$(cat /etc/issue | grep "Ubuntu" | awk '{print $2}')
UBUNTU=${UBUNTU_FULL:0:2}
EMULATER=
CONFIG=
BROILER_GDB=
BROILER_BIN=
BROILER_FULL=${TOOL_SUBNAME%.${BROILER_TAR}}
BROILER_DL_NAME=qemu-${BROILER_VERSION#v}.${BROILER_TAR}
BROILER_UNTAR_NAME=qemu-${BROILER_VERSION#v}
BROILER_VERSION=default

if [ -d ${OUTPUT}/${BROILER_NAME}/${BROILER_NAME} ]; then
        version=`sed -n 1p ${OUTPUT}/${BROILER_NAME}/version`

        if [ ${version} = ${BROILER_VERSION} ]; then
                exit 0
        fi
fi

## Get from github
if [ ${BROILER_SRC} = "1" ]; then
	if [ ! -d ${ROOT}/dl/BiscuitOS-Broiler ]; then
		cd ${ROOT}/dl/
		git clone ${BROILER_GITHUB} ${ROOT}/dl/BiscuitOS-Broiler
	fi
	mkdir -p ${OUTPUT}/${BROILER_NAME}
	if [ -d ${OUTPUT}/${BROILER_NAME}/BiscuitOS-Broiler ]; then
		rm -rf ${OUTPUT}/${BROILER_NAME}/BiscuitOS-Broiler
	fi
	cp -rfa ${ROOT}/dl/BiscuitOS-Broiler ${OUTPUT}/${BROILER_NAME}/BiscuitOS-Broiler
	cd ${OUTPUT}/${BROILER_NAME}/BiscuitOS-Broiler
	make -j8
	echo ${BROILER_VERSION} > ${OUTPUT}/${BROILER_NAME}/version
	rm -rf ${OUTPUT}/${BROILER_NAME}/${BROILER_NAME}
	ln -s ${OUTPUT}/${BROILER_NAME}/BiscuitOS-Broiler ${OUTPUT}/${BROILER_NAME}/${BROILER_NAME}
fi

## Get from External package
if [ ${BROILER_SRC} = "2" ]; then
	if [ ! -f ${BROILER_SUBNAME} ]; then
		echo -e "\033[31m ${BROILER_SUBNAME} doesn't exist! \033[0m"
		exit -1
	fi
	mkdir -p ${OUTPUT}/${BROILER_NAME}/
	cp -rf ${BROILER_SUBNAME} ${OUTPUT}/${BROILER_NAME}/
	cd ${OUTPUT}/${BROILER_NAME}/
	BASE_TAR=${BROILER_SUBNAME##*/}
	BASE_FILE=${BASE_TAR%.${BROILER_TAR}}
	tar -xvJf ${BASE_TAR}
	[ ${UBUNTU}X = 20X ] && qemu_patch
	cd ${BASE_FILE}
	./configure --target-list=${EMULATER} ${CONFIG}
        
        make -j8
        echo ${BROILER_VERSION} > ${OUTPUT}/${BROILER_NAME}/version
        rm -rf ${OUTPUT}/${BROILER_NAME}/${BROILER_NAME}
	rm -rf ${OUTPUT}/${BROILER_NAME}/${BASE_TAR}
        ln -s ${OUTPUT}/${BROILER_NAME}/${BASE_FILE} ${OUTPUT}/${BROILER_NAME}/${BROILER_NAME}
fi

## Get from wget
if [ ${BROILER_SRC} = "3" ]; then
	if [ ! -f ${ROOT}/dl/${BROILER_DL_NAME} ]; then
		cd ${ROOT}/dl/
		wget ${BROILER_SITE}/${BROILER_DL_NAME}
	fi
	mkdir -p ${OUTPUT}/${BROILER_NAME}/
	cp ${ROOT}/dl/${BROILER_DL_NAME} ${OUTPUT}/${BROILER_NAME}/
	cd ${OUTPUT}/${BROILER_NAME}/
	tar -xvJf ${BROILER_DL_NAME}
	rm -rf ${BROILER_DL_NAME}
	cd ${BROILER_UNTAR_NAME}
	make -j8
        echo ${BROILER_VERSION} > ${OUTPUT}/${BROILER_NAME}/version
        rm -rf ${OUTPUT}/${BROILER_NAME}/${BROILER_NAME}
        ln -s ${OUTPUT}/${BROILER_NAME}/${BROILER_UNTAR_NAME} ${OUTPUT}/${BROILER_NAME}/${BROILER_NAME}
fi
