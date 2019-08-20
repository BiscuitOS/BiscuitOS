################################################
#
# GNU git
#
################################################
GNU_GIT_NAME		:= gnuit
GNU_GIT_VERSION		:= $(CONFIG_GNU_GIT_VERSION)
GNU_GIT_SITE		:= $(CONFIG_GNU_GIT_URL)
GNU_GIT_GITHUB		:= 
GNU_GIT_SUBNAME		:= 
GNU_GIT_DIR		:= $(srctree)/package/git
GNU_GIT_PATCH		:= $(srctree)/package/git/patch
GNU_GIT_DEMO		:= $(srctree)/package/git/demo.c
GNU_GIT_OUT		:= 
GNU_GIT_SCRIPTS		:= $(srctree)/scripts/package/GNU-package.sh
GNU_GIT_TAR		:= $(CONFIG_GNU_GIT_TAR)
GNU_GIT_PACKAGE		:= 
GNU_GIT_CONFIG		:=
SUB_TARGET		+= $(GNU_GIT_DIR)/build

GNU_GIT_sh = $(CONFIG_SHELL) $(GNU_GIT_SCRIPTS) \
               $1 $(GNU_GIT_NAME)X $(GNU_GIT_VERSION)X \
               $(GNU_GIT_SITE)X $(GNU_GIT_GITHUB)X \
               $(GNU_GIT_PATCH)X 5.0 \
	       $(CONFIG_GNU_GIT_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(GNU_GIT_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(GNU_GIT_SUBNAME)X \
               $(GNU_GIT_CONFIG)X $(CONFIG_GNU_GIT_CONFIG)X \
	       $(CONFIG_GNU_GIT_LDFLAGS) $(CONFIG_GNU_GIT_CFLAGS)

$(GNU_GIT_DIR)/build: FORCE
	$(Q)$(call GNU_GIT_sh,$(srctree))
