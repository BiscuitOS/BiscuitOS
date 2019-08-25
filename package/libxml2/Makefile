################################################
#
# libxcb
#
################################################
LIB_LIBXCB_NAME		:= libxcb
LIB_LIBXCB_VERSION	:= $(CONFIG_LIB_LIBXCB_VERSION)
LIB_LIBXCB_SITE		:= $(CONFIG_LIB_LIBXCB_URL)
LIB_LIBXCB_GITHUB	:= 
LIB_LIBXCB_SUBNAME	:= 
LIB_LIBXCB_DIR		:= $(srctree)/package/libxcb
LIB_LIBXCB_PATCH	:= $(srctree)/package/libxcb/patch
LIB_LIBXCB_DEMO		:= $(srctree)/package/libxcb/demo.c
LIB_LIBXCB_OUT		:= 
LIB_LIBXCB_SCRIPTS	:= $(srctree)/scripts/package/GNU-package.sh
LIB_LIBXCB_TAR		:= $(CONFIG_LIB_LIBXCB_TAR)
LIB_LIBXCB_PACKAGE	:= 
LIB_LIBXCB_CONFIG	:=
SUB_TARGET		+= $(LIB_LIBXCB_DIR)/build

LIB_LIBXCB_sh = $(CONFIG_SHELL) $(LIB_LIBXCB_SCRIPTS) \
               $1 $(LIB_LIBXCB_NAME)X $(LIB_LIBXCB_VERSION)X \
               $(LIB_LIBXCB_SITE)X $(LIB_LIBXCB_GITHUB)X \
               $(LIB_LIBXCB_PATCH)X 5.0 \
	       $(CONFIG_LIB_LIBXCB_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(LIB_LIBXCB_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(LIB_LIBXCB_SUBNAME)X \
               $(LIB_LIBXCB_CONFIG)X $(CONFIG_LIB_LIBXCB_CONFIG)X \
	       $(CONFIG_LIB_LIBXCB_LDFLAGS) $(CONFIG_LIB_LIBXCB_CFLAGS)

$(LIB_LIBXCB_DIR)/build: FORCE
	$(Q)$(call LIB_LIBXCB_sh,$(srctree))
