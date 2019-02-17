#!/bin/bash

set -e
# The GNU Compiler Collection (GCC) is a compiler system produced by
# the GNU Project supporting various programming languages. GCC is a 
# key component of the GNU toolchain and the standard compiler for 
# most Unix-like Operating Systems. The Free Software Foundation (FSF) 
# distributes GCC under the GNU General Public License (GNU GPL). 
# GCC has played an important role in the growth of free software, 
# as both a tool and an example.
#
# (C) BiscuitOS 2017.12 <buddy.zhang@aliyun.com>

###
# Don't edit
ROOT=${1%X}
PACKAGE=${2%X}
VERSION=${3%X}
KERNVER=${4%X}
GITHUB=${5%X}
PROJ_NAME=${6%X}
OUTPUT=${ROOT}/output/${PROJ_NAME}
STAGING=${OUTPUT}/rootfs/${PACKAGE}
GCC=${PACKAGE}.${VERSION}
FGCC=${GCC}/gcclib140

if [ -f ${STAGING}/bin/gcc ]; then
	exit 0
fi

# Downlaod tarpackage
if [ ! -f ${ROOT}/dl/${GCC}.tar.bz2 ]; then
	cd ${ROOT}/dl
	wget ${GITHUB}/${GCC}.tar.bz2
fi

mkdir -p ${OUTPUT}/rootfs/rootfs/bin
mkdir -p ${OUTPUT}/rootfs/rootfs/lib
mkdir -p ${OUTPUT}/rootfs/rootfs/usr/root
mkdir -p ${OUTPUT}/rootfs/rootfs/usr/include
mkdir -p ${STAGING}/bin ${STAGING}/lib ${STAGING}/usr/root \
                             ${STAGING}/usr/include

# Install gcc toolchain
if [ ! -f ${STAGING}/bin/gcc ]; then
	cd ${ROOT}/dl
	mkdir -p .__tmp${PACKAGE}
	tar xjf ${ROOT}/dl/${GCC}.tar.bz2 -C .__tmp${PACKAGE}
	cp -rfa .__tmp${PACKAGE}/${FGCC}/local/bin/* ${STAGING}/bin/
	cp -rfa .__tmp${PACKAGE}/${FGCC}/local/lib/* ${STAGING}/lib/
	cp -rfa .__tmp${PACKAGE}/${FGCC}/include/* ${STAGING}/usr/include/
	cp -rfa .__tmp${PACKAGE}/${FGCC}/local/bin/* ${OUTPUT}/rootfs/rootfs/bin
	cp -rfa .__tmp${PACKAGE}/${FGCC}/local/lib/* ${OUTPUT}/rootfs/rootfs/lib
	cp -rfa .__tmp${PACKAGE}/${FGCC}/include/* ${OUTPUT}/rootfs/rootfs/usr/include
	rm -rf .__tmp${PACKAGE}
fi
