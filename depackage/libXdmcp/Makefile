################################################
#
# libXdmcp
#
################################################
LIB_LIBXDMCP_NAME		:= libXdmcp
LIB_LIBXDMCP_VERSION		:= $(CONFIG_LIB_LIBXDMCP_VERSION)
LIB_LIBXDMCP_SITE		:= $(CONFIG_LIB_LIBXDMCP_URL)
LIB_LIBXDMCP_GITHUB		:= 
LIB_LIBXDMCP_SUBNAME		:= 
LIB_LIBXDMCP_DIR		:= $(srctree)/package/libXdmcp
LIB_LIBXDMCP_PATCH		:= $(srctree)/package/libXdmcp/patch
LIB_LIBXDMCP_DEMO		:= $(srctree)/package/libXdmcp/demo.c
LIB_LIBXDMCP_OUT		:= 
LIB_LIBXDMCP_SCRIPTS		:= $(srctree)/scripts/package/GNU-package.sh
LIB_LIBXDMCP_TAR		:= $(CONFIG_LIB_LIBXDMCP_TAR)
LIB_LIBXDMCP_PACKAGE		:= 
LIB_LIBXDMCP_CONFIG		:=
SUB_TARGET			+= $(LIB_LIBXDMCP_DIR)/build

LIB_LIBXDMCP_sh = $(CONFIG_SHELL) $(LIB_LIBXDMCP_SCRIPTS) \
               $1 $(LIB_LIBXDMCP_NAME)X $(LIB_LIBXDMCP_VERSION)X \
               $(LIB_LIBXDMCP_SITE)X $(LIB_LIBXDMCP_GITHUB)X \
               $(LIB_LIBXDMCP_PATCH)X 5.0 \
	       $(CONFIG_LIB_LIBXDMCP_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(LIB_LIBXDMCP_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(LIB_LIBXDMCP_SUBNAME)X \
               $(LIB_LIBXDMCP_CONFIG)X $(CONFIG_LIB_LIBXDMCP_CONFIG)X \
	       $(CONFIG_LIB_LIBXDMCP_LDFLAGS) $(CONFIG_LIB_LIBXDMCP_CFLAGS)

$(LIB_LIBXDMCP_DIR)/build: FORCE
	$(Q)$(call LIB_LIBXDMCP_sh,$(srctree))
