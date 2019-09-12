################################################
#
# GNU automake
#
################################################
GNU_AUTOMAKE_NAME		:= automake
GNU_AUTOMAKE_VERSION		:= $(CONFIG_GNU_AUTOMAKE_VERSION)
GNU_AUTOMAKE_SITE		:= $(CONFIG_GNU_AUTOMAKE_URL)
GNU_AUTOMAKE_GITHUB		:= 
GNU_AUTOMAKE_SUBNAME		:= 
GNU_AUTOMAKE_DIR		:= $(srctree)/package/automake
GNU_AUTOMAKE_PATCH		:= $(srctree)/package/automake/patch
GNU_AUTOMAKE_DEMO		:= $(srctree)/package/automake/demo.c
GNU_AUTOMAKE_OUT		:= 
GNU_AUTOMAKE_SCRIPTS		:= $(srctree)/scripts/package/GNU-package.sh
GNU_AUTOMAKE_TAR		:= $(CONFIG_GNU_AUTOMAKE_TAR)
GNU_AUTOMAKE_PACKAGE		:= 
GNU_AUTOMAKE_CONFIG		:=
SUB_TARGET			+= $(GNU_AUTOMAKE_DIR)/build

GNU_AUTOMAKE_sh = $(CONFIG_SHELL) $(GNU_AUTOMAKE_SCRIPTS) \
               $1 $(GNU_AUTOMAKE_NAME)X $(GNU_AUTOMAKE_VERSION)X \
               $(GNU_AUTOMAKE_SITE)X $(GNU_AUTOMAKE_GITHUB)X \
               $(GNU_AUTOMAKE_PATCH)X 5.0 \
	       $(CONFIG_GNU_AUTOMAKE_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(GNU_AUTOMAKE_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(GNU_AUTOMAKE_SUBNAME)X \
               $(GNU_AUTOMAKE_CONFIG)X $(CONFIG_GNU_AUTOMAKE_CONFIG)X \
	       $(CONFIG_GNU_AUTOMAKE_LDFLAGS) $(CONFIG_GNU_AUTOMAKE_CFLAGS)

$(GNU_AUTOMAKE_DIR)/build: FORCE
	$(Q)$(call GNU_AUTOMAKE_sh,$(srctree))
