#/bin/bash

# Establish kernel source code from automake.
#
# (C) 2019.08.30 BiscuitOS <buddy.zhang@aliyun.com>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2 as
# published by the Free Software Foundation.

# Root path
PROJECT_ROOT=${1%X}
# Package Name
PACKAGE_NAME=${2%X}
# Package version
PACKAGE_VERSION=${3%X}
# Download website
PACKAGE_SITE=${4%X}
# Download GitHub
PACKAGE_GITHIB=${5%X}
# Package Patch
PACKAGE_PATCH=${6%X}
# Kernel Version
KERNEL_VERSION=${7%X}
[ ${KERNEL_VERSION} = "newest" ] && KERNEL_VERSION=6.0.0
[ ${KERNEL_VERSION} = "newest-gitee" ] && KERNEL_VERSION=6.0.0
[ ${KERNEL_VERSION} = "next" ] && KERNEL_VERSION=6.0.0
# Project Name (Default SDK name)
PROJECT_NAME=${8%X}
# Compression package type
PACKAGE_TARTYPE=${9%X}
# Cross Compile
PACKAGE_TOOL=${10%X}
# Sub-name
PACKAGE_SUBN=${11%X}
# KBuild Configure
KBUILD_CONFIG=${12%X}
# Kbuild Dynamic/Static library PATH (so, la, a)
KBUILD_LIBPATH=${13%X}
# Kbuild C/C++ Header PATH
KBUILD_CPPFLAGS=${14%X}
# Kbuild pkg-config library path
KBUILD_DPKCONFIG=${15%X}
# Kbuild CFLAGS 
KBUILD_CFLAGS=${16%X}
# Kbuild LDFLAGS
KBUILD_LDFLAGS=${17%X}
# Kbuild CXXFLAGS
KBUILD_CXXFLAGS=${18%X}
# Kbuild ASFLAGS
KBUILD_ASFLAGS=${19%X}
# BSfile
BSFILE=${20%X}
# Host Build-Architecture
HBARCH=${21%X}
# DL source file
DLSFILE=${23%X}
# Package Path
PPATH=${PACKAGE_PATCH%%/patch}

## Establish static Path
OUTPUT=${PROJECT_ROOT}/output/${PROJECT_NAME}
PACKAGE_ROOT=${OUTPUT}/package
ROOTFS_ROOT=${OUTPUT}/rootfs/rootfs
CROSS_PATH=${OUTPUT}/${PACKAGE_TOOL}/${PACKAGE_TOOL}
DATE_COMT=`date +"%Y.%m.%d"`
BASEPKNAME=${PACKAGE_NAME}-${PACKAGE_VERSION}
PACKAGE_BSBIT=${PPATH}/bsbit

# Kernel Version field
KERNEL_MAJOR_NO=
KERNEL_MINOR_NO=
KERNEL_MINIR_NO=
SUPPORT_GCC341=N
SUPPORT_GCCNONE=N
SUPPORT_26X24=N

# Determine Architecture
ARCH=unknown
[[ ${PROJECT_NAME} == *arm32* ]]   && ARCH=arm
[[ ${PROJECT_NAME} == *aarch* ]]   && ARCH=arm64
[[ ${PROJECT_NAME} == *i386* ]]    && ARCH=i386
[[ ${PROJECT_NAME} == *x86_64* ]]  && ARCH=x86_64
[[ ${PROJECT_NAME} == *riscv* ]]   && ARCH=riscv

# Detect Kernel version field
#   Kernek version field
#   --> Major.minor.minir
#   --> 5.0.1
#   --> Major: 5
#   --> Minor: 0
#   --> minir: 1
detect_kernel_version_field()
{
	[ ! ${KERNEL_VERSION} ] && echo "Invalid kernel version" && exit -1
	# Major field of Kernel version
	KERNEL_MAJOR_NO=${KERNEL_VERSION%%.*}
	tmpv1=${KERNEL_VERSION#*.}
	# Minor field of kernel version
	KERNEL_MINOR_NO=${tmpv1%%.*}
	# minir field of kernel version
	KERNEL_MINIR_NO=${tmpv1#*.}
}
detect_kernel_version_field

# Compile
[ ${KERNEL_MAJOR_NO}Y = "2Y" -a ${KERNEL_MINOR_NO}Y = "6Y" -a ${KERNEL_MINIR_NO} -lt 24 -a ${ARCH} = "arm" ] && SUPPORT_GCC341=Y && SUPPORT_26X24=Y
[ ${KERNEL_MAJOR_NO}Y = "2Y" -a ${KERNEL_MINOR_NO}Y = "6Y" -a ${KERNEL_MINIR_NO} -ge 24 -a ${ARCH} = "arm" ] && SUPPORT_GCCNONE=Y && PACKAGE_TOOL=arm-none-linux-gnueabi

# Linux 2.6.x < 24
if [ ${SUPPORT_26X24} = "Y" ]; then
	PACKAGE_TOOL=arm-linux
fi

## Prepare
sudo mkdir -p ${ROOTFS_ROOT}/usr/lib
sudo mkdir -p ${ROOTFS_ROOT}/usr/include

if [ -d ${PACKAGE_ROOT}/${PACKAGE_NAME}-${PACKAGE_VERSION} ]; then
	exit 0
fi 

mkdir -p ${PACKAGE_ROOT}/${PACKAGE_NAME}-${PACKAGE_VERSION}
MF=${PACKAGE_ROOT}/${PACKAGE_NAME}-${PACKAGE_VERSION}/Makefile

echo "# ${PACKAGE_NAME}" >> ${MF}
echo '#' >> ${MF}
echo "# (C) ${DATE_COMT} BiscuitOS <buddy.zhang@aliyun.com>" >> ${MF}
echo '#' >> ${MF}
echo '# This program is free software; you can redistribute it and/or modify' >> ${MF}
echo '# it under the terms of the GNU General Public License version 2 as' >> ${MF}
echo '# published by the Free Software Foundation.' >> ${MF}
echo '' >> ${MF}
echo '## Default Setup' >> ${MF}
echo "ROOT        := ${OUTPUT}" >> ${MF}
echo "BSROOT      := ${PROJECT_ROOT}" >> ${MF}
echo "ARCH        := ${ARCH}" >> ${MF}
echo "CROSS_NAME  := ${PACKAGE_TOOL}" >> ${MF}
echo 'CROSS_PATH  := $(ROOT)/$(CROSS_NAME)/$(CROSS_NAME)' >> ${MF}
echo 'CROSS_TOOL  := $(CROSS_PATH)/bin/$(CROSS_NAME)-' >> ${MF}
echo 'PACK        := $(ROOT)/RunBiscuitOS.sh' >> ${MF}
echo 'DL          := $(BSROOT)/dl' >> ${MF}
echo 'BSCORE      := $(BSROOT)/scripts/package/bsbit_core.sh' >> ${MF}
echo 'BSDEPD      := $(BSROOT)/scripts/package/bsbit_dependence.sh' >> ${MF}
echo 'KERNRU      := $(BSROOT)/scripts/package/kernel_insert.sh' >> ${MF}
echo 'PACKDIR     := $(ROOT)/package' >> ${MF}
echo 'HSFILE      := $(ROOT)/HardStack.BS' >> ${MF}
echo 'INS_PATH    := $(ROOT)/rootfs/rootfs/usr' >> ${MF}
echo "DLD_PATH    := \"-L\$(INS_PATH)/lib -L\$(CROSS_PATH)/lib ${KBUILD_LIBPATH}\"" >> ${MF}
echo "DCF_PATH    := \"-I\$(INS_PATH)/include -I\$(CROSS_PATH)/include ${KBUILD_CPPFLAGS}\"" >> ${MF}
echo "DPK_PATH    := ${KBUILD_DPKCONFIG}\$(INS_PATH)/lib/pkgconfig:\$(INS_PATH)/share/pkgconfig" >> ${MF}
echo "KBUDCFLAG   := ${KBUILD_CFLAGS}" >> ${MF}
echo "KBLDFLAGS   := ${KBUILD_LDFLAGS}" >> ${MF}
echo "KCXXFLAGS   := ${KBUILD_CXXFLAGS}" >> ${MF}
echo "KBASFLAGS   := ${KBUILD_ASFLAGS}" >> ${MF}
echo '' >> ${MF}
echo '# Package information' >> ${MF}
echo "PACKAGE   := ${BASEPKNAME}.${PACKAGE_TARTYPE}" >> ${MF}
echo "BASENAME  := ${BASEPKNAME}" >> ${MF}
echo 'TARCMD    := tar -xvf' >> ${MF}
echo 'PATCH     := patch/$(BASENAME)' >> ${MF}
echo "URL       := ${PACKAGE_SITE}" >> ${MF}
echo "BSFILE    := ${BSFILE}" >> ${MF}
echo "DLFILE    := ${DLSFILE}" >> ${MF}
echo 'CONFIG    := --prefix=$(INS_PATH) --host=$(CROSS_NAME)' >> ${MF}
echo "CONFIG    += --build=${HBARCH}" >> ${MF}
echo 'CONFIG    += LDFLAGS="$(KBLDFLAGS)" CFLAGS="$(KBUDCFLAG)"' >> ${MF}
echo 'CONFIG    += CXXFLAGS="$(KCXXFLAGS)" CCASFLAGS="$(KBASFLAGS)"' >> ${MF}
echo 'CONFIG    += LIBS=$(DLD_PATH) CPPFLAGS=$(DCF_PATH)' >> ${MF}
echo 'CONFIG    += PKG_CONFIG_PATH=$(DPK_PATH)' >> ${MF}
echo "CONFIG    += ${KBUILD_CONFIG}" >> ${MF}
echo '' >> ${MF}
echo '' >> ${MF}
echo 'kernel:' >> ${MF}
echo -e '\tsudo rm -rf $(ROOT)/rootfs/rootfs/etc/init.d/rcS.broiler > /dev/null' >> ${MF}
echo -e '\t@sh $(KERNRU) install_kernel $(ROOT) $(shell pwd)/$(BASENAME)' >> ${MF}
echo -e '\t@cd $(ROOT)/linux/linux ; \' >> ${MF}
if [ ${ARCH} == "i386" -o ${ARCH} == "x86_64" ]; then
        echo -e '\tmake  ARCH=$(ARCH) bzImage -j98 || exit 1 ;\' >> ${MF}
else
        echo -e '\tmake  ARCH=$(ARCH) CROSS_COMPILE=$(CROSS_TOOL) -j84 || exit 1 ;\' >> ${MF}
fi
echo -e '\tcd - > /dev/null' >> ${MF}
echo -e '\t@sh $(KERNRU) remove_kernel $(ROOT) $(shell pwd)/$(BASENAME)' >> ${MF}
echo '' >> ${MF}
echo 'menuconfig:' >> ${MF}
echo -e '\t@cd $(ROOT)/linux/linux ; \' >> ${MF}
echo -e '\tmake menuconfig ARCH=$(ARCH) ;\' >> ${MF}
echo -e '\tcd - > /dev/null' >> ${MF}
echo '' >> ${MF}
echo 'module:' >> ${MF}
echo -e '\t@cd $(ROOT)/linux/linux ; \' >> ${MF}
echo -e '\tmake modules ARCH=$(ARCH) -j98 ;\' >> ${MF}
echo -e '\tcd - > /dev/null' >> ${MF}
echo '' >> ${MF}
echo 'tags:' >> ${MF}
echo -e '\t@cd $(ROOT)/linux/linux ; \' >> ${MF}
echo -e '\tmake tags ARCH=$(ARCH) ;\' >> ${MF}
echo -e '\tcd - > /dev/null' >> ${MF}
echo '' >> ${MF}
echo 'prepare:' >> ${MF}
echo -e '\t@$(BSCORE) bsbit/$(BSFILE) $(PACKDIR)' >> ${MF}
echo '' >> ${MF}
echo 'depence:' >> ${MF}
echo -e '\t@$(BSDEPD) bsbit/$(BSFILE) $(PACKDIR) $(BASENAME)' >> ${MF}
echo '' >> ${MF}
echo 'depence-clean:' >> ${MF}
echo -e '\t@rm -rf $(PACKDIR)/.deptmp' >> ${MF}
echo '' >> ${MF}
echo 'download:' >> ${MF}
echo -e '\t@mkdir -p $(BASENAME)' >> ${MF}
echo -e '\t@cd $(BASENAME) ; \' >> ${MF}
echo -e '\tfor file in $(DLFILE) ; \' >> ${MF}
echo -e '\tdo \' >> ${MF}
echo -e '\t\tif [ ! -f $(HSFILE) ]; then \= ; \' >> ${MF}
echo -e '\t\t\tLFILE= ; \' >> ${MF}
echo -e '\t\t\tLDIR= ; \' >> ${MF}
echo -e '\t\t\tresult=`echo $${file} | grep "/"` ; \' >> ${MF}
echo -e '\t\t\t[ ! -z "$${result}" ] && LFILE=$${file##*/} ; \' >> ${MF}
echo -e '\t\t\t[ ! -z "$${LFILE}" ] && LDIR=$${file%%/$${LFILE}} ; \' >> ${MF}
echo -e '\t\t\t[ ! -z "$${LDIR}" ] && mkdir -p $${LDIR} ; \' >> ${MF}
echo -e '\t\t\twget $(URL)/$${file} ; \' >> ${MF}
echo -e '\t\t\t[ ! -z "$${LDIR}" ] && mv $${LFILE} $${LDIR} ; \' >> ${MF}
echo -e '\t\t\techo "Download $${file}" ; \' >> ${MF}
echo -e '\t\telse \' >> ${MF}
echo -e '\t\t\tDefault_URL=$(URL) ; \' >> ${MF}
echo -e '\t\t\tTarget_DIR=`echo $${Default_URL#https://gitee.com/BiscuitOS_team/HardStack/raw/Gitee/}` ; \' >> ${MF}
echo -e '\t\t\tHS_line=`sed -n -e '/HardStack/=' $(HSFILE)` ; \' >> ${MF}
echo -e '\t\t\tTarget_PATH="`head -$${HS_line} $(HSFILE) | tail -1`/$${Target_DIR}" ; \' >> ${MF}
echo -e '\t\t\tcp -rfa $${Target_PATH}/* ./ ; \' >> ${MF}
echo -e '\t\t\techo "Download Finish" ; \' >> ${MF}
echo -e '\t\t\texit 0 ; \' >> ${MF}
echo -e '\t\tfi ; \' >> ${MF}
echo -e '\tdone' >> ${MF}
echo '' >> ${MF}
echo 'tar:' >> ${MF}
echo -e '\t@if [ "${BS_SILENCE}X" != "trueX" ]; then \' >> ${MF}
echo -e '\t\tfiglet "BiscuitOS" ; \' >> ${MF}
echo -e '\tfi' >> ${MF}
echo -e '\t$(info "Decompression $(PACKAGE) => $(BASENAM) done.")' >> ${MF}
echo '' >> ${MF}
echo 'configure:' >> ${MF}
echo -e '\t@if [ "${BS_SILENCE}X" != "trueX" ]; then \' >> ${MF}
echo -e '\t\tfiglet "BiscuitOS" ; \' >> ${MF}
echo -e '\tfi' >> ${MF}
echo -e '\t$(info "Configure $(BASENAME) done.")' >> ${MF}
echo '' >> ${MF}
echo 'rootfs_install:' >> ${MF}
echo -e '\t$(ROOT)/RunBiscuitOS.sh mount' >> ${MF}
echo -e '\tmkdir -p $(ROOT)/FreezeDir/BiscuitOS' >> ${MF}
echo -e '\tsudo cp -rfa $(ROOT)/linux/linux/arch/x86/boot/bzImage $(ROOT)/FreezeDir/BiscuitOS/bzImage ; \' >> ${MF}
echo -e '\tsudo cp -rfa $(ROOT)/BiscuitOS.img $(ROOT)/FreezeDir/BiscuitOS/BiscuitOS.img ; \' >> ${MF}
echo -e '\t$(ROOT)/RunBiscuitOS.sh umount' >> ${MF}
echo -e '\t@if [ "${BS_SILENCE}X" != "trueX" ]; then \' >> ${MF}
echo -e '\t\tfiglet "BiscuitOS" ; \' >> ${MF}
echo -e '\tfi' >> ${MF}
echo -e '\t$(info "Rootfs Install .... [OK]")' >> ${MF}
echo '' >> ${MF}
echo 'install:' >> ${MF}
echo -e '\tchmod 755 KRunBiscuitOS.sh ; \' >> ${MF}
echo -e '\tsudo cp KRunBiscuitOS.sh $(INS_PATH)/bin/' >> ${MF}
echo -e '\t@if [ "${BS_SILENCE}X" != "trueX" ]; then \' >> ${MF}
echo -e '\t\tfiglet "BiscuitOS" ; \' >> ${MF}
echo -e '\tfi' >> ${MF}
echo -e '\t$(info "Install .... [OK]")' >> ${MF}
echo '' >> ${MF}
echo 'pack:' >> ${MF}
echo -e '\t$(ROOT)/RunBiscuitOS.sh pack' >> ${MF}
echo -e '\t$(info "Pack    .... [OK]")' >> ${MF}
echo '' >> ${MF}
echo 'build:' >> ${MF}
echo -e '\tmake' >> ${MF}
echo -e '\tmake install' >> ${MF}
echo -e '\tmake pack' >> ${MF}
echo -e '\t$(ROOT)/RunBiscuitOS.sh' >> ${MF}
echo '' >> ${MF}
echo 'run:' >> ${MF}
echo -e '\t$(ROOT)/RunBiscuitOS.sh' >> ${MF}
echo '' >> ${MF}
echo 'broiler:' >> ${MF}
echo -e '\tmake' >> ${MF}
echo -e '\tsudo touch $(ROOT)/rootfs/rootfs/etc/init.d/rcS.broiler > /dev/null' >> ${MF}
echo -e '\tmake install ; \' >> ${MF}
echo -e '\tif [ ! -d $(ROOT)/package/BiscuitOS-Broiler-default/BiscuitOS-Broiler-default ]; then \' >> ${MF}
echo -e '\t\tcd $(ROOT)/package/BiscuitOS-Broiler-default/ ; \' >> ${MF}
echo -e '\t\tmake download ; \' >> ${MF}
echo -e '\t\tmake ; \' >> ${MF}
echo -e '\tfi' >> ${MF}
echo -e '\t$(ROOT)/RunBiscuitOS.sh pack' >> ${MF}
echo -e '\tcd $(ROOT)/package/BiscuitOS-Broiler-default ; \' >> ${MF}
echo -e '\tmake install ; \' >> ${MF}
echo -e '\t$(ROOT)/RunBiscuitOS.sh pack ; \' >> ${MF}
echo -e '\tmake run ; \' >> ${MF}
echo -e '\tcd - > /dev/null' >> ${MF}
echo '' >> ${MF}
echo 'clean:' >> ${MF}
echo -e '\tcd $(BASENAME) ; \' >> ${MF}
echo -e '\trm *.o built-in.a' >> ${MF}
echo -e '\t$(info "Clean   .... [OK]")' >> ${MF}
echo '' >> ${MF}
echo 'distclean:' >> ${MF}
echo -e '\t@rm -rf $(BASENAME)' >> ${MF}
echo -e '\t$(info "DClean  .... [OK]")' >> ${MF}
echo '' >> ${MF}
echo '' >> ${MF}
echo '# Reserved by BiscuitOS :)' >> ${MF}


MF=${PACKAGE_ROOT}/${PACKAGE_NAME}-${PACKAGE_VERSION}/README.md

echo "${PACKAGE_NAME} Usermanual" >> ${MF}
echo '--------------------------------' >> ${MF}
echo '' >> ${MF}
echo "BiscuitOS support establish ${GNU_NAME} from source code, you" >> ${MF}
echo 'can follow step to create execute file on BiscuitOS:' >> ${MF}
echo '' >> ${MF}
echo '1. Download Source Code' >> ${MF}
echo '' >> ${MF}
echo '```' >> ${MF}
echo 'make download' >> ${MF}
echo '```' >> ${MF}
echo '' >> ${MF}
echo '2. Prepare Dependents' >> ${MF}
echo '' >> ${MF}
echo '```' >> ${MF}
echo 'make prepare' >> ${MF}
echo '```' >> ${MF}
echo '' >> ${MF}
echo '3. Uncompress' >> ${MF}
echo '' >> ${MF}
echo '```' >> ${MF}
echo 'make tar' >> ${MF}
echo '```' >> ${MF}
echo '' >> ${MF}
echo '4. Configure' >> ${MF}
echo '' >> ${MF}
echo '```' >> ${MF}
echo 'make configure' >> ${MF}
echo '```' >> ${MF}
echo '' >> ${MF}
echo '5. Compile' >> ${MF}
echo '' >> ${MF}
echo '```' >> ${MF}
echo 'make' >> ${MF}
echo '```' >> ${MF}
echo '' >> ${MF}
echo '6. Install' >> ${MF}
echo '' >> ${MF}
echo '```' >> ${MF}
echo 'make install' >> ${MF}
echo '```' >> ${MF}
echo '' >> ${MF}
echo '7. Pack image' >> ${MF}
echo '' >> ${MF}
echo '```' >> ${MF}
echo 'make pack' >> ${MF}
echo '```' >> ${MF}
echo '' >> ${MF}
echo '8. Running' >> ${MF}
echo '' >> ${MF}
echo '```' >> ${MF}
echo "cd ${OUTPUT}" >> ${MF}
echo "./RunBiscuitOS.sh start" >> ${MF}
echo '```' >> ${MF}
echo '' >> ${MF}
echo '## Silence output information' >> ${MF}
echo '' >> ${MF}
echo '```' >> ${MF}
echo 'export BS_SILENCE=true' >> ${MF}
echo '```' >> ${MF}
echo '' >> ${MF}
echo '## Link' >> ${MF}
echo '' >> ${MF}
echo "[${PACKAGE_NAME}](${PACKAGE_SITE})" >> ${MF}
echo '' >> ${MF}
echo '' >> ${MF}
echo '# Reserved by BiscuitOS :)' >> ${MF}

MF=${PACKAGE_ROOT}/${PACKAGE_NAME}-${PACKAGE_VERSION}/KRunBiscuitOS.sh

echo '#!/bin/ash' >> ${MF}
echo '# BiscuitOS <buddy.zhang@aliyun.com>' >> ${MF}
echo '' >> ${MF}
echo 'AFTER_NUM=0' >> ${MF}
echo 'BEFORE_NUM=0' >> ${MF}
echo 'COMMAND=' >> ${MF}
echo '' >> ${MF}
echo 'usage() {' >> ${MF}
echo -e '\tKRunBiscuitOS.sh [-a NUM] [-b NUM]' >> ${MF}
echo '}' >> ${MF}
echo '' >> ${MF}
echo 'while getopts 'a:b:h' OPT; do' >> ${MF}
echo '  case ${OPT} in' >> ${MF}
echo '    a)' >> ${MF}
echo '        AFTER_NUM="$OPTARG";;' >> ${MF}
echo '    b)' >> ${MF}
echo '        BEFORE_NUM="$OPTARG";;' >> ${MF}
echo '    h)' >> ${MF}
echo '        usage;;' >> ${MF}
echo '    ?)' >> ${MF}
echo '        usage;;' >> ${MF}
echo '  esac' >> ${MF}
echo 'done' >> ${MF}
echo '' >> ${MF}
echo '[ $AFTER_NUM  != "0" ] && COMMAND="${COMMAND} -A $AFTER_NUM"' >> ${MF}
echo '[ $BEFORE_NUM != "0" ] && COMMAND="${COMMAND} -B $BEFORE_NUM"' >> ${MF}
echo '' >> ${MF}
echo 'dmesg | grep "BiscuitOS-stub" ${COMMAND}' >> ${MF}

# Patch work
#
# Create patch:
#  Single file:
#    $ diff -up A/a.c B/a.c > A.patch
#  Multip file:
#    $ diff -uprN A/ B/ > A.patch
# 
# Apply patch:
#    $ patch -p1 < A.patch

if [ -d ${PACKAGE_PATCH} ]; then
	cp -rfa ${PACKAGE_PATCH} ${PACKAGE_ROOT}/${BASEPKNAME}/
fi

# Bsfile
if [ -d ${PACKAGE_BSBIT} ]; then
	cp -rf ${PACKAGE_BSBIT} ${PACKAGE_ROOT}/${BASEPKNAME}/
fi
