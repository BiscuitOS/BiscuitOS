################################################
#
# expat
#
################################################
EXPAT_NAME		:= expat
EXPAT_VERSION		:= $(CONFIG_EXPAT_VERSION)
EXPAT_SITE		:= $(CONFIG_EXPAT_URL)
EXPAT_GITHUB		:= 
EXPAT_SUBNAME		:= 
EXPAT_DIR		:= $(srctree)/package/expat
EXPAT_PATCH		:= $(srctree)/package/expat/patch
EXPAT_DEMO		:= $(srctree)/package/expat/demo.c
EXPAT_OUT		:= 
EXPAT_SCRIPTS		:= $(srctree)/scripts/package/GNU-package.sh
EXPAT_TAR		:= $(CONFIG_EXPAT_TAR)
EXPAT_PACKAGE		:= 
EXPAT_CONFIG		:=
SUB_TARGET		+= $(EXPAT_DIR)/build

EXPAT_sh = $(CONFIG_SHELL) $(EXPAT_SCRIPTS) \
               $1 $(EXPAT_NAME)X $(EXPAT_VERSION)X \
               $(EXPAT_SITE)X $(EXPAT_GITHUB)X \
               $(EXPAT_PATCH)X 5.0 \
	       $(CONFIG_EXPAT_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(EXPAT_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(EXPAT_SUBNAME)X \
               $(EXPAT_CONFIG)X $(CONFIG_EXPAT_CONFIG)X \
	       $(CONFIG_EXPAT_LDFLAGS) $(CONFIG_EXPAT_CFLAGS)

$(EXPAT_DIR)/build: FORCE
	$(Q)$(call EXPAT_sh,$(srctree))
