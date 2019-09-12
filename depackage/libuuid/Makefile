###############################################
#
# GNU libuuid
#
################################################
LIBUUID_NAME		:= libuuid
LIBUUID_VERSION		:= $(CONFIG_LIBUUID_VERSION)
LIBUUID_SITE		:= $(CONFIG_LIBUUID_URL)
LIBUUID_GITHUB		:= 
LIBUUID_SUBNAME		:= 
LIBUUID_DIR		:= $(srctree)/package/libuuid
LIBUUID_PATCH		:= $(srctree)/package/libuuid/patch
LIBUUID_DEMO		:= $(srctree)/package/libuuid/demo.c
LIBUUID_OUT		:= 
LIBUUID_SCRIPTS		:= $(srctree)/scripts/package/GNU-package.sh
LIBUUID_TAR		:= $(CONFIG_LIBUUID_TAR)
LIBUUID_PACKAGE		:= 
LIBUUID_CONFIG		:=
SUB_TARGET		+= $(LIBUUID_DIR)/build

LIBUUID_sh = $(CONFIG_SHELL) $(LIBUUID_SCRIPTS) \
               $1 $(LIBUUID_NAME)X $(LIBUUID_VERSION)X \
               $(LIBUUID_SITE)X $(LIBUUID_GITHUB)X \
               $(LIBUUID_PATCH)X 5.0 \
	       $(CONFIG_LIBUUID_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(LIBUUID_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(LIBUUID_SUBNAME)X \
               $(LIBUUID_CONFIG)X $(CONFIG_LIBUUID_CONFIG)X \
	       $(CONFIG_LIBUUID_LDFLAGS) $(CONFIG_LIBUUID_CFLAGS)

$(LIBUUID_DIR)/build: FORCE
	$(Q)$(call LIBUUID_sh,$(srctree))
