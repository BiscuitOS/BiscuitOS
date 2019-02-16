#/bin/bash

set -e
# Establish qmue-system for ARM64/ARM32/X86_64.
#
# (C) 2019.01.14 BiscuitOS <buddy.zhang@aliyun.com>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2 as
# published by the Free Software Foundation.

ROOT=$1
QEMU_NAME=$2
QEMU_VERSION=$3
QEMU_SITE=$4
QEMU_GITHUB=$5
QEMU_PATCH=$6
KERN_VERION=$7
QEMU_SRC=$8
PROJ_NAME=$9
QEMU_TAR=${10}
QEMU_SUBNAME=${11}
OUTPUT=${ROOT}/output/${PROJ_NAME}
QEMU_FULL=${TOOL_SUBNAME%.${QEMU_TAR}}
QEMU_DL_NAME=qemu-${QEMU_VERSION#v}.${QEMU_TAR}
QEMU_UNTAR_NAME=qemu-${QEMU_VERSION#v}

if [ -d ${OUTPUT}/${QEMU_NAME}/${QEMU_NAME} ]; then
        version=`sed -n 1p ${OUTPUT}/${QEMU_NAME}/version`

        if [ ${version} = ${QEMU_VERSION} ]; then
                exit 0
        fi
fi

## Get from github
if [ ${QEMU_SRC} = "1" ]; then
	if [ ! -d ${ROOT}/dl/qemu ]; then
		cd ${ROOT}/dl/
		git clone ${QEMU_GITHUB}
		cd ${ROOT}/dl/qemu
		git tag > QEMU_TAG
		cd -
		sudo apt-get install -y libglib2.0-dev libfdt-dev 
		sudo apt-get install -y libpixman-1-dev
	fi
	mkdir -p ${OUTPUT}/${QEMU_NAME}
	if [ -d ${OUTPUT}/${QEMU_NAME}/qemu ]; then
		rm -rf ${OUTPUT}/${QEMU_NAME}/qemu
	fi
	cp -rfa ${ROOT}/dl/qemu ${OUTPUT}/${QEMU_NAME}
	cd ${OUTPUT}/${QEMU_NAME}/qemu
	git reset --hard ${QEMU_VERSION}
	if [ $? -ne 0 ]; then
		cat QEMU_TAG
		echo -e "\033[31m qemu only support above version! \033[0m"
		exit -1
	fi
	./configure --target-list=arm-softmmu,arm-linux-user,aarch64-softmmu,aarch64-linux-user,x86_64-softmmu,x86_64-linux-user --audio-drv-list=alsa --enable-virtfs
	make -j8
	echo ${QEMU_VERSION} > ${OUTPUT}/${QEMU_NAME}/version
	rm -rf ${OUTPUT}/${QEMU_NAME}/${QEMU_NAME}
	ln -s ${OUTPUT}/${QEMU_NAME}/qemu ${OUTPUT}/${QEMU_NAME}/${QEMU_NAME}
fi

## Get from External package
if [ ${QEMU_SRC} = "2" ]; then
	if [ ! -f ${QEMU_SUBNAME} ]; then
		echo -e "\033[31m ${QEMU_SUBNAME} doesn't exist! \033[0m"
		exit -1
	fi
	mkdir -p ${OUTPUT}/${QEMU_NAME}/
	cp -rf ${QEMU_SUBNAME} ${OUTPUT}/${QEMU_NAME}/
	cd ${OUTPUT}/${QEMU_NAME}/
	BASE_TAR=${QEMU_SUBNAME##*/}
	BASE_FILE=${BASE_TAR%.${QEMU_TAR}}
	tar -xvJf ${BASE_TAR}
	cd ${BASE_FILE}
	./configure --target-list=arm-softmmu,arm-linux-user,aarch64-softmmu,aarch64-linux-user,x86_64-softmmu,x86_64-linux-user 
        # --audio-drv-list=alsa --enable-virtfs
        
        make -j8
        echo ${QEMU_VERSION} > ${OUTPUT}/${QEMU_NAME}/version
        rm -rf ${OUTPUT}/${QEMU_NAME}/${QEMU_NAME}
	rm -rf ${OUTPUT}/${QEMU_NAME}/${BASE_TAR}
        ln -s ${OUTPUT}/${QEMU_NAME}/${BASE_FILE} ${OUTPUT}/${QEMU_NAME}/${QEMU_NAME}
fi

## Get from wget
if [ ${QEMU_SRC} = "3" ]; then
	if [ ! -f ${ROOT}/dl/${QEMU_DL_NAME} ]; then
		cd ${ROOT}/dl/
		wget ${QEMU_SITE}/${QEMU_DL_NAME}
	fi
	mkdir -p ${OUTPUT}/${QEMU_NAME}/
	cp ${ROOT}/dl/${QEMU_DL_NAME} ${OUTPUT}/${QEMU_NAME}/
	cd ${OUTPUT}/${QEMU_NAME}/
	tar -xvJf ${QEMU_DL_NAME}
	rm -rf ${QEMU_DL_NAME}
	cd ${QEMU_UNTAR_NAME}
        ./configure --target-list=arm-softmmu,arm-linux-user,aarch64-softmmu,aarch64-linux-user,x86_64-softmmu,x86_64-linux-user 
	# --audio-drv-list=alsa --enable-virtfs
        
	make -j8
        echo ${QEMU_VERSION} > ${OUTPUT}/${QEMU_NAME}/version
        rm -rf ${OUTPUT}/${QEMU_NAME}/${QEMU_NAME}
        ln -s ${OUTPUT}/${QEMU_NAME}/${QEMU_UNTAR_NAME} ${OUTPUT}/${QEMU_NAME}/${QEMU_NAME}
fi
