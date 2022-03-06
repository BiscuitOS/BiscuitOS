#/bin/bash

set -e
# Establish tools from automake.
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
# Compile Source list
CSRC=${22%X}
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
echo "CROSS_NAME  := ${PACKAGE_TOOL}" >> ${MF}
echo 'CROSS_PATH  := $(ROOT)/$(CROSS_NAME)/$(CROSS_NAME)' >> ${MF}
echo 'CROSS_TOOL  := $(CROSS_PATH)/bin/$(CROSS_NAME)-' >> ${MF}
echo 'PACK        := $(ROOT)/RunBiscuitOS.sh' >> ${MF}
echo 'DL          := $(BSROOT)/dl' >> ${MF}
echo 'BSCORE      := $(BSROOT)/scripts/package/bsbit_core.sh' >> ${MF}
echo 'BSDEPD      := $(BSROOT)/scripts/package/bsbit_dependence.sh' >> ${MF}
echo 'PACKDIR     := $(ROOT)/package' >> ${MF}
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
echo "DWAME     := glibc-${PACKAGE_VERSION}" >> ${MF}
echo "DLNAME    := glibc-${PACKAGE_VERSION}.${PACKAGE_TARTYPE}" >> ${MF}
echo 'TARCMD    := tar -xvf' >> ${MF}
echo 'PATCH     := patch/$(BASENAME)' >> ${MF}
echo "URL       := ${PACKAGE_SITE}" >> ${MF}
echo "BSFILE    := ${BSFILE}" >> ${MF}
echo 'CONFIG    := --prefix=$(INS_PATH)' >> ${MF}
echo "CONFIG    += ${KBUILD_CONFIG}" >> ${MF}
echo '' >> ${MF}
echo '' >> ${MF}
echo 'all:' >> ${MF}
echo -e '\t@cd BUILD-$(BASENAME) ; \' >> ${MF}
echo -e '\tmake -j98' >> ${MF}
echo -e '\t$(info "Build $(PACKAGE) done.")' >> ${MF}
echo -e '\t@if [ "${BS_SILENCE}X" != "trueX" ]; then \' >> ${MF}
echo -e '\t\tfiglet "BiscuitOS" ; \' >> ${MF}
echo -e '\tfi' >> ${MF}
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
echo -e '\t@if [ ! -f $(DL)/$(DLNAME) ]; \' >> ${MF}
echo -e '\tthen \' >> ${MF}
echo -e '\t\twget $(URL)/$(DLNAME) -P $(DL); \' >> ${MF}
echo -e '\t\tset -e ; \' >> ${MF}
echo -e '\t\tcp -rfa $(DL)/$(DLNAME) ./ ; \' >> ${MF}
echo -e '\telse \' >> ${MF}
echo -e '\t\tcp -rfa $(DL)/$(DLNAME) ./ ; \' >> ${MF}
echo -e '\tfi' >> ${MF}
echo -e '\t@if [ "${BS_SILENCE}X" != "trueX" ]; then \' >> ${MF}
echo -e '\t\tfiglet "BiscuitOS" ; \' >> ${MF}
echo -e '\tfi' >> ${MF}
echo -e '\t$(info "Download $(PACKAGE) done.")' >> ${MF}
echo '' >> ${MF}
echo 'tar:' >> ${MF}
echo -e '\t$(TARCMD) $(DLNAME)' >> ${MF}
echo -e '\t@mv $(DWAME) $(BASENAME)' >> ${MF}
echo -e '\t@if [ ! -d $(PATCH) ]; then \' >> ${MF}
echo -e '\t\texit 0 ; \' >> ${MF}
echo -e '\tfi' >> ${MF}
echo -e '\t@for patchname in $(shell ls $(PATCH)) ; \' >> ${MF}
echo -e '\tdo \' >> ${MF}
echo -e '\t\tcp -rf $(PATCH)/$${patchname} $(BASENAM) ; \' >> ${MF}
echo -e '\t\tcd $(BASENAM) > /dev/null 2>&1 ; \' >> ${MF}
echo -e '\t\tpatch -p1 < $${patchname} ; \' >> ${MF}
echo -e '\t\tcd - > /dev/null 2>&1 ; \' >> ${MF}
echo -e '\tdone' >> ${MF}
echo -e '\t@if [ "${BS_SILENCE}X" != "trueX" ]; then \' >> ${MF}
echo -e '\t\tfiglet "BiscuitOS" ; \' >> ${MF}
echo -e '\tfi' >> ${MF}
echo -e '\t$(info "Decompression $(PACKAGE) => $(BASENAM) done.")' >> ${MF}
echo '' >> ${MF}
echo 'configure:' >> ${MF}
echo -e '\t@mkdir -p BUILD-$(BASENAME) ; \' >> ${MF}
echo -e '\tcd BUILD-$(BASENAME) ; \' >> ${MF}
echo -e '\t../$(BASENAME)/configure $(CONFIG)' >> ${MF}
echo -e '\t@if [ "${BS_SILENCE}X" != "trueX" ]; then \' >> ${MF}
echo -e '\t\tfiglet "BiscuitOS" ; \' >> ${MF}
echo -e '\tfi' >> ${MF}
echo -e '\t$(info "Configure $(BASENAME) done.")' >> ${MF}
echo '' >> ${MF}
echo 'install:' >> ${MF}
echo -e '\t@cd BUILD-$(BASENAME) ; \' >> ${MF}
echo -e '\tsudo make install -j98' >> ${MF}
echo -e '\t@if [ "${BS_SILENCE}X" != "trueX" ]; then \' >> ${MF}
echo -e '\t\tfiglet "BiscuitOS" ; \' >> ${MF}
echo -e '\tfi' >> ${MF}
echo -e '\t$(info "Install .... [OK]")' >> ${MF}
echo '' >> ${MF}
echo 'pack:' >> ${MF}
echo -e '\t@$(PACK) pack' >> ${MF}
echo -e '\t$(info "Pack    .... [OK]")' >> ${MF}
echo '' >> ${MF}
echo 'clean:' >> ${MF}
echo -e '\tcd $(BASENAME) ; \' >> ${MF}
echo -e '\tmake clean' >> ${MF}
echo -e '\t$(info "Clean   .... [OK]")' >> ${MF}
echo '' >> ${MF}
echo 'distclean:' >> ${MF}
echo -e '\t@rm -rf $(BASENAME) BUILD-$(BASENAME)' >> ${MF}
echo -e '\t$(info "DClean  .... [OK]")' >> ${MF}
echo '' >> ${MF}
echo 'build:' >> ${MF}
echo -e '\tmake' >> ${MF}
echo -e '\tmake install pack' >> ${MF}
echo -e '\t$(ROOT)/RunBiscuitOS.sh' >> ${MF}
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
