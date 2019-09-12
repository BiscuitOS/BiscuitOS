################################################
#
# xfce
#
################################################
XFCE_NAME		:= xfce
XFCE_VERSION		:= $(CONFIG_XFCE_VERSION)
XFCE_SITE		:= $(CONFIG_XFCE_URL)
XFCE_GITHUB		:= 
XFCE_SUBNAME		:= 
XFCE_DIR		:= $(srctree)/package/xfce
XFCE_PATCH		:= $(srctree)/package/xfce/patch
XFCE_DEMO		:= $(srctree)/package/xfce/demo.c
XFCE_OUT		:= 
XFCE_SCRIPTS		:= $(srctree)/scripts/package/GNU-Xfce.sh
XFCE_TAR		:= $(CONFIG_XFCE_TAR)
XFCE_PACKAGE		:= 
XFCE_CONFIG		:=
SUB_TARGET		+= $(XFCE_DIR)/build

XFCE_sh = $(CONFIG_SHELL) $(XFCE_SCRIPTS) \
               $1 $(XFCE_NAME)X $(XFCE_VERSION)X \
               $(XFCE_SITE)X $(XFCE_GITHUB)X \
               $(XFCE_PATCH)X 5.0 \
	       $(CONFIG_XFCE_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(XFCE_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(XFCE_SUBNAME)X \
               $(XFCE_CONFIG)X $(CONFIG_XFCE_CONFIG)X \
	       $(CONFIG_XFCE_LDFLAGS) $(CONFIG_XFCE_CFLAGS)

$(XFCE_DIR)/build: FORCE
	$(Q)$(call XFCE_sh,$(srctree))
