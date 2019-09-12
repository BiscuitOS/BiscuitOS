################################################
#
# GNU sed
#
################################################
GNU_SED_NAME		:= sed
GNU_SED_VERSION		:= $(CONFIG_GNU_SED_VERSION)
GNU_SED_SITE		:= $(CONFIG_GNU_SED_URL)
GNU_SED_GITHUB		:= 
GNU_SED_SUBNAME		:= 
GNU_SED_DIR		:= $(srctree)/package/sed
GNU_SED_PATCH		:= $(srctree)/package/sed/patch
GNU_SED_DEMO		:= $(srctree)/package/sed/demo.c
GNU_SED_OUT		:= 
GNU_SED_SCRIPTS		:= $(srctree)/scripts/package/GNU-package.sh
GNU_SED_TAR		:= $(CONFIG_GNU_SED_TAR)
GNU_SED_PACKAGE		:= 
GNU_SED_CONFIG		:=
SUB_TARGET		+= $(GNU_SED_DIR)/build

GNU_SED_sh = $(CONFIG_SHELL) $(GNU_SED_SCRIPTS) \
               $1 $(GNU_SED_NAME)X $(GNU_SED_VERSION)X \
               $(GNU_SED_SITE)X $(GNU_SED_GITHUB)X \
               $(GNU_SED_PATCH)X 5.0 \
	       $(CONFIG_GNU_SED_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(GNU_SED_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(GNU_SED_SUBNAME)X \
               $(GNU_SED_CONFIG)X $(CONFIG_GNU_SED_CONFIG)X \
	       $(CONFIG_GNU_SED_LDFLAGS) $(CONFIG_GNU_SED_CFLAGS)

$(GNU_SED_DIR)/build: FORCE
	$(Q)$(call GNU_SED_sh,$(srctree))
