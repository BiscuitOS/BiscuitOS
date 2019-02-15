#/bin/bash

# Establish linux source code.
#
# (C) 2019.01.15 BiscuitOS <buddy.zhang@aliyun.com>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2 as
# published by the Free Software Foundation.

ROOT=${1%X}
LINUX_KERNEL_NAME=${2%X}
LINUX_KERNEL_VERSION=${3%X}
LINUX_KERNEL_SITE=${4%X}
LINUX_KERNEL_GITHUB=${5%X}
LINUX_KERNEL_PATCH=${6%X}
LINUX_KERNEL_SRC=${8%X}
PROJ_NAME=${9%X}
LINUX_KERNEL_TAR=${10%X}
LINUX_KERNEL_SUBNAME=${13%X}
OUTPUT=${ROOT}/output/${PROJ_NAME}
TAR_OPT=

if [ -d ${OUTPUT}/${LINUX_KERNEL_NAME}/${LINUX_KERNEL_NAME} ]; then
        version=`sed -n 1p ${OUTPUT}/${LINUX_KERNEL_NAME}/version`

        if [ ${version} = ${LINUX_KERNEL_VERSION} ]; then
                exit 0
        fi
fi

if [ ${LINUX_KERNEL_TAR} = "tar.xz" ]; then
	TAR_OPT=-xvJf
elif [ ${LINUX_KERNEL_TAR} = "tar.gz" ]; then
	TAR_OPT=-xvzf
elif [ ${LINUX_KERNEL_TAR} = "tar.bz2" ]; then
	TAR_OPT=-xvjf
fi

## Get from github
if [ ${LINUX_KERNEL_SRC} = "1" ]; then
	if [ ! -d ${ROOT}/dl/linux ]; then
		cd ${ROOT}/dl/
		git clone ${LINUX_KERNEL_GITHUB}
		cd ${ROOT}/dl/linux
		git tag > LINUX_KERNEL_TAG
		cd -
	else
		cd ${ROOT}/dl/linux
		git pull
		git tag > LINUX_KERNEL_TAG
	fi
	mkdir -p ${OUTPUT}/${LINUX_KERNEL_NAME}
	if [ -d ${OUTPUT}/${LINUX_KERNEL_NAME}/linux_github ]; then
		rm -rf ${OUTPUT}/${LINUX_KERNEL_NAME}/linux_github
	fi
	cp -rfa ${ROOT}/dl/linux ${OUTPUT}/${LINUX_KERNEL_NAME}/linux_github
	cd ${OUTPUT}/${LINUX_KERNEL_NAME}/linux_github
	cd ${OUTPUT}/${LINUX_KERNEL_NAME}/
	rm -rf ${OUTPUT}/${LINUX_KERNEL_NAME}/${LINUX_KERNEL_NAME}
        ln -s ${OUTPUT}/${LINUX_KERNEL_NAME}/linux_github ${OUTPUT}/${LINUX_KERNEL_NAME}/${LINUX_KERNEL_NAME}
	echo ${LINUX_KERNEL_VERSION} > ${OUTPUT}/${LINUX_KERNEL_NAME}/version
fi

## Get from External package
if [ ${LINUX_KERNEL_SRC} = "2" ]; then
	LINUX_KERNEL_SUBNAME=${LINUX_KERNEL_SUBNAME%X}
	if [ ! -f ${LINUX_KERNEL_SUBNAME} ]; then
		echo -e "\033[31m ${LINUX_KERNEL_SUBNAME} doesn't exist! \033[0m"
		exit -1
	fi
	mkdir -p ${OUTPUT}/${LINUX_KERNEL_NAME}/
	cp -rf ${LINUX_KERNEL_SUBNAME} ${OUTPUT}/${LINUX_KERNEL_NAME}/
	cd ${OUTPUT}/${LINUX_KERNEL_NAME}/
	BASE_TAR=${LINUX_KERNEL_SUBNAME##*/}
	BASE_FILE=${BASE_TAR%.${LINUX_KERNEL_TAR}}
	tar ${TAR_OPT} ${BASE_TAR}
        echo ${LINUX_KERNEL_VERSION} > ${OUTPUT}/${LINUX_KERNEL_NAME}/version
        rm -rf ${OUTPUT}/${LINUX_KERNEL_NAME}/${LINUX_KERNEL_NAME}
	rm -rf ${OUTPUT}/${LINUX_KERNEL_NAME}/${BASE_TAR}
        ln -s ${OUTPUT}/${LINUX_KERNEL_NAME}/${BASE_FILE} ${OUTPUT}/${LINUX_KERNEL_NAME}/${LINUX_KERNEL_NAME}
fi

## Get from wget
if [ ${LINUX_KERNEL_SRC} = "3" ]; then
	BASE_NAME=${LINUX_KERNEL_NAME}-${LINUX_KERNEL_VERSION}.${LINUX_KERNEL_TAR}
	BASE=${LINUX_KERNEL_NAME}-${LINUX_KERNEL_VERSION}
	if [ ! -f ${ROOT}/dl/${BASE_NAME} ]; then
		cd ${ROOT}/dl/
		wget ${LINUX_KERNEL_SITE}/${BASE_NAME}
	fi
	mkdir -p ${OUTPUT}/${LINUX_KERNEL_NAME}/
	cp ${ROOT}/dl/${BASE_NAME} ${OUTPUT}/${LINUX_KERNEL_NAME}/
	cd ${OUTPUT}/${LINUX_KERNEL_NAME}/
	tar ${TAR_OPT} ${BASE_NAME}
	if [ $? -ne 0 ]; then
		echo -e "\033[31m Invalid tar operation for: ${TAR_OPT} \033[0m"
		exit -1
	fi
	rm -rf ${BASE_NAME}
        echo ${LINUX_KERNEL_VERSION} > ${OUTPUT}/${LINUX_KERNEL_NAME}/version
        rm -rf ${OUTPUT}/${LINUX_KERNEL_NAME}/${LINUX_KERNEL_NAME}
        ln -s ${OUTPUT}/${LINUX_KERNEL_NAME}/${BASE} ${OUTPUT}/${LINUX_KERNEL_NAME}/${LINUX_KERNEL_NAME}
fi
