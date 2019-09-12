################################################
#
# libdrm
#
################################################
LIB_LIBDRM_NAME		:= libdrm
LIB_LIBDRM_VERSION	:= $(CONFIG_LIB_LIBDRM_VERSION)
LIB_LIBDRM_SITE		:= $(CONFIG_LIB_LIBDRM_URL)
LIB_LIBDRM_GITHUB	:= 
LIB_LIBDRM_SUBNAME	:= 
LIB_LIBDRM_DIR		:= $(srctree)/package/libdrm
LIB_LIBDRM_PATCH	:= $(srctree)/package/libdrm/patch
LIB_LIBDRM_DEMO		:= $(srctree)/package/libdrm/demo.c
LIB_LIBDRM_OUT		:= 
LIB_LIBDRM_SCRIPTS	:= $(srctree)/scripts/package/GNU-package.sh
LIB_LIBDRM_TAR		:= $(CONFIG_LIB_LIBDRM_TAR)
LIB_LIBDRM_PACKAGE	:= 
LIB_LIBDRM_CONFIG	:=
SUB_TARGET		+= $(LIB_LIBDRM_DIR)/build

LIB_LIBDRM_sh = $(CONFIG_SHELL) $(LIB_LIBDRM_SCRIPTS) \
               $1 $(LIB_LIBDRM_NAME)X $(LIB_LIBDRM_VERSION)X \
               $(LIB_LIBDRM_SITE)X $(LIB_LIBDRM_GITHUB)X \
               $(LIB_LIBDRM_PATCH)X 5.0 \
	       $(CONFIG_LIB_LIBDRM_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(LIB_LIBDRM_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(LIB_LIBDRM_SUBNAME)X \
               $(LIB_LIBDRM_CONFIG)X $(CONFIG_LIB_LIBDRM_CONFIG)X \
	       $(CONFIG_LIB_LIBDRM_LDFLAGS) $(CONFIG_LIB_LIBDRM_CFLAGS)

$(LIB_LIBDRM_DIR)/build: FORCE
	$(Q)$(call LIB_LIBDRM_sh,$(srctree))
