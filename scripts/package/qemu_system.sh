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
QEMU_NAME=${2%X}
QEMU_VERSION=${3%X}
QEMU_SITE=${4%X}
QEMU_GITHUB=${5%X}
QEMU_PATCH=${6%X}
KERN_VERION=$7
QEMU_SRC=${8%X}
PROJ_NAME=${9%X}
QEMU_TAR=${10%X}
QEMU_SUBNAME=${11%X}
OUTPUT=${ROOT}/output/${PROJ_NAME}
ARCH_MAGIC=${12%X}
QEMU_CXL=${13%X}
NUMA_HARD=${14%X}
UBUNTU_FULL=$(cat /etc/issue | grep "Ubuntu" | awk '{print $2}')
UBUNTU=${UBUNTU_FULL:0:2}
EMULATER=
CONFIG=
QEMU_GDB=
QEMU_BIN=
# Ubuntu 24.04/22.04/20.04 need QEMU 5.0.0
[ ${UBUNTU}X = 24X ] && QEMU_VERSION="5.0.0"
[ ${UBUNTU}X = 22X ] && QEMU_VERSION="5.0.0"
[ ${UBUNTU}X = 20X -a ${ARCH_MAGIC}X = 1X ] && QEMU_VERSION="4.0.0"
[ ${UBUNTU}X = 20X -a ${ARCH_MAGIC}X = 2X ] && QEMU_VERSION="5.0.0"
[ ${UBUNTU}X = 20X -a ${ARCH_MAGIC}X = 3X ] && QEMU_VERSION="5.0.0"
[ ${UBUNTU}X = 22X -a ${ARCH_MAGIC}X = 2X ] && QEMU_VERSION="5.0.0"
[ ${UBUNTU}X = 22X -a ${ARCH_MAGIC}X = 3X ] && QEMU_VERSION="5.0.0"

PATCH_DIR=${ROOT}/package/qemu/patch/${QEMU_VERSION}/
[ ${ARCH_MAGIC}X = 1X ] && PATCH_DIR=${ROOT}/package/qemu/patch/${QEMU_VERSION}-i386/

## CXL
if [ ${QEMU_CXL}X = "yX" -o ${NUMA_HARD}X = "yX" ]; then
	QEMU_VERSION="QEMU-CLX-2024-08-20"
	QEMU_SRC=4
	QEMU_GITHUB="https://gitlab.com/jic23/qemu.git"
	#QEMI_HARD="8eb2a03258"
	QEMU_BRANCH="cxl-2024-08-20"
	PATCH_DIR=${ROOT}/package/qemu/patch/QEMU-CXL/
fi

QEMU_FULL=${TOOL_SUBNAME%.${QEMU_TAR}}
QEMU_DL_NAME=qemu-${QEMU_VERSION#v}.${QEMU_TAR}
QEMU_UNTAR_NAME=qemu-${QEMU_VERSION#v}

if [ -d ${OUTPUT}/${QEMU_NAME}/${QEMU_NAME} ]; then
        version=`sed -n 1p ${OUTPUT}/${QEMU_NAME}/version`

        if [ ${version} = ${QEMU_VERSION} ]; then
                exit 0
        fi

	if [ -d ${OUTPUT}/${QEMU_NAME}/qemu-${QEMU_VERSION} ]; then
		echo "QEMU Direct Change"
		[ -d ${OUTPUT}/${QEMU_NAME}/${QEMU_NAME} ] && rm -rf ${OUTPUT}/${QEMU_NAME}/${QEMU_NAME}
		ln -s ${OUTPUT}/${QEMU_NAME}/qemu-${QEMU_VERSION} ${OUTPUT}/${QEMU_NAME}/${QEMU_NAME}
		echo ${QEMU_VERSION} > ${OUTPUT}/${QEMU_NAME}/version
		exit 0
	fi
fi

qemu_patch()
{
  # PATCH
  # --> Create a patch
  #     --> diff -uprN old/ new/ > 000001.patch
  # --> Apply a patch
  #     --> copy 000001.patch into old/
  #     --> patch -p1 < 000001.patch
  if [ -d ${PATCH_DIR} ]; then
          echo "Patching for ${OUTPUT}/qemu-system/qemu-system"
          for patchfile in `ls ${PATCH_DIR}`
          do
                cp ${PATCH_DIR}/${patchfile} ${OUTPUT}/qemu-system/qemu-${QEMU_VERSION}/
                cd ${OUTPUT}/qemu-system/qemu-${QEMU_VERSION} > /dev/null 2>&1
                patch -p1 < ${patchfile}
                cd - > /dev/null 2>&1
                rm -rf ${OUTPUT}/qemu-system/qemu-${QEMU_VERSION}/${patchfile} > /dev/null 2>&1
          done
  fi
}

case ${ARCH_MAGIC} in
	1)
	# X86
	EMULATER=i386-softmmu,i386-linux-user
	CONFIG="--enable-kvm --enable-virtfs"
	QEMU_GDB="-cpu host --enable-kvm -m 64 -kernel ${OUTPUT}/linux/linux/arch/x86/boot/bzImage"
	QEMU_BIN=${OUTPUT}/${QEMU_NAME}/${QEMU_NAME}/x86_64-softmmu/qemu-system-x86_64
	[ ${QEMU_VERSION} = "6.0.0" ] && CONFIG+=" --enable-gtk"
	[ ${QEMU_CXL}X = "yX" ] && CONFIG+=" --enable-libpmem --enable-slirp"
	;;
	2)
	# ARM 32-bit
	EMULATER=arm-softmmu,arm-linux-user
	CONFIG="--enable-virtfs --enable-kvm"
	;;
	3)
	# ARM 64-bit
	EMULATER=aarch64-softmmu,aarch64-linux-user
	CONFIG="--enable-kvm --enable-virtfs"
	;;
	4)
	# RISC-V 32-bit
	EMULATER=riscv32-softmmu
	CONFIG="--enable-kvm --enable-virtfs"
	;;
	5)
	# RISC-V 64-bit
	EMULATER=riscv64-softmmu
	CONFIG="--enable-kvm --enable-virtfs"
	;;
        6)
        # X86_64
        EMULATER=x86_64-softmmu,x86_64-linux-user
        CONFIG="--enable-kvm --enable-virtfs"
        ;;
esac

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
	./configure --target-list=${EMULATER} ${CONFIG}
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
	[ ${UBUNTU}X = 20X ] && qemu_patch
	cd ${BASE_FILE}
	./configure --target-list=${EMULATER} ${CONFIG}
        
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
	[ ${UBUNTU}X = 20X ] && qemu_patch
	rm -rf ${QEMU_DL_NAME}
	cd ${QEMU_UNTAR_NAME}
        ./configure --target-list=${EMULATER} ${CONFIG}
        
	make -j8
        echo ${QEMU_VERSION} > ${OUTPUT}/${QEMU_NAME}/version
        rm -rf ${OUTPUT}/${QEMU_NAME}/${QEMU_NAME}
        ln -s ${OUTPUT}/${QEMU_NAME}/${QEMU_UNTAR_NAME} ${OUTPUT}/${QEMU_NAME}/${QEMU_NAME}
fi

## Get from github
if [ ${QEMU_SRC} = "4" ]; then
        if [ ! -d ${ROOT}/dl/QEMU-CXL ]; then
                cd ${ROOT}/dl/
                git clone ${QEMU_GITHUB} QEMU-CXL
                cd ${ROOT}/dl/QEMU-CXL
		git checkout ${QEMU_HARD}
                #git reset --hard ${QEMI_HARD}
                cd -
        fi
        mkdir -p ${OUTPUT}/${QEMU_NAME}
        if [ -d ${OUTPUT}/${QEMU_NAME}/QEMU-CXL ]; then
                rm -rf ${OUTPUT}/${QEMU_NAME}/QEMU-CXL
        fi
        cp -rfa ${ROOT}/dl/QEMU-CXL ${OUTPUT}/${QEMU_NAME}/
	cd ${OUTPUT}/${QEMU_NAME}/QEMU-CXL
	# patch -p1 < ${PATCH_DIR}/QEMU-CXL-0001.patch
        ./configure --target-list=${EMULATER} ${CONFIG} --disable-werror
        make -j8
        echo ${QEMU_VERSION} > ${OUTPUT}/${QEMU_NAME}/version
        rm -rf ${OUTPUT}/${QEMU_NAME}/${QEMU_NAME}
        ln -s ${OUTPUT}/${QEMU_NAME}/QEMU-CXL ${OUTPUT}/${QEMU_NAME}/${QEMU_NAME}
fi

MFILE=${OUTPUT}/${QEMU_NAME}/RunQEMU.sh

echo -e '#!/bin/bash' > ${MFILE}
echo -e '#' >> ${MFILE}
echo -e '# BiscuitOS QEMU DEBUG' >> ${MFILE}
echo -e '' >> ${MFILE}
echo -e "ROOT=${OUTPUT}" >> ${MFILE}
echo -e "QEMU_DIR=${OUTPUT}/${QEMU_NAME}/${QEMU_NAME}" >> ${MFILE}
echo -e '' >> ${MFILE}
echo -e 'while getopts "bghBr" arg' >> ${MFILE}
echo -e 'do' >> ${MFILE}
echo -e '\tcase $arg in' >> ${MFILE}
echo -e '\t\tb) # Build and Run QEMU' >> ${MFILE}
echo -e '\t\t\tcd ${QEMU_DIR}' >> ${MFILE}
echo -e '\t\t\tmake -j98' >> ${MFILE}
echo -e '\t\t\t[ $? -eq 0 ] && ${ROOT}/RunBiscuitOS.sh' >> ${MFILE}
echo -e '\t\t\tcd -' >> ${MFILE}
echo -e '\t\t\t;;' >> ${MFILE}
echo -e '\t\tg) # GDB QEMU' >> ${MFILE}
echo -e '\t\t\tcd ${QEMU_DIR}' >> ${MFILE}
echo -e '\t\t\tmake -j98' >> ${MFILE}
echo -e '\t\t\t[ $? -ne 0 ] && exit -1' >> ${MFILE}
echo -e "\t\t\tgdb --args ${QEMU_BIN} ${QEMU_GDB}" >> ${MFILE}
echo -e '\t\t\tcd -' >> ${MFILE}
echo -e '\t\t\t;;' >> ${MFILE}
echo -e '\t\tB) # Build seaBIOS' >> ${MFILE}
echo -e '\t\t\tcd ${QEMU_DIR}/roms/seabios/' >> ${MFILE}
echo -e '\t\t\tmake -j98' >> ${MFILE}
echo -e '\t\t\tcd -' >> ${MFILE}
echo -e '\t\t\t;;' >> ${MFILE}
echo -e '\t\tr) # Run BiscuitOS' >> ${MFILE}
echo -e '\t\t\t${ROOT}/RunBiscuitOS.sh' >> ${MFILE}
echo -e '\t\t\t;;' >> ${MFILE}
echo -e '\t\th) # Help Information' >> ${MFILE}
echo -e '\t\t\techo "See: http://www.biscuitos.cn/blog/BiscuitOS_Catalogue/"' >> ${MFILE}
echo -e '\t\t\t;;' >> ${MFILE}
echo -e '\tesac' >> ${MFILE}
echo -e 'done' >> ${MFILE}
chmod 755 ${MFILE}
