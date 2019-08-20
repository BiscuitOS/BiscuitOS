################################################
#
# GNU screen
#
################################################
GNU_SCREEN_NAME		:= screen
GNU_SCREEN_VERSION	:= $(CONFIG_GNU_SCREEN_VERSION)
GNU_SCREEN_SITE		:= $(CONFIG_GNU_SCREEN_URL)
GNU_SCREEN_GITHUB	:= 
GNU_SCREEN_SUBNAME	:= 
GNU_SCREEN_DIR		:= $(srctree)/package/screen
GNU_SCREEN_PATCH	:= $(srctree)/package/screen/patch
GNU_SCREEN_DEMO		:= $(srctree)/package/screen/demo.c
GNU_SCREEN_OUT		:= 
GNU_SCREEN_SCRIPTS	:= $(srctree)/scripts/package/GNU-package.sh
GNU_SCREEN_TAR		:= $(CONFIG_GNU_SCREEN_TAR)
GNU_SCREEN_PACKAGE	:= 
GNU_SCREEN_CONFIG	:=
SUB_TARGET		+= $(GNU_SCREEN_DIR)/build

GNU_SCREEN_sh = $(CONFIG_SHELL) $(GNU_SCREEN_SCRIPTS) \
               $1 $(GNU_SCREEN_NAME)X $(GNU_SCREEN_VERSION)X \
               $(GNU_SCREEN_SITE)X $(GNU_SCREEN_GITHUB)X \
               $(GNU_SCREEN_PATCH)X 5.0 \
	       $(CONFIG_GNU_SCREEN_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(GNU_SCREEN_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(GNU_SCREEN_SUBNAME)X \
               $(GNU_SCREEN_CONFIG)X $(CONFIG_GNU_SCREEN_CONFIG)X \
	       $(CONFIG_GNU_SCREEN_LDFLAGS) $(CONFIG_GNU_SCREEN_CFLAGS)

$(GNU_SCREEN_DIR)/build: FORCE
	$(Q)$(call GNU_SCREEN_sh,$(srctree))
