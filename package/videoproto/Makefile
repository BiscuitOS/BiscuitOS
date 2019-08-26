################################################
#
# videoproto
#
################################################
FONTSPROTO_NAME		:= videoproto
FONTSPROTO_VERSION	:= $(CONFIG_FONTSPROTO_VERSION)
FONTSPROTO_SITE		:= $(CONFIG_FONTSPROTO_URL)
FONTSPROTO_GITHUB	:= 
FONTSPROTO_SUBNAME	:= 
FONTSPROTO_DIR		:= $(srctree)/package/videoproto
FONTSPROTO_PATCH	:= $(srctree)/package/videoproto/patch
FONTSPROTO_DEMO		:= $(srctree)/package/videoproto/demo.c
FONTSPROTO_OUT		:= 
FONTSPROTO_SCRIPTS	:= $(srctree)/scripts/package/GNU-package.sh
FONTSPROTO_TAR		:= $(CONFIG_FONTSPROTO_TAR)
FONTSPROTO_PACKAGE	:= 
FONTSPROTO_CONFIG	:=
SUB_TARGET		+= $(FONTSPROTO_DIR)/build

FONTSPROTO_sh = $(CONFIG_SHELL) $(FONTSPROTO_SCRIPTS) \
               $1 $(FONTSPROTO_NAME)X $(FONTSPROTO_VERSION)X \
               $(FONTSPROTO_SITE)X $(FONTSPROTO_GITHUB)X \
               $(FONTSPROTO_PATCH)X 5.0 \
	       $(CONFIG_FONTSPROTO_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(FONTSPROTO_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(FONTSPROTO_SUBNAME)X \
               $(FONTSPROTO_CONFIG)X $(CONFIG_FONTSPROTO_CONFIG)X \
	       $(CONFIG_FONTSPROTO_LDFLAGS) $(CONFIG_FONTSPROTO_CFLAGS)

$(FONTSPROTO_DIR)/build: FORCE
	$(Q)$(call FONTSPROTO_sh,$(srctree))
