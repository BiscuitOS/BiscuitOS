#!/bin/bash

# Linux Destro Version
LINUX_DESTRO=$1
# DEBUG_FILE
ROOT=$(pwd)/output/${LINUX_DESTRO}
# Package 
PACKAGE=${ROOT}/package
# FILE_PATH
FILE_PATH=https://gitee.com/BiscuitOS_team/HardStack/raw/Gitee/Debug-Stub/BiscuitOS-debug-stub-Kernel
# FILE_C
FILE_C=BiscuitOS-stub.c
# FILE_H
FILE_H=BiscuitOS-stub.h
# TEMP_PATH
TEMP_PATH=${PACKAGE}/.debug_tmp
# KERNEL
KERNEL=${ROOT}/linux/linux
# C INSTALL
INSTALL_C=${KERNEL}/lib
# H INSTALL
INSTALL_H=${KERNEL}/include/linux/

# CHECK OUT
[ -f ${KERNEL}/BS_DEBUG ] && echo "Deploy BiscuitOS Tools Done" && exit 0

# Donwload
[ -d ${TEMP_PATH} ] && rm -rf ${TEMP_PATH}
mkdir -p ${TEMP_PATH} > /dev/null 2>&1
cd ${TEMP_PATH} > /dev/null 2>&1
wget ${FILE_PATH}/${FILE_C} > /dev/null 2>&1
wget ${FILE_PATH}/${FILE_H} > /dev/null 2>&1

# INSTALL C
cp -rfa ${FILE_C} ${INSTALL_C}
cp -rfa ${FILE_H} ${INSTALL_H}

echo "obj-y += BiscuitOS-stub.o" >> ${INSTALL_C}/Makefile
echo "600     common  debug_BiscuitOS         sys_debug_BiscuitOS" >> ${KERNEL}/arch/x86/entry/syscalls/syscall_64.tbl
sed -i '32s/^/\#include "BiscuitOS-stub.h"\n/g' ${INSTALL_H}/kernel.h

echo "BiscuitOS Debug Tools Done" > ${KERNEL}/BS_DEBUG
rm -rf ${TEMP_PATH}
echo "BiscuitOS Debug Tools Done"
