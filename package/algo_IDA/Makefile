################################################
#
# Algorithm IDA
#
################################################
ALGO_IDA_NAME		:= IDA
ALGO_IDA_VERSION	:= $(CONFIG_ALGO_IDA_VERSION)
ALGO_IDA_SITE		:= $(CONFIG_ALGO_IDA_URL)
ALGO_IDA_GITHUB		:= 
ALGO_IDA_SUBNAME	:= 
ALGO_IDA_DIR		:= $(srctree)/package/algo_IDA
ALGO_IDA_PATCH		:= $(srctree)/package/algo_IDA/patch
ALGO_IDA_DEMO		:= $(srctree)/package/algo_IDA/demo.c
ALGO_IDA_OUT		:= 
ALGO_IDA_SCRIPTS	:= $(srctree)/scripts/package/GNU-app.sh
ALGO_IDA_TAR		:= $(CONFIG_ALGO_IDA_TAR)
ALGO_IDA_PACKAGE	:= 
ALGO_IDA_CONFIG		:=
SUB_TARGET		+= $(ALGO_IDA_DIR)/build

ALGO_IDA_sh = $(CONFIG_SHELL) $(ALGO_IDA_SCRIPTS) \
               $1 $(ALGO_IDA_NAME)X $(ALGO_IDA_VERSION)X \
               $(ALGO_IDA_SITE)X $(ALGO_IDA_GITHUB)X \
               $(ALGO_IDA_PATCH)X 5.0 \
	       $(CONFIG_ALGO_IDA_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(ALGO_IDA_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(ALGO_IDA_SUBNAME)X \
               $(ALGO_IDA_CONFIG)X $(CONFIG_ALGO_IDA_CONFIG)X \
	       $(CONFIG_ALGO_IDA_LDFLAGS)X $(CONFIG_ALGO_IDA_CFLAGS)X \
	       $(CONFIG_ALGO_IDA_SRC)X

$(ALGO_IDA_DIR)/build: FORCE
	$(Q)$(call ALGO_IDA_sh,$(srctree))
