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

###
# Don't edit
ROOT=$1
PACKAGE=$2
VERSION=$3
KERNVER=$4
GITHUB=$5
STAGING=${ROOT}/output/rootfs/rootfs_${KERNVER}
GCC=${PACKAGE}.${VERSION}
FGCC=${GCC}/gcclib140

# Downlaod tarpackage
if [ ! -f ${ROOT}/dl/${GCC}.tar.bz2 ]; then
  cd ${ROOT}/dl
  wget ${GITHUB}/${GCC}.tar.bz2
  cd - > /dev/null 2>&1
fi

mkdir -p ${STAGING}/bin ${STAGING}/lib ${STAGING}/usr/root \
                             ${STAGING}/usr/include

# Install gcc toolchain
if [ ! -f ${STAGING}/bin/gcc ]; then
  cd ${ROOT}/dl
  mkdir -p .__tmp${PACKAGE}
  tar xjf ${ROOT}/dl/${GCC}.tar.bz2 -C .__tmp${PACKAGE} > /dev/null 2>&1
  cp -rfa .__tmp${PACKAGE}/${FGCC}/local/bin/* ${STAGING}/bin/
  cp -rfa .__tmp${PACKAGE}/${FGCC}/local/lib/* ${STAGING}/lib/
  cp -rfa .__tmp${PACKAGE}/${FGCC}/include/* ${STAGING}/usr/include/
  rm -rf .__tmp${PACKAGE}
  cd - > /dev/null 2>&1
fi
