################################################
#
# GNU binutils
#
################################################
GNU_BINUTILS_NAME		:= binutils
GNU_BINUTILS_VERSION		:= $(CONFIG_GNU_BINUTILS_VERSION)
GNU_BINUTILS_SITE		:= $(CONFIG_GNU_BINUTILS_URL)
GNU_BINUTILS_GITHUB		:= 
GNU_BINUTILS_SUBNAME		:= 
GNU_BINUTILS_DIR		:= $(srctree)/package/binutils
GNU_BINUTILS_PATCH		:= $(srctree)/package/binutils/patch
GNU_BINUTILS_DEMO		:= $(srctree)/package/binutils/demo.c
GNU_BINUTILS_OUT		:= 
GNU_BINUTILS_SCRIPTS		:= $(srctree)/scripts/package/GNU-package.sh
GNU_BINUTILS_TAR		:= $(CONFIG_GNU_BINUTILS_TAR)
GNU_BINUTILS_PACKAGE		:= 
GNU_BINUTILS_CONFIG		:=
SUB_TARGET		+= $(GNU_BINUTILS_DIR)/build

GNU_BINUTILS_sh = $(CONFIG_SHELL) $(GNU_BINUTILS_SCRIPTS) \
               $1 $(GNU_BINUTILS_NAME)X $(GNU_BINUTILS_VERSION)X \
               $(GNU_BINUTILS_SITE)X $(GNU_BINUTILS_GITHUB)X \
               $(GNU_BINUTILS_PATCH)X 5.0 \
	       $(CONFIG_GNU_BINUTILS_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(GNU_BINUTILS_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(GNU_BINUTILS_SUBNAME)X \
               $(GNU_BINUTILS_CONFIG)X $(CONFIG_GNU_BINUTILS_CONFIG)X \
	       $(CONFIG_GNU_BINUTILS_LDFLAGS) $(CONFIG_GNU_BINUTILS_CFLAGS)

$(GNU_BINUTILS_DIR)/build: FORCE
	$(Q)$(call GNU_BINUTILS_sh,$(srctree))
