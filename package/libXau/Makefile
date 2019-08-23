################################################
#
# libXau
#
################################################
LIB_LIBXAU_NAME		:= libXau
LIB_LIBXAU_VERSION	:= $(CONFIG_LIB_LIBXAU_VERSION)
LIB_LIBXAU_SITE		:= $(CONFIG_LIB_LIBXAU_URL)
LIB_LIBXAU_GITHUB	:= 
LIB_LIBXAU_SUBNAME	:= 
LIB_LIBXAU_DIR		:= $(srctree)/package/libXau
LIB_LIBXAU_PATCH	:= $(srctree)/package/libXau/patch
LIB_LIBXAU_DEMO		:= $(srctree)/package/libXau/demo.c
LIB_LIBXAU_OUT		:= 
LIB_LIBXAU_SCRIPTS	:= $(srctree)/scripts/package/GNU-package.sh
LIB_LIBXAU_TAR		:= $(CONFIG_LIB_LIBXAU_TAR)
LIB_LIBXAU_PACKAGE	:= 
LIB_LIBXAU_CONFIG	:=
SUB_TARGET		+= $(LIB_LIBXAU_DIR)/build

LIB_LIBXAU_sh = $(CONFIG_SHELL) $(LIB_LIBXAU_SCRIPTS) \
               $1 $(LIB_LIBXAU_NAME)X $(LIB_LIBXAU_VERSION)X \
               $(LIB_LIBXAU_SITE)X $(LIB_LIBXAU_GITHUB)X \
               $(LIB_LIBXAU_PATCH)X 5.0 \
	       $(CONFIG_LIB_LIBXAU_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(LIB_LIBXAU_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(LIB_LIBXAU_SUBNAME)X \
               $(LIB_LIBXAU_CONFIG)X $(CONFIG_LIB_LIBXAU_CONFIG)X \
	       $(CONFIG_LIB_LIBXAU_LDFLAGS) $(CONFIG_LIB_LIBXAU_CFLAGS)

$(LIB_LIBXAU_DIR)/build: FORCE
	$(Q)$(call LIB_LIBXAU_sh,$(srctree))
