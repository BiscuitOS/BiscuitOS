#!/bin/bash

# Linux Destro Version
LINUX_DESTRO=$1
# BISCUITOS ROOT
BROOT=$(pwd)
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
# FILE_U_H
FILE_U_H=BiscuitOS_memory_fluid.h
# TEMP_PATH
TEMP_PATH=${PACKAGE}/.debug_tmp
# KERNEL
KERNEL=${ROOT}/linux/linux
# C INSTALL
INSTALL_C=${KERNEL}/lib
# H INSTALL
INSTALL_H=${KERNEL}/include/linux/

mkdir -p ${BROOT}/dl/MEMORY_FLUID

# CHECK OUT
[ -f ${KERNEL}/BS_DEBUG ] && echo "Deploy BiscuitOS Tools Done" && exit 0

# ARCHITECTURE
if [[ "$LINUX_DESTRO" == *"i386"* ]]; then
	ARCH=i386
	LAST_CT=$(tail -n 1 "${ROOT}/linux/linux/arch/x86/entry/syscalls/syscall_32.tbl")
	read -r __NR_SYS _ <<< "${LAST_CT}"
	NR_SYS=$((__NR_SYS + 1))
	echo "${NR_SYS}     i386  debug_BiscuitOS         sys_debug_BiscuitOS" >> ${KERNEL}/arch/x86/entry/syscalls/syscall_32.tbl

	RC=${BROOT}/dl/MEMORY_FLUID/BiscuitOS_memory_fluid.h.i386
elif [[ "$LINUX_DESTRO" == *"x86_64"* ]]; then
	ARCH=x86_64
	LAST_CT=$(tail -n 1 "${ROOT}/linux/linux/arch/x86/entry/syscalls/syscall_64.tbl")
	read -r __NR_SYS _ <<< "${LAST_CT}"
	NR_SYS=600 # FORCE
	echo "${NR_SYS}     common  debug_BiscuitOS         sys_debug_BiscuitOS" >> ${KERNEL}/arch/x86/entry/syscalls/syscall_64.tbl

	RC=${BROOT}/dl/MEMORY_FLUID/BiscuitOS_memory_fluid.h.x86_64
fi

echo "#ifndef _BISCUTIOS_MEMORY_FLUID_H" > ${RC}
echo "#define _BISCUTIOS_MEMORY_FLUID_H" >> ${RC}
echo "" >> ${RC}
echo "#define BiscuitOS_memory_fluid_enable()         syscall(${NR_SYS}, 1)" >> ${RC}
echo "#define BiscuitOS_memory_fluid_disable()        syscall(${NR_SYS}, 0)" >> ${RC}
echo "" >> ${RC}
echo "#endif" >> ${RC}

# Donwload
[ -d ${TEMP_PATH} ] && rm -rf ${TEMP_PATH}
mkdir -p ${TEMP_PATH} > /dev/null 2>&1
cd ${TEMP_PATH} > /dev/null 2>&1
wget ${FILE_PATH}/${FILE_C} > /dev/null 2>&1
wget ${FILE_PATH}/${FILE_H} > /dev/null 2>&1

# INSTALL C
cp -rfa ${FILE_C} ${INSTALL_C}
cp -rfa ${FILE_H} ${INSTALL_H}

# UPDATE KERNEL
echo "obj-y += BiscuitOS-stub.o" >> ${INSTALL_C}/Makefile
# UPDATE KERNEL HEAD
sed -i '32s/^/\#include "BiscuitOS-stub.h"\n/g' ${INSTALL_H}/kernel.h

echo "BiscuitOS Debug Tools Done" > ${KERNEL}/BS_DEBUG
rm -rf ${TEMP_PATH}
echo "BiscuitOS Debug Tools Done"
