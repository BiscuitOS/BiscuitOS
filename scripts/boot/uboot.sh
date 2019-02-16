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
TAR_OPT=

if [ -d ${OUTPUT}/${UBOOT_NAME}/${UBOOT_NAME} ]; then
        version=`sed -n 1p ${OUTPUT}/${UBOOT_NAME}/version`

        if [ ${version} = ${UBOOT_VERSION} ]; then
                exit 0
        fi
fi

if [ ${UBOOT_TAR} = "tar.xz" ]; then
	TAR_OPT=-xvJf
elif [ ${UBOOT_TAR} = "tar.gz" ]; then
	TAR_OPT=-xvzf
elif [ ${UBOOT_TAR} = "tar.bz2" ]; then
	TAR_OPT=-xvjf
fi

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
