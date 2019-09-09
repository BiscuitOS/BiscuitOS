#/bin/bash

set -e
# Establish GNU tools.
#
# (C) 2019.08.19 BiscuitOS <buddy.zhang@aliyun.com>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2 as
# published by the Free Software Foundation.

ROOT=$1
GNU_NAME=${2%X}
GNU_VERSION=${3%X}
GNU_SITE=${4%X}
GNU_GITHUB=${5%X}
GNU_PATCH=${6%X}
KERN_VERION=$7
GNU_SRC=${8%X}
PROJ_NAME=${9%X}
GNU_TAR=${10%X}
GNU_CTOOLS=${12%X}
GNU_SUBNAME=${13%X}
GNU_CONFIG=${14%X}
GNU_CONFIG2=${15%X}
GNU_CFLAGS=${17%X}
GNU_LDFLAGS=${16%X}

OUTPUT=${ROOT}/output/${PROJ_NAME}
PACKDIR=${OUTPUT}/package

## Package Application
if [ -d ${PACKDIR}/${GNU_NAME}-${GNU_VERSION} ]; then
        exit 0
fi

mkdir -p ${PACKDIR}/${GNU_NAME}-${GNU_VERSION}
MF=${PACKDIR}/${GNU_NAME}-${GNU_VERSION}/Makefile

echo "# ${GNU_NAME}" >> ${MF}
echo '#' >> ${MF}
echo '# (C) 2019.08.16 BiscuitOS <buddy.zhang@aliyun.com>' >> ${MF}
echo '#' >> ${MF}
echo '# This program is free software; you can redistribute it and/or modify' >> ${MF}
echo '# it under the terms of the GNU General Public License version 2 as' >> ${MF}
echo '# published by the Free Software Foundation.' >> ${MF}
echo '' >> ${MF}
echo "ROOT=${OUTPUT}" >> ${MF}
echo "CROSS_NAME=${GNU_CTOOLS}" >> ${MF}
echo 'CROSS_PATH=$(ROOT)/$(CROSS_NAME)/$(CROSS_NAME)' >> ${MF}
echo 'CROSS_TOOLS=$(CROSS_PATH)/bin/$(CROSS_NAME)-' >> ${MF}
echo 'PACK=$(ROOT)/RunBiscuitOS.sh' >> ${MF}
echo "DL=${ROOT}/dl" >> ${MF}
echo 'INSTALL_PATH=$(ROOT)/rootfs/rootfs/usr/' >> ${MF}
echo 'LD_PATH += "-L${INSTALL_PATH}/lib -L$(CROSS_PATH)/lib"' >> ${MF}
echo 'CF_PATH += "-I${INSTALL_PATH}/include -I$(CROSS_PATH)/include"' >> ${MF}
echo 'PK_PATH += $(ROOT)/rootfs/rootfs/usr/lib/pkgconfig:$(ROOT)/rootfs/rootfs/usr/share/pkgconfig' >> ${MF}
echo "CFLAGS  += ${GNU_CFLAGS}" >> ${MF}
echo "LDFLAGS += ${GNU_LDLAGS}" >> ${MF}
echo 'PATH    += :$(CROSS_PATH)/bin' >> ${MF}
echo '' >> ${MF}
echo '# Package information' >> ${MF}
echo "PACKAGE := ${GNU_NAME}-${GNU_VERSION}.${GNU_TAR}" >> ${MF}
echo "BASENAM := ${GNU_NAME}-${GNU_VERSION}" >> ${MF}
echo 'TARCMD  := tar -xvf' >> ${MF}
echo "URL     := ${GNU_SITE}" >> ${MF}
echo 'CONFIG  := --prefix=$(INSTALL_PATH) --host=$(CROSS_NAME)' >> ${MF}
echo "CONFIG  += ${GNU_CONFIG} ${GNU_CONFIG2}" >> ${MF}
echo 'CONFIG  += LDFLAGS=$(LD_PATH) CFLAGS=$(CF_PATH)' >> ${MF}
echo 'CONFIG  += PKG_CONFIG_PATH=$(PK_PATH) --build=i686-pc-linux-gnu' >> ${MF}
echo '' >> ${MF}
echo 'all:' >> ${MF}
echo -e '\tcd $(BASENAM) ; \' >> ${MF}
echo -e '\tmake' >> ${MF}
echo -e '\t$(info "Build .... [OK]")' >> ${MF}
echo '' >> ${MF}
echo 'download:' >> ${MF}
echo -e '\t@if [ ! -f $(DL)/$(PACKAGE) ]; \' >> ${MF}
echo -e '\tthen \' >> ${MF}
echo -e '\t\twget $(URL)/$(PACKAGE) -P $(DL); \' >> ${MF}
echo -e '\t\tcp -rfa $(DL)/$(PACKAGE) ./ ; \' >> ${MF}
echo -e '\telse \' >> ${MF}
echo -e '\t\tcp -rfa $(DL)/$(PACKAGE) ./ ; \' >> ${MF}
echo -e '\tfi' >> ${MF}
echo '' >> ${MF}
echo 'tar:' >> ${MF}
echo -e '\t$(TARCMD) $(PACKAGE)' >> ${MF}
echo -e '\t$(info "Untar .... [OK]")' >> ${MF}
echo '' >> ${MF}
echo 'configure:' >> ${MF}
echo -e '\tcd $(BASENAM) ; \' >> ${MF}
echo -e '\t./configure $(CONFIG)' >> ${MF}
echo '' >> ${MF}
echo 'install:' >> ${MF}
echo -e '\tcd $(BASENAM) ; \' >> ${MF}
echo -e '\tmake install' >> ${MF}
echo -e '\t$(info "Install .... [OK]")' >> ${MF}
echo '' >> ${MF}
echo 'pack:' >> ${MF}
echo -e '\t@$(PACK) pack' >> ${MF}
echo -e '\t$(info "Pack    .... [OK]")' >> ${MF}
echo '' >> ${MF}
echo 'clean:' >> ${MF}
echo -e '\tcd $(BASENAM) ; \' >> ${MF}
echo -e '\tmake clean' >> ${MF}
echo -e '\t$(info "Clean   .... [OK]")' >> ${MF}
echo '' >> ${MF}
echo 'distclean:' >> ${MF}
echo -e '\t@rm -rf $(BASENAM)' >> ${MF}
echo -e '\t$(info "DClean  .... [OK]")' >> ${MF}
echo '' >> ${MF}
echo '' >> ${MF}
echo '# Reserved by BiscuitOS :)' >> ${MF}


MF=${PACKDIR}/${GNU_NAME}-${GNU_VERSION}/README.md

echo "${GNU_NAME} Usermanual" >> ${MF}
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
echo '2. Uncompress' >> ${MF}
echo '' >> ${MF}
echo '```' >> ${MF}
echo 'make tar' >> ${MF}
echo '```' >> ${MF}
echo '' >> ${MF}
echo '3. Configure' >> ${MF}
echo '' >> ${MF}
echo '```' >> ${MF}
echo 'make configure' >> ${MF}
echo '```' >> ${MF}
echo '' >> ${MF}
echo '4. Compile' >> ${MF}
echo '' >> ${MF}
echo '```' >> ${MF}
echo 'make' >> ${MF}
echo '```' >> ${MF}
echo '' >> ${MF}
echo '5. Install' >> ${MF}
echo '' >> ${MF}
echo '```' >> ${MF}
echo 'make install' >> ${MF}
echo '```' >> ${MF}
echo '' >> ${MF}
echo '6. Pack image' >> ${MF}
echo '' >> ${MF}
echo '```' >> ${MF}
echo 'make pack' >> ${MF}
echo '```' >> ${MF}
echo '' >> ${MF}
echo '7. Running' >> ${MF}
echo '' >> ${MF}
echo '```' >> ${MF}
echo "cd ${OUTPUT}" >> ${MF}
echo "./RunBiscuitOS.sh start" >> ${MF}
echo '```' >> ${MF}
echo '' >> ${MF}
echo '## Link' >> ${MF}
echo '' >> ${MF}
echo "[GNU-hello](${GNU_SITE})" >> ${MF}
echo '' >> ${MF}
echo '' >> ${MF}
echo '# Reserved by BiscuitOS :)' >> ${MF}
