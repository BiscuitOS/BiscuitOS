################################################
#
# libffi
#
################################################
LIB_LIBFFI_NAME		:= libffi
LIB_LIBFFI_VERSION	:= $(CONFIG_LIB_LIBFFI_VERSION)
LIB_LIBFFI_SITE		:= $(CONFIG_LIB_LIBFFI_URL)
LIB_LIBFFI_GITHUB	:= 
LIB_LIBFFI_SUBNAME	:= 
LIB_LIBFFI_DIR		:= $(srctree)/package/libffi
LIB_LIBFFI_PATCH	:= $(srctree)/package/libffi/patch
LIB_LIBFFI_DEMO		:= $(srctree)/package/libffi/demo.c
LIB_LIBFFI_OUT		:= 
LIB_LIBFFI_SCRIPTS	:= $(srctree)/scripts/package/GNU-package.sh
LIB_LIBFFI_TAR		:= $(CONFIG_LIB_LIBFFI_TAR)
LIB_LIBFFI_PACKAGE	:= 
LIB_LIBFFI_CONFIG	:=
SUB_TARGET		+= $(LIB_LIBFFI_DIR)/build

LIB_LIBFFI_sh = $(CONFIG_SHELL) $(LIB_LIBFFI_SCRIPTS) \
               $1 $(LIB_LIBFFI_NAME)X $(LIB_LIBFFI_VERSION)X \
               $(LIB_LIBFFI_SITE)X $(LIB_LIBFFI_GITHUB)X \
               $(LIB_LIBFFI_PATCH)X 5.0 \
	       $(CONFIG_LIB_LIBFFI_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(LIB_LIBFFI_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(LIB_LIBFFI_SUBNAME)X \
               $(LIB_LIBFFI_CONFIG)X $(CONFIG_LIB_LIBFFI_CONFIG)X \
	       $(CONFIG_LIB_LIBFFI_LDFLAGS) $(CONFIG_LIB_LIBFFI_CFLAGS)

$(LIB_LIBFFI_DIR)/build: FORCE
	$(Q)$(call LIB_LIBFFI_sh,$(srctree))
