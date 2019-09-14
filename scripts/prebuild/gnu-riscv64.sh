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
PROJ_NAME=${7%X}
GNU_RISCV_TAR=${8%X}
GNU_RISCV_SUBNAME=${10%X}
OUTPUT=${ROOT}/output/${PROJ_NAME}
GNU_RISCV_WGET_NAME=${GNU_RISCV_SITE##*/}
RISCV_WAY=${9%X}

case ${RISCV_WAY} in
	1)
	;;
	2)
	riscv64-linux-gnu-gcc-7 -v
	[ $? != 0 ] && sudo apt-get -y gcc-riscv64-linux-gnu
	;;
esac
