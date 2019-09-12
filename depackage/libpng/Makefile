################################################
#
# libpng
#
################################################
LIB_LIBPNG_NAME		:= libpng
LIB_LIBPNG_VERSION	:= $(CONFIG_LIB_LIBPNG_VERSION)
LIB_LIBPNG_SITE		:= $(CONFIG_LIB_LIBPNG_URL)
LIB_LIBPNG_GITHUB	:= 
LIB_LIBPNG_SUBNAME	:= 
LIB_LIBPNG_DIR		:= $(srctree)/package/libpng
LIB_LIBPNG_PATCH	:= $(srctree)/package/libpng/patch
LIB_LIBPNG_DEMO		:= $(srctree)/package/libpng/demo.c
LIB_LIBPNG_OUT		:= 
LIB_LIBPNG_SCRIPTS	:= $(srctree)/scripts/package/GNU-libpng.sh
LIB_LIBPNG_TAR		:= $(CONFIG_LIB_LIBPNG_TAR)
LIB_LIBPNG_PACKAGE	:= 
LIB_LIBPNG_CONFIG	:=
SUB_TARGET		+= $(LIB_LIBPNG_DIR)/build

LIB_LIBPNG_sh = $(CONFIG_SHELL) $(LIB_LIBPNG_SCRIPTS) \
               $1 $(LIB_LIBPNG_NAME)X $(LIB_LIBPNG_VERSION)X \
               $(LIB_LIBPNG_SITE)X $(LIB_LIBPNG_GITHUB)X \
               $(LIB_LIBPNG_PATCH)X 5.0 \
	       $(CONFIG_LIB_LIBPNG_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(LIB_LIBPNG_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(LIB_LIBPNG_SUBNAME)X \
               $(LIB_LIBPNG_CONFIG)X $(CONFIG_LIB_LIBPNG_CONFIG)X \
	       $(CONFIG_LIB_LIBPNG_LDFLAGS) $(CONFIG_LIB_LIBPNG_CFLAGS)

$(LIB_LIBPNG_DIR)/build: FORCE
	$(Q)$(call LIB_LIBPNG_sh,$(srctree))
