################################################
#
# GNU libtool
#
################################################
LIBTOOL_NAME		:= libtool
LIBTOOL_VERSION		:= $(CONFIG_LIBTOOL_VERSION)
LIBTOOL_SITE		:= $(CONFIG_LIBTOOL_URL)
LIBTOOL_GITHUB		:= 
LIBTOOL_SUBNAME		:= 
LIBTOOL_DIR		:= $(srctree)/package/libtool
LIBTOOL_PATCH		:= $(srctree)/package/libtool/patch
LIBTOOL_DEMO		:= $(srctree)/package/libtool/demo.c
LIBTOOL_OUT		:= 
LIBTOOL_SCRIPTS		:= $(srctree)/scripts/package/GNU-package.sh
LIBTOOL_TAR		:= $(CONFIG_LIBTOOL_TAR)
LIBTOOL_PACKAGE		:= 
LIBTOOL_CONFIG		:=
SUB_TARGET		+= $(LIBTOOL_DIR)/build

LIBTOOL_sh = $(CONFIG_SHELL) $(LIBTOOL_SCRIPTS) \
               $1 $(LIBTOOL_NAME)X $(LIBTOOL_VERSION)X \
               $(LIBTOOL_SITE)X $(LIBTOOL_GITHUB)X \
               $(LIBTOOL_PATCH)X 5.0 \
	       $(CONFIG_LIBTOOL_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(LIBTOOL_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(LIBTOOL_SUBNAME)X \
               $(LIBTOOL_CONFIG)X $(CONFIG_LIBTOOL_CONFIG)X \
	       $(CONFIG_LIBTOOL_LDFLAGS) $(CONFIG_LIBTOOL_CFLAGS)

$(LIBTOOL_DIR)/build: FORCE
	$(Q)$(call LIBTOOL_sh,$(srctree))
