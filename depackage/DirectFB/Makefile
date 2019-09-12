################################################
#
# DirectFB
#
################################################
DIRECTFB_NAME		:= DirectFB
DIRECTFB_VERSION	:= $(CONFIG_DIRECTFB_VERSION)
DIRECTFB_SITE		:= $(CONFIG_DIRECTFB_URL)
DIRECTFB_GITHUB		:= 
DIRECTFB_SUBNAME	:= 
DIRECTFB_DIR		:= $(srctree)/package/DirectFB
DIRECTFB_PATCH		:= $(srctree)/package/DirectFB/patch
DIRECTFB_DEMO		:= $(srctree)/package/DirectFB/demo.c
DIRECTFB_OUT		:= 
DIRECTFB_SCRIPTS	:= $(srctree)/scripts/package/GNU-package.sh
DIRECTFB_TAR		:= $(CONFIG_DIRECTFB_TAR)
DIRECTFB_PACKAGE	:= 
DIRECTFB_CONFIG		:=
SUB_TARGET		+= $(DIRECTFB_DIR)/build

DIRECTFB_sh = $(CONFIG_SHELL) $(DIRECTFB_SCRIPTS) \
               $1 $(DIRECTFB_NAME)X $(DIRECTFB_VERSION)X \
               $(DIRECTFB_SITE)X $(DIRECTFB_GITHUB)X \
               $(DIRECTFB_PATCH)X 5.0 \
	       $(CONFIG_DIRECTFB_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(DIRECTFB_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(DIRECTFB_SUBNAME)X \
               $(DIRECTFB_CONFIG)X $(CONFIG_DIRECTFB_CONFIG)X \
	       $(CONFIG_DIRECTFB_LDFLAGS) $(CONFIG_DIRECTFB_CFLAGS)

$(DIRECTFB_DIR)/build: FORCE
	$(Q)$(call DIRECTFB_sh,$(srctree))
