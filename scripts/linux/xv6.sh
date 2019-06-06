#/bin/bash

set -e
# Establish linux source code.
#
# (C) 2019.01.15 BiscuitOS <buddy.zhang@aliyun.com>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2 as
# published by the Free Software Foundation.

ROOT=${1%X}
XV6_KERNEL_NAME=${2%X}
XV6_KERNEL_VERSION=${3%X}
XV6_KERNEL_SITE=${4%X}
XV6_KERNEL_GITHUB=${5%X}
XV6_KERNEL_PATCH=${6%X}
XV6_KERNEL_SRC=${8%X}
PROJ_NAME=${9%X}
XV6_KERNEL_TAR=${10%X}
XV6_KERNEL_SUBNAME=${13%X}
OUTPUT=${ROOT}/output/${PROJ_NAME}
TAR_OPT=
KERNEL_HIS=${14%X}
TAR_OPT=-xvf
GIT_OUT=xv6-public

if [ -d ${OUTPUT}/${XV6_KERNEL_NAME}/${XV6_KERNEL_NAME} ]; then
        version=`sed -n 1p ${OUTPUT}/${XV6_KERNEL_NAME}/version`

        if [ ${version} = ${XV6_KERNEL_VERSION} ]; then
                exit 0
        fi
fi

establish_legacy_kernel()
{
	TARGET=${OUTPUT}/${XV6_KERNEL_NAME}/${XV6_KERNEL_NAME}
	cd ${TARGET}
	git reset --hard ${XV6_KERNEL_VERSION}
}

## Get from github
if [ ${XV6_KERNEL_SRC}X = "1X" ]; then
	if [ ! -d ${ROOT}/dl/${GIT_OUT} ]; then
		cd ${ROOT}/dl/
		git clone ${XV6_KERNEL_GITHUB} ${GIT_OUT}
		cd ${ROOT}/dl/${GIT_OUT}
	else
		cd ${ROOT}/dl/${GIT_OUT}
		git pull
	fi
	mkdir -p ${OUTPUT}/${XV6_KERNEL_NAME}
	if [ -d ${OUTPUT}/${XV6_KERNEL_NAME}/${GIT_OUT}_github ]; then
		rm -rf ${OUTPUT}/${XV6_KERNEL_NAME}/${GIT_OUT}_github
	fi
	cp -rfa ${ROOT}/dl/${GIT_OUT} ${OUTPUT}/${XV6_KERNEL_NAME}/${GIT_OUT}_github
	cd ${OUTPUT}/${XV6_KERNEL_NAME}/
	rm -rf ${OUTPUT}/${XV6_KERNEL_NAME}/${XV6_KERNEL_NAME}
        ln -s ${OUTPUT}/${XV6_KERNEL_NAME}/${GIT_OUT}_github ${OUTPUT}/${XV6_KERNEL_NAME}/${XV6_KERNEL_NAME}
	echo ${XV6_KERNEL_VERSION} > ${OUTPUT}/${XV6_KERNEL_NAME}/version
	establish_legacy_kernel
fi

## Get from External package
if [ ${XV6_KERNEL_SRC}X = "2X" ]; then
	XV6_KERNEL_SUBNAME=${XV6_KERNEL_SUBNAME%X}
	if [ ! -f ${XV6_KERNEL_SUBNAME} ]; then
		echo -e "\033[31m ${XV6_KERNEL_SUBNAME} doesn't exist! \033[0m"
		exit -1
	fi
	mkdir -p ${OUTPUT}/${XV6_KERNEL_NAME}/
	cp -rf ${XV6_KERNEL_SUBNAME} ${OUTPUT}/${XV6_KERNEL_NAME}/
	cd ${OUTPUT}/${XV6_KERNEL_NAME}/
	BASE_TAR=${XV6_KERNEL_SUBNAME##*/}
	BASE_FILE=${BASE_TAR%.${XV6_KERNEL_TAR}}
	tar ${TAR_OPT} ${BASE_TAR}
        echo ${XV6_KERNEL_VERSION} > ${OUTPUT}/${XV6_KERNEL_NAME}/version
        rm -rf ${OUTPUT}/${XV6_KERNEL_NAME}/${XV6_KERNEL_NAME}
	rm -rf ${OUTPUT}/${XV6_KERNEL_NAME}/${BASE_TAR}
        ln -s ${OUTPUT}/${XV6_KERNEL_NAME}/${BASE_FILE} ${OUTPUT}/${XV6_KERNEL_NAME}/${XV6_KERNEL_NAME}
fi

## Get from wget
if [ ${XV6_KERNEL_SRC}X = "3X" ]; then
	BASE_NAME=${XV6_KERNEL_NAME}-${XV6_KERNEL_VERSION}.${XV6_KERNEL_TAR}
	BASE=${XV6_KERNEL_NAME}-${XV6_KERNEL_VERSION}
	if [ ! -f ${ROOT}/dl/${BASE_NAME} ]; then
		cd ${ROOT}/dl/
		wget ${XV6_KERNEL_SITE}/${BASE_NAME}
	fi
	mkdir -p ${OUTPUT}/${XV6_KERNEL_NAME}/
	cp ${ROOT}/dl/${BASE_NAME} ${OUTPUT}/${XV6_KERNEL_NAME}/
	cd ${OUTPUT}/${XV6_KERNEL_NAME}/
	tar ${TAR_OPT} ${BASE_NAME}
	if [ $? -ne 0 ]; then
		echo -e "\033[31m Invalid tar operation for: ${TAR_OPT} \033[0m"
		exit -1
	fi
	rm -rf ${BASE_NAME}
        echo ${XV6_KERNEL_VERSION} > ${OUTPUT}/${XV6_KERNEL_NAME}/version
        rm -rf ${OUTPUT}/${XV6_KERNEL_NAME}/${XV6_KERNEL_NAME}
        ln -s ${OUTPUT}/${XV6_KERNEL_NAME}/${BASE} ${OUTPUT}/${XV6_KERNEL_NAME}/${XV6_KERNEL_NAME}
fi
