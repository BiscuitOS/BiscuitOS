################################################
#
# GNU parted
#
################################################
GNU_PARTED_NAME		:= parted
GNU_PARTED_VERSION	:= $(CONFIG_GNU_PARTED_VERSION)
GNU_PARTED_SITE		:= $(CONFIG_GNU_PARTED_URL)
GNU_PARTED_GITHUB	:= 
GNU_PARTED_SUBNAME	:= 
GNU_PARTED_DIR		:= $(srctree)/package/parted
GNU_PARTED_PATCH		:= $(srctree)/package/parted/patch
GNU_PARTED_DEMO		:= $(srctree)/package/parted/demo.c
GNU_PARTED_OUT		:= 
GNU_PARTED_SCRIPTS	:= $(srctree)/scripts/package/GNU-package.sh
GNU_PARTED_TAR		:= $(CONFIG_GNU_PARTED_TAR)
GNU_PARTED_PACKAGE	:= 
GNU_PARTED_CONFIG	:=
SUB_TARGET		+= $(GNU_PARTED_DIR)/build

GNU_PARTED_sh = $(CONFIG_SHELL) $(GNU_PARTED_SCRIPTS) \
               $1 $(GNU_PARTED_NAME)X $(GNU_PARTED_VERSION)X \
               $(GNU_PARTED_SITE)X $(GNU_PARTED_GITHUB)X \
               $(GNU_PARTED_PATCH)X 5.0 \
	       $(CONFIG_GNU_PARTED_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(GNU_PARTED_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(GNU_PARTED_SUBNAME)X \
               $(GNU_PARTED_CONFIG)X $(CONFIG_GNU_PARTED_CONFIG)X \
	       $(CONFIG_GNU_PARTED_LDFLAGS) $(CONFIG_GNU_PARTED_CFLAGS)

$(GNU_PARTED_DIR)/build: FORCE
	$(Q)$(call GNU_PARTED_sh,$(srctree))
