################################################
#
# fontconfig
#
################################################
FONTCONFIG_NAME		:= fontconfig
FONTCONFIG_VERSION	:= $(CONFIG_FONTCONFIG_VERSION)
FONTCONFIG_SITE		:= $(CONFIG_FONTCONFIG_URL)
FONTCONFIG_GITHUB	:= 
FONTCONFIG_SUBNAME	:= 
FONTCONFIG_DIR		:= $(srctree)/package/fontconfig
FONTCONFIG_PATCH	:= $(srctree)/package/fontconfig/patch
FONTCONFIG_DEMO		:= $(srctree)/package/fontconfig/demo.c
FONTCONFIG_OUT		:= 
FONTCONFIG_SCRIPTS	:= $(srctree)/scripts/package/GNU-package.sh
FONTCONFIG_TAR		:= $(CONFIG_FONTCONFIG_TAR)
FONTCONFIG_PACKAGE	:= 
FONTCONFIG_CONFIG	:=
SUB_TARGET		+= $(FONTCONFIG_DIR)/build

FONTCONFIG_sh = $(CONFIG_SHELL) $(FONTCONFIG_SCRIPTS) \
               $1 $(FONTCONFIG_NAME)X $(FONTCONFIG_VERSION)X \
               $(FONTCONFIG_SITE)X $(FONTCONFIG_GITHUB)X \
               $(FONTCONFIG_PATCH)X 5.0 \
	       $(CONFIG_FONTCONFIG_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(FONTCONFIG_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(FONTCONFIG_SUBNAME)X \
               $(FONTCONFIG_CONFIG)X $(CONFIG_FONTCONFIG_CONFIG)X \
	       $(CONFIG_FONTCONFIG_LDFLAGS) $(CONFIG_FONTCONFIG_CFLAGS)

$(FONTCONFIG_DIR)/build: FORCE
	$(Q)$(call FONTCONFIG_sh,$(srctree))
