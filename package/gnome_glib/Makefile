################################################
#
# glib
#
################################################
LIB_GLIB_NAME		:= glib
LIB_GLIB_VERSION	:= $(CONFIG_LIB_GLIB_VERSION)
LIB_GLIB_SITE		:= $(CONFIG_LIB_GLIB_URL)
LIB_GLIB_GITHUB		:= 
LIB_GLIB_SUBNAME	:= 
LIB_GLIB_DIR		:= $(srctree)/package/glib
LIB_GLIB_PATCH		:= $(srctree)/package/glib/patch
LIB_GLIB_DEMO		:= $(srctree)/package/glib/demo.c
LIB_GLIB_OUT		:= 
LIB_GLIB_SCRIPTS	:= $(srctree)/scripts/package/GNU-package.sh
LIB_GLIB_TAR		:= $(CONFIG_LIB_GLIB_TAR)
LIB_GLIB_PACKAGE	:= 
LIB_GLIB_CONFIG		:=
SUB_TARGET		+= $(LIB_GLIB_DIR)/build

LIB_GLIB_sh = $(CONFIG_SHELL) $(LIB_GLIB_SCRIPTS) \
               $1 $(LIB_GLIB_NAME)X $(LIB_GLIB_VERSION)X \
               $(LIB_GLIB_SITE)X $(LIB_GLIB_GITHUB)X \
               $(LIB_GLIB_PATCH)X 5.0 \
	       $(CONFIG_LIB_GLIB_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(LIB_GLIB_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(LIB_GLIB_SUBNAME)X \
               $(LIB_GLIB_CONFIG)X $(CONFIG_LIB_GLIB_CONFIG)X \
	       $(CONFIG_LIB_GLIB_LDFLAGS) $(CONFIG_LIB_GLIB_CFLAGS)

$(LIB_GLIB_DIR)/build: FORCE
	$(Q)$(call LIB_GLIB_sh,$(srctree))
