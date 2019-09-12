################################################
#
# randrproto
#
################################################
RANDRPROTO_NAME		:= randrproto
RANDRPROTO_VERSION	:= $(CONFIG_RANDRPROTO_VERSION)
RANDRPROTO_SITE		:= $(CONFIG_RANDRPROTO_URL)
RANDRPROTO_GITHUB	:= 
RANDRPROTO_SUBNAME	:= 
RANDRPROTO_DIR		:= $(srctree)/package/randrproto
RANDRPROTO_PATCH	:= $(srctree)/package/randrproto/patch
RANDRPROTO_DEMO		:= $(srctree)/package/randrproto/demo.c
RANDRPROTO_OUT		:= 
RANDRPROTO_SCRIPTS	:= $(srctree)/scripts/package/GNU-package.sh
RANDRPROTO_TAR		:= $(CONFIG_RANDRPROTO_TAR)
RANDRPROTO_PACKAGE	:= 
RANDRPROTO_CONFIG	:=
SUB_TARGET		+= $(RANDRPROTO_DIR)/build

RANDRPROTO_sh = $(CONFIG_SHELL) $(RANDRPROTO_SCRIPTS) \
               $1 $(RANDRPROTO_NAME)X $(RANDRPROTO_VERSION)X \
               $(RANDRPROTO_SITE)X $(RANDRPROTO_GITHUB)X \
               $(RANDRPROTO_PATCH)X 5.0 \
	       $(CONFIG_RANDRPROTO_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(RANDRPROTO_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(RANDRPROTO_SUBNAME)X \
               $(RANDRPROTO_CONFIG)X $(CONFIG_RANDRPROTO_CONFIG)X \
	       $(CONFIG_RANDRPROTO_LDFLAGS) $(CONFIG_RANDRPROTO_CFLAGS)

$(RANDRPROTO_DIR)/build: FORCE
	$(Q)$(call RANDRPROTO_sh,$(srctree))
