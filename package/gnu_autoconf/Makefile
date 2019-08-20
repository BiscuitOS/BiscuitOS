################################################
#
# GNU autoconf
#
################################################
GNU_AUTOCONF_NAME		:= autoconf
GNU_AUTOCONF_VERSION		:= $(CONFIG_GNU_AUTOCONF_VERSION)
GNU_AUTOCONF_SITE		:= $(CONFIG_GNU_AUTOCONF_URL)
GNU_AUTOCONF_GITHUB		:= 
GNU_AUTOCONF_SUBNAME		:= 
GNU_AUTOCONF_DIR		:= $(srctree)/package/autoconf
GNU_AUTOCONF_PATCH		:= $(srctree)/package/autoconf/patch
GNU_AUTOCONF_DEMO		:= $(srctree)/package/autoconf/demo.c
GNU_AUTOCONF_OUT		:= 
GNU_AUTOCONF_SCRIPTS		:= $(srctree)/scripts/package/GNU-package.sh
GNU_AUTOCONF_TAR		:= $(CONFIG_GNU_AUTOCONF_TAR)
GNU_AUTOCONF_PACKAGE		:= 
GNU_AUTOCONF_CONFIG		:=
SUB_TARGET			+= $(GNU_AUTOCONF_DIR)/build

GNU_AUTOCONF_sh = $(CONFIG_SHELL) $(GNU_AUTOCONF_SCRIPTS) \
               $1 $(GNU_AUTOCONF_NAME)X $(GNU_AUTOCONF_VERSION)X \
               $(GNU_AUTOCONF_SITE)X $(GNU_AUTOCONF_GITHUB)X \
               $(GNU_AUTOCONF_PATCH)X 5.0 \
	       $(CONFIG_GNU_AUTOCONF_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(GNU_AUTOCONF_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(GNU_AUTOCONF_SUBNAME)X \
               $(GNU_AUTOCONF_CONFIG)X $(CONFIG_GNU_AUTOCONF_CONFIG)X \
	       $(CONFIG_GNU_AUTOCONF_LDFLAGS) $(CONFIG_GNU_AUTOCONF_CFLAGS)

$(GNU_AUTOCONF_DIR)/build: FORCE
	$(Q)$(call GNU_AUTOCONF_sh,$(srctree))
