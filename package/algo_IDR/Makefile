################################################
#
# Algorithm IDR
#
################################################
ALGO_IDR_NAME		:= IDR
ALGO_IDR_VERSION	:= $(CONFIG_ALGO_IDR_VERSION)
ALGO_IDR_SITE		:= $(CONFIG_ALGO_IDR_URL)
ALGO_IDR_GITHUB		:= 
ALGO_IDR_SUBNAME	:= 
ALGO_IDR_DIR		:= $(srctree)/package/algo_IDR
ALGO_IDR_PATCH		:= $(srctree)/package/algo_IDR/patch
ALGO_IDR_DEMO		:= $(srctree)/package/algo_IDR/demo.c
ALGO_IDR_OUT		:= 
ALGO_IDR_SCRIPTS	:= $(srctree)/scripts/package/GNU-app.sh
ALGO_IDR_TAR		:= $(CONFIG_ALGO_IDR_TAR)
ALGO_IDR_PACKAGE	:= 
ALGO_IDR_CONFIG		:=
SUB_TARGET		+= $(ALGO_IDR_DIR)/build

ALGO_IDR_sh = $(CONFIG_SHELL) $(ALGO_IDR_SCRIPTS) \
               $1 $(ALGO_IDR_NAME)X $(ALGO_IDR_VERSION)X \
               $(ALGO_IDR_SITE)X $(ALGO_IDR_GITHUB)X \
               $(ALGO_IDR_PATCH)X 5.0 \
	       $(CONFIG_ALGO_IDR_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(ALGO_IDR_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(ALGO_IDR_SUBNAME)X \
               $(ALGO_IDR_CONFIG)X $(CONFIG_ALGO_IDR_CONFIG)X \
	       $(CONFIG_ALGO_IDR_LDFLAGS)X $(CONFIG_ALGO_IDR_CFLAGS)X \
	       $(CONFIG_ALGO_IDR_SRC)X

$(ALGO_IDR_DIR)/build: FORCE
	$(Q)$(call ALGO_IDR_sh,$(srctree))
