#!/bin/bash

# The GNU Compiler Collection (GCC) is a compiler system produced by
# the GNU Project supporting various programming languages. GCC is a 
# key component of the GNU toolchain and the standard compiler for 
# most Unix-like Operating Systems. The Free Software Foundation (FSF) 
# distributes GCC under the GNU General Public License (GNU GPL). 
# GCC has played an important role in the growth of free software, 
# as both a tool and an example.
#
# (C) BiscuitOS 2017.12 <buddy.zhang@aliyun.com>

# $1: Rootdir
# $2: Websit
# $3: Packagename
# $4: Tarpackage type
# $5: staging dir
# $6: command

ROOT=$1
OUTDIR=${ROOT}/output/rootfs
STAGING_DIR=$5
PACKAGE_NAME=$3.$4
WEBSIT=$2/${PACKAGE_NAME}
GCC_NAME=gcclib140

# Downlaod tarpackage
if [ ! -f ${ROOT}/dl/${PACKAGE_NAME} ]; then
  cd ${ROOT}/dl
  wget ${WEBSIT}
  cd -
fi

mkdir -p ${STAGING_DIR}/bin
mkdir -p ${STAGING_DIR}/lib
# Root gcc
mkdir -p ${OUTDIR}/usr/root
mkdir -p ${OUTDIR}/usr/include

# Install gcc toolchain
if [ ! -f ${STAGING_DIR}/bin/cc ]; then
  mkdir .__tmp$3
  tar xjf ${ROOT}/dl/${PACKAGE_NAME} -C .__tmp$3 > /dev/null 2>&1
  cp -rfa .__tmp$3/$3/${GCC_NAME}/local/bin/* ${STAGING_DIR}/bin/
  cp -rfa .__tmp$3/$3/${GCC_NAME}/local/lib/* ${STAGING_DIR}/lib/
  cp -rfa .__tmp$3/$3/${GCC_NAME}/include/* ${OUTDIR}/usr/include/
  cp -rfa .__tmp$3/$3/${GCC_NAME} ${OUTDIR}/usr/root/
  rm -rf .__tmp$3
fi
