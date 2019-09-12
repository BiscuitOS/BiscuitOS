################################################
#
# GNU e2fsprogs
#
################################################
E2FSPROGS_NAME		:= e2fsprogs
E2FSPROGS_VERSION	:= $(CONFIG_E2FSPROGS_VERSION)
E2FSPROGS_SITE		:= $(CONFIG_E2FSPROGS_URL)
E2FSPROGS_GITHUB	:= 
E2FSPROGS_SUBNAME	:= 
E2FSPROGS_DIR		:= $(srctree)/package/e2fsprogs
E2FSPROGS_PATCH		:= $(srctree)/package/e2fsprogs/patch
E2FSPROGS_DEMO		:= $(srctree)/package/e2fsprogs/demo.c
E2FSPROGS_OUT		:= 
E2FSPROGS_SCRIPTS	:= $(srctree)/scripts/package/GNU-package.sh
E2FSPROGS_TAR		:= $(CONFIG_E2FSPROGS_TAR)
E2FSPROGS_PACKAGE	:= 
E2FSPROGS_CONFIG	:=
SUB_TARGET		+= $(E2FSPROGS_DIR)/build

E2FSPROGS_sh = $(CONFIG_SHELL) $(E2FSPROGS_SCRIPTS) \
               $1 $(E2FSPROGS_NAME)X $(E2FSPROGS_VERSION)X \
               $(E2FSPROGS_SITE)X $(E2FSPROGS_GITHUB)X \
               $(E2FSPROGS_PATCH)X 5.0 \
	       $(CONFIG_E2FSPROGS_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(E2FSPROGS_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(E2FSPROGS_SUBNAME)X \
               $(E2FSPROGS_CONFIG)X $(CONFIG_E2FSPROGS_CONFIG)X \
	       $(CONFIG_E2FSPROGS_LDFLAGS) $(CONFIG_E2FSPROGS_CFLAGS)

$(E2FSPROGS_DIR)/build: FORCE
	$(Q)$(call E2FSPROGS_sh,$(srctree))
