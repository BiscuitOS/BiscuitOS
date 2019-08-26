################################################
#
# elfutils
#
################################################
ELFUTILS_NAME		:= elfutils
ELFUTILS_VERSION	:= $(CONFIG_ELFUTILS_VERSION)
ELFUTILS_SITE		:= $(CONFIG_ELFUTILS_URL)
ELFUTILS_GITHUB		:= 
ELFUTILS_SUBNAME	:= 
ELFUTILS_DIR		:= $(srctree)/package/elfutils
ELFUTILS_PATCH		:= $(srctree)/package/elfutils/patch
ELFUTILS_DEMO		:= $(srctree)/package/elfutils/demo.c
ELFUTILS_OUT		:= 
ELFUTILS_SCRIPTS	:= $(srctree)/scripts/package/GNU-package.sh
ELFUTILS_TAR		:= $(CONFIG_ELFUTILS_TAR)
ELFUTILS_PACKAGE	:= 
ELFUTILS_CONFIG		:=
SUB_TARGET		+= $(ELFUTILS_DIR)/build

ELFUTILS_sh = $(CONFIG_SHELL) $(ELFUTILS_SCRIPTS) \
               $1 $(ELFUTILS_NAME)X $(ELFUTILS_VERSION)X \
               $(ELFUTILS_SITE)X $(ELFUTILS_GITHUB)X \
               $(ELFUTILS_PATCH)X 5.0 \
	       $(CONFIG_ELFUTILS_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(ELFUTILS_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(ELFUTILS_SUBNAME)X \
               $(ELFUTILS_CONFIG)X $(CONFIG_ELFUTILS_CONFIG)X \
	       $(CONFIG_ELFUTILS_LDFLAGS) $(CONFIG_ELFUTILS_CFLAGS)

$(ELFUTILS_DIR)/build: FORCE
	$(Q)$(call ELFUTILS_sh,$(srctree))
