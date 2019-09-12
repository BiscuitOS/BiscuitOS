################################################
#
# GNU gawk
#
################################################
GNU_GAWK_NAME		:= gawk
GNU_GAWK_VERSION	:= $(CONFIG_GNU_GAWK_VERSION)
GNU_GAWK_SITE		:= $(CONFIG_GNU_GAWK_URL)
GNU_GAWK_GITHUB		:= 
GNU_GAWK_SUBNAME	:= 
GNU_GAWK_DIR		:= $(srctree)/package/gawk
GNU_GAWK_PATCH		:= $(srctree)/package/gawk/patch
GNU_GAWK_DEMO		:= $(srctree)/package/gawk/demo.c
GNU_GAWK_OUT		:= 
GNU_GAWK_SCRIPTS	:= $(srctree)/scripts/package/GNU-package.sh
GNU_GAWK_TAR		:= $(CONFIG_GNU_GAWK_TAR)
GNU_GAWK_PACKAGE	:= 
GNU_GAWK_CONFIG		:=
SUB_TARGET		+= $(GNU_GAWK_DIR)/build

GNU_GAWK_sh = $(CONFIG_SHELL) $(GNU_GAWK_SCRIPTS) \
               $1 $(GNU_GAWK_NAME)X $(GNU_GAWK_VERSION)X \
               $(GNU_GAWK_SITE)X $(GNU_GAWK_GITHUB)X \
               $(GNU_GAWK_PATCH)X 5.0 \
	       $(CONFIG_GNU_GAWK_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(GNU_GAWK_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(GNU_GAWK_SUBNAME)X \
               $(GNU_GAWK_CONFIG)X $(CONFIG_GNU_GAWK_CONFIG)X \
	       $(CONFIG_GNU_GAWK_LDFLAGS) $(CONFIG_GNU_GAWK_CFLAGS)

$(GNU_GAWK_DIR)/build: FORCE
	$(Q)$(call GNU_GAWK_sh,$(srctree))
