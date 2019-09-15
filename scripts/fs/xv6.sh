#!/bin/bash

set -e
# Establish BiscuitOS Rootfs.
#
# (C) 2018.07.23 BiscuitOS <buddy.zhang@aliyun.com>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2 as
# published by the Free Software Foundation.

##
# Don't edit

# Obtain data from Kbuild
ROOT=$1
FS_NAME=${2%X}
FS_VERSION=${3%X}
KERN_VERSION=${4%X}
NODE_TYPE=2
FS_TYPE=0
KERN_MAGIC=$5
PORJ_NAME=${5%X}
OUTPUT=${ROOT}/output/${PORJ_NAME}
DTB=${OUTPUT}/DTS/system.dtb
BIOS=${OUTPUT}/BIOS/BIOS.bin
KIMAGE=${OUTPUT}/linux/linux/arch/x86/kernel/BiscuitOS
BIOS_U=${6%X}

if [ -f ${OUTPUT}/README.md ]; then
	rm ${OUTPUT}/README.md
fi

## Auto-generate README.md
MF=${OUTPUT}/README.md
echo "MIT ${KERN_VERSION} Usermanual" >> ${MF}
echo '----------------------------' >> ${MF}
echo '' >> ${MF}
echo '# Build Kernel' >> ${MF}
echo '' >> ${MF}
echo '```' >> ${MF}
echo "cd ${OUTPUT}/xv6/xv6" >> ${MF}
echo 'make' >> ${MF}
echo '```' >> ${MF}
echo '' >> ${MF}
echo '# Running Kernel' >> ${MF}
echo '' >> ${MF}
echo '```' >> ${MF}
echo "cd ${OUTPUT}/xv6/xv6" >> ${MF}
echo 'make queue' >> ${MF}
echo '```' >> ${MF}
echo '' >> ${MF}
echo 'Reserved by @BiscuitOS' >> ${MF}


######
# Display Userful Information
figlet "BiscuitOS"
echo "*******************************************************************"
echo "Kernel Path:"
echo -e "\e[1;31m ${OUTPUT}/xv6/xv6 \e[0m"
echo ""
echo "README:"
echo -e "\e[1;31m ${OUTPUT}/README.md \e[0m"
echo ""
echo "Blog"
echo -e "\e[1;31m https://biscuitos.github.io/blog/BiscuitOS_Catalogue/ \e[0m"
echo "*******************************************************************"
echo ""
