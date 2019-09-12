################################################
#
# GNU bison
#
################################################
GNU_BISON_NAME		:= bison
GNU_BISON_VERSION	:= $(CONFIG_GNU_BISON_VERSION)
GNU_BISON_SITE		:= $(CONFIG_GNU_BISON_URL)
GNU_BISON_GITHUB	:= 
GNU_BISON_SUBNAME	:= 
GNU_BISON_DIR		:= $(srctree)/package/bison
GNU_BISON_PATCH		:= $(srctree)/package/bison/patch
GNU_BISON_DEMO		:= $(srctree)/package/bison/demo.c
GNU_BISON_OUT		:= 
GNU_BISON_SCRIPTS	:= $(srctree)/scripts/package/GNU-package.sh
GNU_BISON_TAR		:= $(CONFIG_GNU_BISON_TAR)
GNU_BISON_PACKAGE	:= 
GNU_BISON_CONFIG	:=
SUB_TARGET		+= $(GNU_BISON_DIR)/build

GNU_BISON_sh = $(CONFIG_SHELL) $(GNU_BISON_SCRIPTS) \
               $1 $(GNU_BISON_NAME)X $(GNU_BISON_VERSION)X \
               $(GNU_BISON_SITE)X $(GNU_BISON_GITHUB)X \
               $(GNU_BISON_PATCH)X 5.0 \
	       $(CONFIG_GNU_BISON_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(GNU_BISON_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(GNU_BISON_SUBNAME)X \
               $(GNU_BISON_CONFIG)X $(CONFIG_GNU_BISON_CONFIG)X

$(GNU_BISON_DIR)/build: FORCE
	$(Q)$(call GNU_BISON_sh,$(srctree))
