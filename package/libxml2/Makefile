################################################
#
# libxml2
#
################################################
LIB_LIBXML2_NAME	:= libxml2
LIB_LIBXML2_VERSION	:= $(CONFIG_LIB_LIBXML2_VERSION)
LIB_LIBXML2_SITE	:= $(CONFIG_LIB_LIBXML2_URL)
LIB_LIBXML2_GITHUB	:= 
LIB_LIBXML2_SUBNAME	:= 
LIB_LIBXML2_DIR		:= $(srctree)/package/libxml2
LIB_LIBXML2_PATCH	:= $(srctree)/package/libxml2/patch
LIB_LIBXML2_DEMO	:= $(srctree)/package/libxml2/demo.c
LIB_LIBXML2_OUT		:= 
LIB_LIBXML2_SCRIPTS	:= $(srctree)/scripts/package/GNU-package.sh
LIB_LIBXML2_TAR		:= $(CONFIG_LIB_LIBXML2_TAR)
LIB_LIBXML2_PACKAGE	:= 
LIB_LIBXML2_CONFIG	:=
SUB_TARGET		+= $(LIB_LIBXML2_DIR)/build

LIB_LIBXML2_sh = $(CONFIG_SHELL) $(LIB_LIBXML2_SCRIPTS) \
               $1 $(LIB_LIBXML2_NAME)X $(LIB_LIBXML2_VERSION)X \
               $(LIB_LIBXML2_SITE)X $(LIB_LIBXML2_GITHUB)X \
               $(LIB_LIBXML2_PATCH)X 5.0 \
	       $(CONFIG_LIB_LIBXML2_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(LIB_LIBXML2_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(LIB_LIBXML2_SUBNAME)X \
               $(LIB_LIBXML2_CONFIG)X $(CONFIG_LIB_LIBXML2_CONFIG)X \
	       $(CONFIG_LIB_LIBXML2_LDFLAGS) $(CONFIG_LIB_LIBXML2_CFLAGS)

$(LIB_LIBXML2_DIR)/build: FORCE
	$(Q)$(call LIB_LIBXML2_sh,$(srctree))
