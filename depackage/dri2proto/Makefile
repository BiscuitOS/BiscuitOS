################################################
#
# dri2proto
#
################################################
DRI2PROTO_NAME		:= dri2proto
DRI2PROTO_VERSION	:= $(CONFIG_DRI2PROTO_VERSION)
DRI2PROTO_SITE		:= $(CONFIG_DRI2PROTO_URL)
DRI2PROTO_GITHUB	:= 
DRI2PROTO_SUBNAME	:= 
DRI2PROTO_DIR		:= $(srctree)/package/dri2proto
DRI2PROTO_PATCH		:= $(srctree)/package/dri2proto/patch
DRI2PROTO_DEMO		:= $(srctree)/package/dri2proto/demo.c
DRI2PROTO_OUT		:= 
DRI2PROTO_SCRIPTS	:= $(srctree)/scripts/package/GNU-package.sh
DRI2PROTO_TAR		:= $(CONFIG_DRI2PROTO_TAR)
DRI2PROTO_PACKAGE	:= 
DRI2PROTO_CONFIG		:=
SUB_TARGET		+= $(DRI2PROTO_DIR)/build

DRI2PROTO_sh = $(CONFIG_SHELL) $(DRI2PROTO_SCRIPTS) \
               $1 $(DRI2PROTO_NAME)X $(DRI2PROTO_VERSION)X \
               $(DRI2PROTO_SITE)X $(DRI2PROTO_GITHUB)X \
               $(DRI2PROTO_PATCH)X 5.0 \
	       $(CONFIG_DRI2PROTO_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(DRI2PROTO_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(DRI2PROTO_SUBNAME)X \
               $(DRI2PROTO_CONFIG)X $(CONFIG_DRI2PROTO_CONFIG)X \
	       $(CONFIG_DRI2PROTO_LDFLAGS) $(CONFIG_DRI2PROTO_CFLAGS)

$(DRI2PROTO_DIR)/build: FORCE
	$(Q)$(call DRI2PROTO_sh,$(srctree))
