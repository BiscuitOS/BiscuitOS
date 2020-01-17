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
LINUX_KERNEL_DIR=${15%X}
PROJ_NAME=${9%X}
LINUX_KERNEL_TAR=${10%X}
LINUX_KERNEL_SUBNAME=${13%X}
OUTPUT=${ROOT}/output/${PROJ_NAME}
TAR_OPT=
KERNEL_HIS=${14%X}
TAR_OPT=-xvf
ARCH_MAGIC=${16%X}
ARCH_NAME=
ARCH_LINUX_DIR=

case ${ARCH_MAGIC} in
	1)
		ARCH_NAME=x86
		ARCH_LINUX_DIR=x86
		;;
	2)
		ARCH_NAME=arm
		ARCH_LINUX_DIR=arm
		;;
	3)
		ARCH_NAME=arm64
		ARCH_LINUX_DIR=arm64
		;;
	4)
		ARCH_NAME=riscv32
		ARCH_LINUX_DIR=riscv
		;;
	5)
		ARCH_NAME=riscv64
		ARCH_LINUX_DIR=riscv
		;;
	6)
		ARCH_NAME=X86_64
		ARCH_LINUX_DIR=X86_64
		;;
esac

CONFIG_DIR=${LINUX_KERNEL_DIR}/config/${ARCH_NAME}/
PATCH_DIR=${LINUX_KERNEL_DIR}/patch/${ARCH_NAME}/linux-${LINUX_KERNEL_VERSION}

case ${KERNEL_HIS} in
	"Legacy")
		GIT_OUT=kernel
	;;
	"Newest")
		GIT_OUT=linux
	;;
	"RPI")
		GIT_OUT=RPI_linux
	;;
esac

if [ -d ${OUTPUT}/${LINUX_KERNEL_NAME}/${LINUX_KERNEL_NAME} ]; then
        version=`sed -n 1p ${OUTPUT}/${LINUX_KERNEL_NAME}/version`

	[ ${version} = "linux-next" ] && exit 0
	[ ${version} = ${LINUX_KERNEL_VERSION} ] && exit 0
	if [ ${LINUX_KERNEL_SRC} = 1 ]; then
		[ -f ${OUTPUT}/${LINUX_KERNEL_NAME}/version ] && exit 0
	fi
fi

establish_legacy_kernel()
{
	PATCH=${LINUX_KERNEL_PATCH}/i386/linux_${LINUX_KERNEL_VERSION}
	TARGET=${OUTPUT}/${LINUX_KERNEL_NAME}/${LINUX_KERNEL_NAME}
	cd ${TARGET}
	echo "PATCH: ${PATCH}"
	[ -d ${TARGET}/tools/means ] && rm -rf ${TARGET}/tools/means
	git reset --hard v${LINUX_KERNEL_VERSION}
	if [ $? -ne 0 ]; then
		git tag
		echo -e "\033[31m Legacy Kernel only support above version \033[0m"
		exit -1
	fi
	[ -d ${PATCH} ] && git am ${PATCH}/*.patch
}

case ${LINUX_KERNEL_SRC} in
	## Get from github
	1)
		if [ ! -d ${ROOT}/dl/${GIT_OUT} ]; then
			cd ${ROOT}/dl/
			git clone ${LINUX_KERNEL_GITHUB} ${GIT_OUT}
			cd ${ROOT}/dl/${GIT_OUT}
		else
			cd ${ROOT}/dl/${GIT_OUT}
			#git pull
		fi
		mkdir -p ${OUTPUT}/${LINUX_KERNEL_NAME}
		[ -d ${OUTPUT}/${LINUX_KERNEL_NAME}/${GIT_OUT}_github ] && rm -rf ${OUTPUT}/${LINUX_KERNEL_NAME}/${GIT_OUT}_github
		cp -rfa ${ROOT}/dl/${GIT_OUT} ${OUTPUT}/${LINUX_KERNEL_NAME}/${GIT_OUT}_github
		cd ${OUTPUT}/${LINUX_KERNEL_NAME}/
		rm -rf ${OUTPUT}/${LINUX_KERNEL_NAME}/${LINUX_KERNEL_NAME}
		ln -s ${OUTPUT}/${LINUX_KERNEL_NAME}/${GIT_OUT}_github ${OUTPUT}/${LINUX_KERNEL_NAME}/${LINUX_KERNEL_NAME}
		if [ ${LINUX_KERNEL_VERSION} = "newest" ]; then
			date_X=`date +%s`
			echo ${LINUX_KERNEL_VERSION}_${date_X} > ${OUTPUT}/${LINUX_KERNEL_NAME}/version
		else
			echo ${LINUX_KERNEL_VERSION} > ${OUTPUT}/${LINUX_KERNEL_NAME}/version
		fi
		[ ${KERNEL_HIS}X = "LegacyX" ] && establish_legacy_kernel
		;;
	## Get from External package
	2)
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
		tar -xvf ${BASE_TAR}
		echo ${LINUX_KERNEL_VERSION} > ${OUTPUT}/${LINUX_KERNEL_NAME}/version
		rm -rf ${OUTPUT}/${LINUX_KERNEL_NAME}/${LINUX_KERNEL_NAME}
		rm -rf ${OUTPUT}/${LINUX_KERNEL_NAME}/${BASE_TAR}
		ln -s ${OUTPUT}/${LINUX_KERNEL_NAME}/${BASE_FILE} ${OUTPUT}/${LINUX_KERNEL_NAME}/${LINUX_KERNEL_NAME}
		;;
	## Get from wget
	3)
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
		;;
	# Patching for kernel
	4)
		if [ ! -d ${ROOT}/dl/linux-next ]; then
			cd ${ROOT}/dl/
			git clone https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
 linux-next
			cd ${ROOT}/dl/${GIT_OUT}
		else
			cd ${ROOT}/dl/${GIT_OUT}
			#git pull
		fi

		mkdir -p ${OUTPUT}/${LINUX_KERNEL_NAME}
		[ -d ${OUTPUT}/${LINUX_KERNEL_NAME}/linux-next ] && rm -rf ${OUTPUT}/${LINUX_KERNEL_NAME}/linux-next
		cp -rfa ${ROOT}/dl/linux-next ${OUTPUT}/${LINUX_KERNEL_NAME}/linux-next
		cd ${OUTPUT}/${LINUX_KERNEL_NAME}/
		rm -rf ${OUTPUT}/${LINUX_KERNEL_NAME}/${LINUX_KERNEL_NAME}
		ln -s ${OUTPUT}/${LINUX_KERNEL_NAME}/linux-next ${OUTPUT}/${LINUX_KERNEL_NAME}/${LINUX_KERNEL_NAME}
		echo linux-next > ${OUTPUT}/${LINUX_KERNEL_NAME}/version
		;;
esac

# CONFIG
# -> sed -i '/^#/d'
[ -d ${CONFIG_DIR} ] && cp -rf ${CONFIG_DIR}/* ${OUTPUT}/linux/linux/arch/${ARCH_LINUX_DIR}/configs/

# PATCH
# --> Create a patch
#     --> diff -uprN old/ new/ > 000001.patch
# --> Apply a patch
#     --> copy 000001.patch into old/
#     --> patch -p1 < 000001.patch
if [ -d ${PATCH_DIR} ]; then
	echo "Patching for ${OUTPUT}/linux/linux/"
	for patchfile in `ls ${PATCH_DIR}`
	do
		cp ${PATCH_DIR}/${patchfile} ${OUTPUT}/linux/linux/
		cd ${OUTPUT}/linux/linux/ > /dev/null 2>&1
		patch -p1 < ${patchfile}
		cd - > /dev/null 2>&1
		rm -rf ${OUTPUT}/linux/linux/${patchfile} > /dev/null 2>&1
	done
fi

if [ ${KERNEL_HIS}X = "LegacyX" ]; then
	cd ${OUTPUT}/${LINUX_KERNEL_NAME}/${LINUX_KERNEL_NAME}
	make defconfig
	make
fi
