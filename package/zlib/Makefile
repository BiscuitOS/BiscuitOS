################################################
#
# zlib
#
################################################
ZLIB_NAME		:= zlib
ZLIB_VERSION		:= $(CONFIG_ZLIB_VERSION)
ZLIB_SITE		:= $(CONFIG_ZLIB_URL)
ZLIB_GITHUB		:= 
ZLIB_SUBNAME		:= 
ZLIB_DIR		:= $(srctree)/package/zlib
ZLIB_PATCH		:= $(srctree)/package/zlib/patch
ZLIB_DEMO		:= $(srctree)/package/zlib/demo.c
ZLIB_OUT		:= 
ZLIB_SCRIPTS		:= $(srctree)/scripts/package/GNU-zlib.sh
ZLIB_TAR		:= $(CONFIG_ZLIB_TAR)
ZLIB_PACKAGE		:= 
ZLIB_CONFIG		:=
SUB_TARGET		+= $(ZLIB_DIR)/build

ZLIB_sh = $(CONFIG_SHELL) $(ZLIB_SCRIPTS) \
               $1 $(ZLIB_NAME)X $(ZLIB_VERSION)X \
               $(ZLIB_SITE)X $(ZLIB_GITHUB)X \
               $(ZLIB_PATCH)X 5.0 \
	       $(CONFIG_ZLIB_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(ZLIB_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(ZLIB_SUBNAME)X \
               $(ZLIB_CONFIG)X $(CONFIG_ZLIB_CONFIG)X \
	       $(CONFIG_ZLIB_LDFLAGS) $(CONFIG_ZLIB_CFLAGS)

$(ZLIB_DIR)/build: FORCE
	$(Q)$(call ZLIB_sh,$(srctree))
