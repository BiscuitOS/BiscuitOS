#/bin/bash

set -e
# Application.
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
GNU_SRC_LIST=${18%X}
GNU_CSRC_LIST=${19%X}

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
echo 'IS_PATH =$(ROOT)/rootfs/rootfs/usr' >> ${MF}
echo 'INSTALL_PATH=$(IS_PATH)/bin' >> ${MF}
echo 'LD_PATH += -L$(IS_PATH)/lib -L$(CROSS_PATH)/lib' >> ${MF}
echo 'CF_PATH += -I$(IS_PATH)/include -I$(CROSS_PATH)/include' >> ${MF}
echo "CFLAGS  += ${GNU_CFLAGS}" >> ${MF}
echo "LDFLAGS += ${GNU_LDFLAGS}" >> ${MF}
echo 'PATH    += :$(CROSS_PATH)/bin' >> ${MF}
echo "DL_FILE := ${GNU_SRC_LIST}" >> ${MF}
echo "CP_FILE := ${GNU_CSRC_LIST}" >> ${MF}
echo "SITE    := ${GNU_SITE}" >> ${MF}
echo "FULLNAM := ${GNU_NAME}-${GNU_VERSION}" >> ${MF}
echo '' >> ${MF}
echo 'CC=$(CROSS_TOOLS)gcc' >> ${MF}
echo 'AS=$(CROSS_TOOLS)as' >> ${MF}
echo 'nm=$(CROSS_TOOLS)nm' >> ${MF}
echo '' >> ${MF}
echo '## Target' >> ${MF}
echo "TARGET := ${GNU_NAME}" >> ${MF}
echo '' >> ${MF}
echo '## SRC' >> ${MF}
echo 'ifdef CP_FILE' >> ${MF}
echo '    SRC=$(patsubst %.c,$(FULLNAM)/%.c, $(CP_FILE))' >> ${MF}
echo 'else' >> ${MF}
echo '    SRC= $(wildcard $(FULLNAM)/*.c)' >> ${MF}
echo 'endif' >> ${MF}
echo '' >> ${MF}
echo '## LCFLAGS' >> ${MF}
echo 'LCFLAGS := -I$(FULLNAM)/ $(CFLAGS)' >> ${MF}
echo 'LCFLAGS += $(LDFLAGS) $(LD_PATH) $(CF_PATH)' >> ${MF}
echo '' >> ${MF}
echo '' >> ${MF}
echo 'all:' >> ${MF}
echo -e '\t@$(CC) $(LCFLAGS) -o $(FULLNAM)/$(TARGET) $(SRC)' >> ${MF}
echo -e '\t$(info "Build .... [OK]")' >> ${MF}
echo '' >> ${MF}
echo 'download:' >> ${MF}
echo -e '\t@mkdir -p $(FULLNAM)' >> ${MF}
echo -e '\t@for i in $(DL_FILE) ; \' >> ${MF}
echo -e '\tdo \' >> ${MF}
echo -e '\t	wget $(SITE)/$${i} -P $(FULLNAM)/ ; \' >> ${MF}
echo -e '\tdone' >> ${MF}
echo -e '\t' >> ${MF}
echo '' >> ${MF}
echo 'install:' >> ${MF}
echo -e '\t@cp -rfa $(FULLNAM)/$(TARGET) $(INSTALL_PATH)' >> ${MF}
echo -e '\t$(info "Install .... [OK]")' >> ${MF}
echo '' >> ${MF}
echo 'pack:' >> ${MF}
echo -e '\t@$(PACK) pack' >> ${MF}
echo -e '\t$(info "Pack    .... [OK]")' >> ${MF}
echo '' >> ${MF}
echo 'clean:' >> ${MF}
echo -e '\t@rm -rf $(FULLNAM)/$(TARGET) $(FULLNAM)/*.o' >> ${MF}
echo -e '\t$(info "Clean   .... [OK]")' >> ${MF}
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
echo '1. download' >> ${MF}
echo '' >> ${MF}
echo '```' >> ${MF}
echo 'make download' >> ${MF}
echo '```' >> ${MF}
echo '' >> ${MF}
echo '2. Compile' >> ${MF}
echo '' >> ${MF}
echo '```' >> ${MF}
echo 'make' >> ${MF}
echo '```' >> ${MF}
echo '' >> ${MF}
echo '3. Install' >> ${MF}
echo '' >> ${MF}
echo '```' >> ${MF}
echo 'make install' >> ${MF}
echo '```' >> ${MF}
echo '' >> ${MF}
echo '4. Pack image' >> ${MF}
echo '' >> ${MF}
echo '```' >> ${MF}
echo 'make pack' >> ${MF}
echo '```' >> ${MF}
echo '' >> ${MF}
echo '5. Running' >> ${MF}
echo '' >> ${MF}
echo '```' >> ${MF}
echo "cd ${OUTPUT}" >> ${MF}
echo "./RunBiscuitOS.sh start" >> ${MF}
echo '```' >> ${MF}
echo '' >> ${MF}
echo '7. Clean' >> ${MF}
echo '' >> ${MF}
echo '```' >> ${MF}
echo 'make clean' >> ${MF}
echo '```' >> ${MF}
echo '' >> ${MF}
echo '' >> ${MF}
echo '# Reserved by BiscuitOS :)' >> ${MF}
