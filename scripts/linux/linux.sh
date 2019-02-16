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
KERNEL_HIS=${14%X}

if [ ${KERNEL_HIS}X = "LegacyX" ]; then
	GIT_OUT=kernel
elif [ ${KERNEL_HIS}X = "NewestX" ]; then
	GIT_OUT=linux
fi

if [ -d ${OUTPUT}/${LINUX_KERNEL_NAME}/${LINUX_KERNEL_NAME} ]; then
        version=`sed -n 1p ${OUTPUT}/${LINUX_KERNEL_NAME}/version`

        if [ ${version} = ${LINUX_KERNEL_VERSION} ]; then
                exit 0
        fi
fi

if [ ${LINUX_KERNEL_TAR}X = "tar.xzX" ]; then
	TAR_OPT=-xvJf
elif [ ${LINUX_KERNEL_TAR}X = "tar.gzX" ]; then
	TAR_OPT=-xvzf
elif [ ${LINUX_KERNEL_TAR}X = "tar.bz2X" ]; then
	TAR_OPT=-xvjf
fi

establish_legacy_kernel()
{
	PATCH=${LINUX_KERNEL_PATCH}/linux_${LINUX_KERNEL_VERSION}
	TARGET=${OUTPUT}/${LINUX_KERNEL_NAME}/${LINUX_KERNEL_NAME}
	cd ${TARGET}
	echo "PATCJH: ${PATCH}"
	if [ -d ${TARGET}/tools/means ]; then
		rm -rf ${TARGET}/tools/means
	fi
	git reset --hard v${LINUX_KERNEL_VERSION}
	if [ $? -ne 0 ]; then
		git tag
		echo -e "\033[31m Legacy Kernel only support above version \033[0m"
		exit -1
	fi
	git am ${PATCH}/*.patch
}

## Get from github
if [ ${LINUX_KERNEL_SRC}X = "1X" ]; then
	if [ ! -d ${ROOT}/dl/${GIT_OUT} ]; then
		cd ${ROOT}/dl/
		git clone ${LINUX_KERNEL_GITHUB} ${GIT_OUT}
		cd ${ROOT}/dl/${GIT_OUT}
	else
		cd ${ROOT}/dl/${GIT_OUT}
		git pull
	fi
	mkdir -p ${OUTPUT}/${LINUX_KERNEL_NAME}
	if [ -d ${OUTPUT}/${LINUX_KERNEL_NAME}/${GIT_OUT}_github ]; then
		rm -rf ${OUTPUT}/${LINUX_KERNEL_NAME}/${GIT_OUT}_github
	fi
	cp -rfa ${ROOT}/dl/${GIT_OUT} ${OUTPUT}/${LINUX_KERNEL_NAME}/${GIT_OUT}_github
	cd ${OUTPUT}/${LINUX_KERNEL_NAME}/
	rm -rf ${OUTPUT}/${LINUX_KERNEL_NAME}/${LINUX_KERNEL_NAME}
        ln -s ${OUTPUT}/${LINUX_KERNEL_NAME}/${GIT_OUT}_github ${OUTPUT}/${LINUX_KERNEL_NAME}/${LINUX_KERNEL_NAME}
	echo ${LINUX_KERNEL_VERSION} > ${OUTPUT}/${LINUX_KERNEL_NAME}/version
	if [ ${KERNEL_HIS}X = "LegacyX" ]; then
		establish_legacy_kernel
	fi
fi

## Get from External package
if [ ${LINUX_KERNEL_SRC}X = "2X" ]; then
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
if [ ${LINUX_KERNEL_SRC}X = "3X" ]; then
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

if [ ${KERNEL_HIS}X = "LegacyX" ]; then
	cd ${OUTPUT}/${LINUX_KERNEL_NAME}/${LINUX_KERNEL_NAME}
	make defconfig
fi
