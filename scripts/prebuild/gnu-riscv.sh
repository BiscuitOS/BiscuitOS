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
GNU_RISCV_NAME=${2%X}
GNU_RISCV_VERSION=${3%X}
GNU_RISCV_SITE=${4%X}
GNU_RISCV_PATCH=${5%X}
KERN_VERION=$6
GNU_RISCV_SRC=${9%X}
PROJECT_NAME=${7%X}
GNU_RISCV_TAR=${8%X}
OUTPUT=${ROOT}/output/${PROJ_NAME}
GNU_RISCV_WGET_NAME=${GNU_RISCV_SITE##*/}
RISCV_WAY=${10%X}

# Basename
BASENAME=${GNU_RISCV_NAME}-${GNU_RISCV_VERSION}
FULLNAME=${GNU_RISCV_NAME}-${GNU_RISCV_VERSION}.${GNU_RISCV_TAR}
MD5NAME=${FULLNAME}.asc
DL=${ROOT}/dl
OUTPUT=${ROOT}/output/${PROJECT_NAME}

if [ -f ${OUTPUT}/${GNU_RISCV_NAME}/version ]; then
	version=`sed -n 1p ${OUTPUT}/${GNU_RISCV_NAME}/version`
	[ ${version} = ${GNU_RISCV_VERSION} ] && exit 0
fi

case ${RISCV_WAY} in
	1)
	;;
	2)
	riscv64-linux-gnu-gcc-7 -v
	[ $? != 0 ] && sudo apt-get -y gcc-riscv64-linux-gnu
	;;
	3)
	;;
	4)
		# External
		
		[ ! -f ${DL}/${FULLNAME} ] && echo "${DL}/${FULLNAME} doesn't exist" && exit -1
		[ ! -f ${DL}/${MD5NAME} ] && echo "${DL}/${MD5NAME} doesn't exist" && exit -1
		mkdir -p ${OUTPUT}/${GNU_RISCV_NAME}
		cp -rfa ${DL}/${FULLNAME} ${OUTPUT}/${GNU_RISCV_NAME}
		cp -rfa ${DL}/${MD5NAME} ${OUTPUT}/${GNU_RISCV_NAME}
		cd ${OUTPUT}/${GNU_RISCV_NAME} > /dev/null 2>&1
		tar -xvf ${FULLNAME}
		# MD5 Check
		md5sum ${FULLNAME} > tmp_md5_${FULLNAME}.asc
		diff tmp_md5_${FULLNAME}.asc ${MD5NAME}
		[ $? -ne 0 ] && echo "Bad ${FULLNAME}" && exit -1
		[ -d ${GNU_RISCV_NAME} ] && rm -rf ${GNU_RISCV_NAME}
		rm -rf ${FULLNAME}
		rm tmp_md5_${FULLNAME}.asc ${MD5NAME}
		ln -s ${BASENAME} ${GNU_RISCV_NAME}
		echo ${GNU_RISCV_VERSION} > version
		cd - > /dev/null 2>&1
		
	;;
	*)
	;;
esac
