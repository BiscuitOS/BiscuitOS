################################################
#
# GNU fdisk
#
################################################
GNU_FDISK_NAME		:= fdisk
GNU_FDISK_VERSION	:= $(CONFIG_GNU_FDISK_VERSION)
GNU_FDISK_SITE		:= $(CONFIG_GNU_FDISK_URL)
GNU_FDISK_GITHUB	:= 
GNU_FDISK_SUBNAME	:= 
GNU_FDISK_DIR		:= $(srctree)/package/fdisk
GNU_FDISK_PATCH		:= $(srctree)/package/fdisk/patch
GNU_FDISK_DEMO		:= $(srctree)/package/fdisk/demo.c
GNU_FDISK_OUT		:= 
GNU_FDISK_SCRIPTS	:= $(srctree)/scripts/package/GNU-package.sh
GNU_FDISK_TAR		:= $(CONFIG_GNU_FDISK_TAR)
GNU_FDISK_PACKAGE	:= 
GNU_FDISK_CONFIG	:=
SUB_TARGET		+= $(GNU_FDISK_DIR)/build

GNU_FDISK_sh = $(CONFIG_SHELL) $(GNU_FDISK_SCRIPTS) \
               $1 $(GNU_FDISK_NAME)X $(GNU_FDISK_VERSION)X \
               $(GNU_FDISK_SITE)X $(GNU_FDISK_GITHUB)X \
               $(GNU_FDISK_PATCH)X 5.0 \
	       $(CONFIG_GNU_FDISK_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(GNU_FDISK_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(GNU_FDISK_SUBNAME)X \
               $(GNU_FDISK_CONFIG)X $(CONFIG_GNU_FDISK_CONFIG)X \
	       $(CONFIG_GNU_FDISK_LDFLAGS) $(CONFIG_GNU_FDISK_CFLAGS)

$(GNU_FDISK_DIR)/build: FORCE
	$(Q)$(call GNU_FDISK_sh,$(srctree))
