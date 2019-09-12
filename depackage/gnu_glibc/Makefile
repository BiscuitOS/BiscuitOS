################################################
#
# GNU glibc
#
################################################
GNU_GLIBC_NAME		:= glibc
GNU_GLIBC_VERSION	:= $(CONFIG_GNU_GLIBC_VERSION)
GNU_GLIBC_SITE		:= $(CONFIG_GNU_GLIBC_URL)
GNU_GLIBC_GITHUB	:= 
GNU_GLIBC_SUBNAME	:= 
GNU_GLIBC_DIR		:= $(srctree)/package/glibc
GNU_GLIBC_PATCH		:= $(srctree)/package/glibc/patch
GNU_GLIBC_DEMO		:= $(srctree)/package/glibc/demo.c
GNU_GLIBC_OUT		:= 
GNU_GLIBC_SCRIPTS	:= $(srctree)/scripts/package/GNU-glibc.sh
GNU_GLIBC_TAR		:= $(CONFIG_GNU_GLIBC_TAR)
GNU_GLIBC_PACKAGE	:= 
GNU_GLIBC_CONFIG	:=
SUB_TARGET		+= $(GNU_GLIBC_DIR)/build

GNU_GLIBC_sh = $(CONFIG_SHELL) $(GNU_GLIBC_SCRIPTS) \
               $1 $(GNU_GLIBC_NAME)X $(GNU_GLIBC_VERSION)X \
               $(GNU_GLIBC_SITE)X $(GNU_GLIBC_GITHUB)X \
               $(GNU_GLIBC_PATCH)X 5.0 \
	       $(CONFIG_GNU_GLIBC_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(GNU_GLIBC_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(GNU_GLIBC_SUBNAME)X \
               $(GNU_GLIBC_CONFIG)X $(CONFIG_GNU_GLIBC_CONFIG)X \
	       $(CONFIG_GNU_GLIBC_LDFLAGS) $(CONFIG_GNU_GLIBC_CFLAGS)

$(GNU_GLIBC_DIR)/build: FORCE
	$(Q)$(call GNU_GLIBC_sh,$(srctree))
