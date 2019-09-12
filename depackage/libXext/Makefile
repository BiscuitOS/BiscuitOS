################################################
#
# libXext
#
################################################
LIB_LIBXEXT_NAME	:= libXext
LIB_LIBXEXT_VERSION	:= $(CONFIG_LIB_LIBXEXT_VERSION)
LIB_LIBXEXT_SITE	:= $(CONFIG_LIB_LIBXEXT_URL)
LIB_LIBXEXT_GITHUB	:= 
LIB_LIBXEXT_SUBNAME	:= 
LIB_LIBXEXT_DIR		:= $(srctree)/package/libXext
LIB_LIBXEXT_PATCH	:= $(srctree)/package/libXext/patch
LIB_LIBXEXT_DEMO	:= $(srctree)/package/libXext/demo.c
LIB_LIBXEXT_OUT		:= 
LIB_LIBXEXT_SCRIPTS	:= $(srctree)/scripts/package/GNU-package.sh
LIB_LIBXEXT_TAR		:= $(CONFIG_LIB_LIBXEXT_TAR)
LIB_LIBXEXT_PACKAGE	:= 
LIB_LIBXEXT_CONFIG	:=
SUB_TARGET		+= $(LIB_LIBXEXT_DIR)/build

LIB_LIBXEXT_sh = $(CONFIG_SHELL) $(LIB_LIBXEXT_SCRIPTS) \
               $1 $(LIB_LIBXEXT_NAME)X $(LIB_LIBXEXT_VERSION)X \
               $(LIB_LIBXEXT_SITE)X $(LIB_LIBXEXT_GITHUB)X \
               $(LIB_LIBXEXT_PATCH)X 5.0 \
	       $(CONFIG_LIB_LIBXEXT_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(LIB_LIBXEXT_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(LIB_LIBXEXT_SUBNAME)X \
               $(LIB_LIBXEXT_CONFIG)X $(CONFIG_LIB_LIBXEXT_CONFIG)X \
	       $(CONFIG_LIB_LIBXEXT_LDFLAGS) $(CONFIG_LIB_LIBXEXT_CFLAGS)

$(LIB_LIBXEXT_DIR)/build: FORCE
	$(Q)$(call LIB_LIBXEXT_sh,$(srctree))
