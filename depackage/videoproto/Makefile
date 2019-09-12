################################################
#
# videoproto
#
################################################
VIDEOPROTO_NAME		:= videoproto
VIDEOPROTO_VERSION	:= $(CONFIG_VIDEOPROTO_VERSION)
VIDEOPROTO_SITE		:= $(CONFIG_VIDEOPROTO_URL)
VIDEOPROTO_GITHUB	:= 
VIDEOPROTO_SUBNAME	:= 
VIDEOPROTO_DIR		:= $(srctree)/package/videoproto
VIDEOPROTO_PATCH	:= $(srctree)/package/videoproto/patch
VIDEOPROTO_DEMO		:= $(srctree)/package/videoproto/demo.c
VIDEOPROTO_OUT		:= 
VIDEOPROTO_SCRIPTS	:= $(srctree)/scripts/package/GNU-package.sh
VIDEOPROTO_TAR		:= $(CONFIG_VIDEOPROTO_TAR)
VIDEOPROTO_PACKAGE	:= 
VIDEOPROTO_CONFIG	:=
SUB_TARGET		+= $(VIDEOPROTO_DIR)/build

VIDEOPROTO_sh = $(CONFIG_SHELL) $(VIDEOPROTO_SCRIPTS) \
               $1 $(VIDEOPROTO_NAME)X $(VIDEOPROTO_VERSION)X \
               $(VIDEOPROTO_SITE)X $(VIDEOPROTO_GITHUB)X \
               $(VIDEOPROTO_PATCH)X 5.0 \
	       $(CONFIG_VIDEOPROTO_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(VIDEOPROTO_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(VIDEOPROTO_SUBNAME)X \
               $(VIDEOPROTO_CONFIG)X $(CONFIG_VIDEOPROTO_CONFIG)X \
	       $(CONFIG_VIDEOPROTO_LDFLAGS) $(CONFIG_VIDEOPROTO_CFLAGS)

$(VIDEOPROTO_DIR)/build: FORCE
	$(Q)$(call VIDEOPROTO_sh,$(srctree))
