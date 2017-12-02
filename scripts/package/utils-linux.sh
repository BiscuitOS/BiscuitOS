#!/bin/bash

# util-linux is a standard package distributed by the Linux Kernel 
# Organization for use as part of the Linux operating system. A fork, 
# util-linux-ng—with ng meaning "next generation"—was created when 
# development stalled, but as of January 2011 has been renamed back 
# to util-linux, and is the official version of the package
#
# (C) BiscuitOS 2017.12 <buddy.zhang@aliyun.com>

# $1: Rootdir
# $2: Websit
# $3: Packagename
# $4: Tarpackage type
# $5: staging dir
# $6: command

ROOT=$1
STAGING_DIR=$5
PACKAGE_NAME=$3.$4
WEBSIT=$2/${PACKAGE_NAME}

# Downlaod tarpackage
if [ ! -f ${ROOT}/dl/${PACKAGE_NAME} ]; then
  cd ${ROOT}/dl
  wget ${WEBSIT}
  cd -
fi

mkdir -p ${STAGING_DIR}/bin
mkdir -p ${STAGING_DIR}/etc
mkdir -p ${STAGING_DIR}/usr/bin

# Install gcc toolchain
if [ ! -f ${STAGING_DIR}/bin/mkdir ]; then
  mkdir .__tmp$3
  tar xjf ${ROOT}/dl/${PACKAGE_NAME} -C .__tmp$3 > /dev/null 2>&1
  cp -rfa .__tmp$3/$3/bin/* ${STAGING_DIR}/bin/
  cp -rfa .__tmp$3/$3/etc/* ${STAGING_DIR}/etc/
  cp -rfa .__tmp$3/$3/usr/bin/* ${STAGING_DIR}/usr/bin/
  rm -rf .__tmp$3
fi
