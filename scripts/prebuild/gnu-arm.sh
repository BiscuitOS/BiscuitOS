#/bin/bash

set -e
# Establish linaro GNU GCC.
#
# (C) 2019.01.14 BiscuitOS <buddy.zhang@aliyun.com>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2 as
# published by the Free Software Foundation.

ROOT=$1
GNU_ARM_NAME=${2%X}
GNU_ARM_VERSION=${3%X}
GNU_ARM_SITE=${4%X}
GNU_ARM_PATCH=${5%X}
KERN_VERION=$6
GNU_ARM_SRC=${9%X}
PROJ_NAME=${7%X}
GNU_ARM_TAR=${8%X}
GNU_ARM_SUBNAME=${10%X}
OUTPUT=${ROOT}/output/${PROJ_NAME}
GNU_ARM_WGET_NAME=${GNU_ARM_SITE##*/}
UBOOT=${11}

# Normal Check
if [ -d ${OUTPUT}/${GNU_ARM_NAME}/${GNU_ARM_NAME} ]; then
	version=`sed -n 1p ${OUTPUT}/${GNU_ARM_NAME}/version`

	if [ ${version} = ${GNU_ARM_VERSION} ]; then
        	exit 0
	fi
fi

# Uboot Check
if [ -d ${OUTPUT}/${GNU_ARM_NAME}/uboot-${GNU_ARM_NAME} -a ${UBOOT} = "yX" ]; then
	version=`sed -n 1p ${OUTPUT}/${GNU_ARM_NAME}/version_uboot`

	if [ ${version} = ${GNU_ARM_VERSION} ]; then
		exit 0
	fi
fi

## Get from github
if [ ${GNU_ARM_SRC} = "3" ]; then
	if [ ! -d ${ROOT}/dl/GNU_ARM ]; then
		cd ${ROOT}/dl/
		git clone ${GNU_ARM_GITHUB}
		cd ${ROOT}/dl/GNU_ARM
		git tag > GNU_ARM_TAG
		cd -
	fi
	mkdir -p ${OUTPUT}/${GNU_ARM_NAME}
	if [ -d ${OUTPUT}/${GNU_ARM_NAME}/GNU_ARM ]; then
		rm -rf ${OUTPUT}/${GNU_ARM_NAME}/GNU_ARM
	fi
	cp -rfa ${ROOT}/dl/GNU_ARM ${OUTPUT}/${GNU_ARM_NAME}
	cd ${OUTPUT}/${GNU_ARM_NAME}/GNU_ARM
	git reset --hard ${GNU_ARM_VERSION}
	if [ $? -ne 0 ]; then
		cat GNU_ARM_TAG
		echo -e "\033[31m GNU_ARM only support above version! \033[0m"
		exit -1
	fi
fi

## Get from External package
if [ ${GNU_ARM_SRC} = "1" ]; then
	if [ ! -f ${GNU_ARM_SUBNAME} ]; then
		echo -e "\033[31m ${GNU_ARM_SUBNAME} doesn't exist! \033[0m"
		exit -1
	fi
	mkdir -p ${OUTPUT}/${GNU_ARM_NAME}/
	cp -rf ${GNU_ARM_SUBNAME} ${OUTPUT}/${GNU_ARM_NAME}/
	cd ${OUTPUT}/${GNU_ARM_NAME}/
	BASE_TAR=${GNU_ARM_SUBNAME##*/}
	BASE_FILE=${BASE_TAR%.${GNU_ARM_TAR}}
	tar -xvJf ${BASE_TAR}
        echo ${GNU_ARM_VERSION} > ${OUTPUT}/${GNU_ARM_NAME}/version
        rm -rf ${OUTPUT}/${GNU_ARM_NAME}/${GNU_ARM_NAME}
	rm -rf ${OUTPUT}/${GNU_ARM_NAME}/${BASE_TAR}
        ln -s ${OUTPUT}/${GNU_ARM_NAME}/${BASE_FILE} ${OUTPUT}/${GNU_ARM_NAME}/${GNU_ARM_NAME}
fi

## Get from wget
if [ ${GNU_ARM_SRC} = "2" ]; then
	BASE_NAME=${GNU_ARM_WGET_NAME%.${GNU_ARM_TAR}}
	if [ ! -f ${ROOT}/dl/${GNU_ARM_WGET_NAME} ]; then
		cd ${ROOT}/dl/
		wget ${GNU_ARM_SITE}.asc
		wget ${GNU_ARM_SITE}
	fi
	# MD5 Check
	cd ${ROOT}/dl/
	md5sum ${GNU_ARM_WGET_NAME} > tmp_dm5_${GNU_ARM_WGET_NAME}.asc
	diff tmp_dm5_${GNU_ARM_WGET_NAME}.asc ${GNU_ARM_WGET_NAME}.asc
	if [ $? -ne 0 ]; then
		echo -e "\033[31m Bad Package ${GNU_ARM_WGET_NAME} \033[0m"
		rm -rf ${GNU_ARM_WGET_NAME}
		exit -1
	fi
	rm -rf tmp_dm5_${GNU_ARM_WGET_NAME}.asc
	mkdir -p ${OUTPUT}/${GNU_ARM_NAME}/
	cp ${ROOT}/dl/${GNU_ARM_WGET_NAME} ${OUTPUT}/${GNU_ARM_NAME}/
	cd ${OUTPUT}/${GNU_ARM_NAME}/
	tar -xvf ${GNU_ARM_WGET_NAME}
	rm -rf ${GNU_ARM_WGET_NAME}
	if [ ${GNU_ARM_VERSION} = "arm-2009q3-67" ]; then
		if [ ${UBOOT} = "yX" ]; then
        		ln -s ${OUTPUT}/${GNU_ARM_NAME}/arm-2009q3 ${OUTPUT}/${GNU_ARM_NAME}/uboot-${GNU_ARM_NAME}
			echo ${GNU_ARM_VERSION} > ${OUTPUT}/${GNU_ARM_NAME}/version_uboot
		else
			[ -d ${OUTPUT}/${GNU_ARM_NAME}/${GNU_ARM_NAME} ] && rm -rf ${OUTPUT}/${GNU_ARM_NAME}/${GNU_ARM_NAME}
        		ln -s ${OUTPUT}/${GNU_ARM_NAME}/arm-2009q3 ${OUTPUT}/${GNU_ARM_NAME}/${GNU_ARM_NAME}
        		echo ${GNU_ARM_VERSION} > ${OUTPUT}/${GNU_ARM_NAME}/version
		fi
	else
		[ -d ${OUTPUT}/${GNU_ARM_NAME}/${GNU_ARM_NAME} ] && rm -rf ${OUTPUT}/${GNU_ARM_NAME}/${GNU_ARM_NAME}
        	ln -s ${OUTPUT}/${GNU_ARM_NAME}/${BASE_NAME} ${OUTPUT}/${GNU_ARM_NAME}/${GNU_ARM_NAME}
        	echo ${GNU_ARM_VERSION} > ${OUTPUT}/${GNU_ARM_NAME}/version
	fi
fi
