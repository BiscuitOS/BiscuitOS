################################################
#
# libtiff
#
################################################
LIB_LIBTIFF_NAME	:= tiff
LIB_LIBTIFF_VERSION	:= $(CONFIG_LIB_LIBTIFF_VERSION)
LIB_LIBTIFF_SITE	:= $(CONFIG_LIB_LIBTIFF_URL)
LIB_LIBTIFF_GITHUB	:= 
LIB_LIBTIFF_SUBNAME	:= 
LIB_LIBTIFF_DIR		:= $(srctree)/package/libtiff
LIB_LIBTIFF_PATCH	:= $(srctree)/package/libtiff/patch
LIB_LIBTIFF_DEMO	:= $(srctree)/package/libtiff/demo.c
LIB_LIBTIFF_OUT		:= 
LIB_LIBTIFF_SCRIPTS	:= $(srctree)/scripts/package/GNU-package.sh
LIB_LIBTIFF_TAR		:= $(CONFIG_LIB_LIBTIFF_TAR)
LIB_LIBTIFF_PACKAGE	:= 
LIB_LIBTIFF_CONFIG	:=
SUB_TARGET		+= $(LIB_LIBTIFF_DIR)/build

LIB_LIBTIFF_sh = $(CONFIG_SHELL) $(LIB_LIBTIFF_SCRIPTS) \
               $1 $(LIB_LIBTIFF_NAME)X $(LIB_LIBTIFF_VERSION)X \
               $(LIB_LIBTIFF_SITE)X $(LIB_LIBTIFF_GITHUB)X \
               $(LIB_LIBTIFF_PATCH)X 5.0 \
	       $(CONFIG_LIB_LIBTIFF_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(LIB_LIBTIFF_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(LIB_LIBTIFF_SUBNAME)X \
               $(LIB_LIBTIFF_CONFIG)X $(CONFIG_LIB_LIBTIFF_CONFIG)X \
	       $(CONFIG_LIB_LIBTIFF_LDFLAGS) $(CONFIG_LIB_LIBTIFF_CFLAGS)

$(LIB_LIBTIFF_DIR)/build: FORCE
	$(Q)$(call LIB_LIBTIFF_sh,$(srctree))
