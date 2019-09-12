################################################
#
# pcre
#
################################################
PCRE_NAME		:= pcre
PCRE_VERSION		:= $(CONFIG_PCRE_VERSION)
PCRE_SITE		:= $(CONFIG_PCRE_URL)
PCRE_GITHUB		:= 
PCRE_SUBNAME		:= 
PCRE_DIR		:= $(srctree)/package/pcre
PCRE_PATCH		:= $(srctree)/package/pcre/patch
PCRE_DEMO		:= $(srctree)/package/pcre/demo.c
PCRE_OUT		:= 
PCRE_SCRIPTS		:= $(srctree)/scripts/package/GNU-package.sh
PCRE_TAR		:= $(CONFIG_PCRE_TAR)
PCRE_PACKAGE		:= 
PCRE_CONFIG		:=
SUB_TARGET		+= $(PCRE_DIR)/build

PCRE_sh = $(CONFIG_SHELL) $(PCRE_SCRIPTS) \
               $1 $(PCRE_NAME)X $(PCRE_VERSION)X \
               $(PCRE_SITE)X $(PCRE_GITHUB)X \
               $(PCRE_PATCH)X 5.0 \
	       $(CONFIG_PCRE_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(PCRE_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(PCRE_SUBNAME)X \
               $(PCRE_CONFIG)X $(CONFIG_PCRE_CONFIG)X \
	       $(CONFIG_PCRE_LDFLAGS) $(CONFIG_PCRE_CFLAGS)

$(PCRE_DIR)/build: FORCE
	$(Q)$(call PCRE_sh,$(srctree))
