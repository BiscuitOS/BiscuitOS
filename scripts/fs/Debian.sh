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
FS_SITE=${7%X}
TAR_TYPE=${8%X}
PACKAGE_NAME=${PORJ_NAME}.${TAR_TYPE}

install_file()
{
	cd ${ROOT}/dl
	# Download source code from websit
	if [ ! -f ${ROOT}/dl/${PACKAGE_NAME} ]; then
		wget ${FS_SITE}/${PACKAGE_NAME}
	fi
	# Unpress tarpackage
	mkdir -p .tmp_${PORJ_NAME}
	tar -xvf ${PACKAGE_NAME} -C .tmp_${PORJ_NAME} > /dev/null 2>&1
	cp -rfa .tmp_${PORJ_NAME}/${PORJ_NAME}/* ${OUTPUT}/rootfs
	rm -rf .tmp_${PORJ_NAME} 
	
}

precheck()
{
	if [ -d ${OUTPUT}/rootfs ]; then
		rm -rf ${OUTPUT}/rootfs
	fi
	mkdir -p ${OUTPUT}/rootfs
}

precheck
install_file

if [ -f ${OUTPUT}/README.md ]; then
	rm ${OUTPUT}/README.md
fi

if [ -f ${OUTPUT}/RunBiscuitOS.sh ]; then
	rm ${OUTPUT}/RunBiscuitOS.sh
fi

## Auto-generate README.md
MF=${OUTPUT}/README.md
echo "Debian-0.91 Usermanual" >> ${MF}
echo '----------------------------' >> ${MF}
echo '' >> ${MF}
echo '```' >> ${MF}
echo "cd ${OUTPUT}" >> ${MF}
echo './RunBiscuitOS.sh start' >> ${MF}
echo '```' >> ${MF}
echo '' >> ${MF}
echo '' >> ${MF}
echo 'Reserved by @BiscuitOS' >> ${MF}

## Auto-generate RunBiscuitOS.sh
MF=${OUTPUT}/RunBiscuitOS.sh
echo '#!/bin/bash' >> ${MF}
echo '' >> ${MF}
echo '# Debian 0.91' >> ${MF}
echo '#' >> ${MF}
echo '# (C) 2019.07.29 BiscuitOS <buddy.zhang@aliyun.com>' >> ${MF}
echo '#' >> ${MF}
echo '# This program is free software; you can redistribute it and/or modify' >> ${MF}
echo '# it under the terms of the GNU General Public License version 2 as' >> ${MF}
echo '# published by the Free Software Foundation.' >> ${MF}
echo '' >> ${MF}
echo "ROOT=${OUTPUT}" >> ${MF}
echo "ROOTFS=${OUTPUT}/rootfs" >> ${MF}
echo '' >> ${MF}
echo '' >> ${MF}
echo 'if [ X$1 = "Xstart" ]; then' >> ${MF}
echo '	qemu-system-i386 -M pc -m 64 -boot order=ac,menu=on -drive file=${ROOTFS}/bootdisk,if=floppy,format=raw -device ne2k_isa,netdev=slirp -serial msmouse -vga std -redir tcp:22122::22 -netdev user,id=slirp' >> ${MF}
echo 'fi' >> ${MF}
chmod 755 ${MF}

######
# Display Userful Information
if [ "${BS_SILENCE}X" != "trueX" ]; then
	figlet "BiscuitOS"
fi
echo "                                  Debian-0.91"
echo ""
echo "*******************************************************************"
echo "Debian-0.91 Rootfs:"
echo -e "\e[1;31m ${OUTPUT}/rootfs \e[0m"
echo ""
echo "README:"
echo -e "\e[1;31m ${OUTPUT}/README.md \e[0m"
echo ""
echo "Blog"
echo -e "\e[1;31m https://biscuitos.github.io/blog/BiscuitOS_Catalogue/ \e[0m"
echo "*******************************************************************"
echo ""
