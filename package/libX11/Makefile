################################################
#
# GNU libX11
#
################################################
LIB_LIBX11_NAME		:= libX11
LIB_LIBX11_VERSION	:= $(CONFIG_LIB_LIBX11_VERSION)
LIB_LIBX11_SITE		:= $(CONFIG_LIB_LIBX11_URL)
LIB_LIBX11_GITHUB	:= 
LIB_LIBX11_SUBNAME	:= 
LIB_LIBX11_DIR		:= $(srctree)/package/libX11
LIB_LIBX11_PATCH	:= $(srctree)/package/libX11/patch
LIB_LIBX11_DEMO		:= $(srctree)/package/libX11/demo.c
LIB_LIBX11_OUT		:= 
LIB_LIBX11_SCRIPTS	:= $(srctree)/scripts/package/GNU-package.sh
LIB_LIBX11_TAR		:= $(CONFIG_LIB_LIBX11_TAR)
LIB_LIBX11_PACKAGE	:= 
LIB_LIBX11_CONFIG	:=
SUB_TARGET		+= $(LIB_LIBX11_DIR)/build

LIB_LIBX11_sh = $(CONFIG_SHELL) $(LIB_LIBX11_SCRIPTS) \
               $1 $(LIB_LIBX11_NAME)X $(LIB_LIBX11_VERSION)X \
               $(LIB_LIBX11_SITE)X $(LIB_LIBX11_GITHUB)X \
               $(LIB_LIBX11_PATCH)X 5.0 \
	       $(CONFIG_LIB_LIBX11_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(LIB_LIBX11_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(LIB_LIBX11_SUBNAME)X \
               $(LIB_LIBX11_CONFIG)X $(CONFIG_LIB_LIBX11_CONFIG)X \
	       $(CONFIG_LIB_LIBX11_LDFLAGS) $(CONFIG_LIB_LIBX11_CFLAGS)

$(LIB_LIBX11_DIR)/build: FORCE
	$(Q)$(call LIB_LIBX11_sh,$(srctree))
