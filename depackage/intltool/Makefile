################################################
#
# intltool
#
################################################
INTLTOOL_NAME		:= intltool
INTLTOOL_VERSION	:= $(CONFIG_INTLTOOL_VERSION)
INTLTOOL_SITE		:= $(CONFIG_INTLTOOL_URL)
INTLTOOL_GITHUB		:= 
INTLTOOL_SUBNAME	:= 
INTLTOOL_DIR		:= $(srctree)/package/intltool
INTLTOOL_PATCH		:= $(srctree)/package/intltool/patch
INTLTOOL_DEMO		:= $(srctree)/package/intltool/demo.c
INTLTOOL_OUT		:= 
INTLTOOL_SCRIPTS	:= $(srctree)/scripts/package/GNU-package.sh
INTLTOOL_TAR		:= $(CONFIG_INTLTOOL_TAR)
INTLTOOL_PACKAGE	:= 
INTLTOOL_CONFIG		:=
SUB_TARGET		+= $(INTLTOOL_DIR)/build

INTLTOOL_sh = $(CONFIG_SHELL) $(INTLTOOL_SCRIPTS) \
               $1 $(INTLTOOL_NAME)X $(INTLTOOL_VERSION)X \
               $(INTLTOOL_SITE)X $(INTLTOOL_GITHUB)X \
               $(INTLTOOL_PATCH)X 5.0 \
	       $(CONFIG_INTLTOOL_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(INTLTOOL_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(INTLTOOL_SUBNAME)X \
               $(INTLTOOL_CONFIG)X $(CONFIG_INTLTOOL_CONFIG)X \
	       $(CONFIG_INTLTOOL_LDFLAGS) $(CONFIG_INTLTOOL_CFLAGS)

$(INTLTOOL_DIR)/build: FORCE
	$(Q)$(call INTLTOOL_sh,$(srctree))
