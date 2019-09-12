################################################
#
# xorg-server
#
################################################
XORG_NAME		:= xorg-server
XORG_VERSION		:= $(CONFIG_XORG_VERSION)
XORG_SITE		:= $(CONFIG_XORG_URL)
XORG_GITHUB		:= 
XORG_SUBNAME		:= 
XORG_DIR		:= $(srctree)/package/xorg-server
XORG_PATCH		:= $(srctree)/package/xorg-server/patch
XORG_DEMO		:= $(srctree)/package/xorg-server/demo.c
XORG_OUT		:= 
XORG_SCRIPTS		:= $(srctree)/scripts/package/GNU-package.sh
XORG_TAR		:= $(CONFIG_XORG_TAR)
XORG_PACKAGE		:= 
XORG_CONFIG		:=
SUB_TARGET		+= $(XORG_DIR)/build

XORG_sh = $(CONFIG_SHELL) $(XORG_SCRIPTS) \
               $1 $(XORG_NAME)X $(XORG_VERSION)X \
               $(XORG_SITE)X $(XORG_GITHUB)X \
               $(XORG_PATCH)X 5.0 \
	       $(CONFIG_XORG_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(XORG_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(XORG_SUBNAME)X \
               $(XORG_CONFIG)X $(CONFIG_XORG_CONFIG)X \
	       $(CONFIG_XORG_LDFLAGS) $(CONFIG_XORG_CFLAGS)

$(XORG_DIR)/build: FORCE
	$(Q)$(call XORG_sh,$(srctree))
