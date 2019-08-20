################################################
#
# GNU hello
#
################################################
GNU_HELLO_NAME		:= hello
GNU_HELLO_VERSION	:= $(CONFIG_GNU_HELLO_VERSION)
GNU_HELLO_SITE		:= $(CONFIG_GNU_HELLO_URL)
GNU_HELLO_GITHUB	:= 
GNU_HELLO_SUBNAME	:= 
GNU_HELLO_DIR		:= $(srctree)/package/hello
GNU_HELLO_PATCH		:= $(srctree)/package/hello/patch
GNU_HELLO_DEMO		:= $(srctree)/package/hello/demo.c
GNU_HELLO_OUT		:= 
GNU_HELLO_SCRIPTS	:= $(srctree)/scripts/package/GNU-package.sh
GNU_HELLO_TAR		:= $(CONFIG_GNU_HELLO_TAR)
GNU_HELLO_PACKAGE	:= 
GNU_HELLO_CONFIG	:=
SUB_TARGET		+= $(GNU_HELLO_DIR)/build

GNU_HELLO_sh = $(CONFIG_SHELL) $(GNU_HELLO_SCRIPTS) \
               $1 $(GNU_HELLO_NAME)X $(GNU_HELLO_VERSION)X \
               $(GNU_HELLO_SITE)X $(GNU_HELLO_GITHUB)X \
               $(GNU_HELLO_PATCH)X 5.0 \
	       $(CONFIG_GNU_HELLO_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(GNU_HELLO_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(GNU_HELLO_SUBNAME)X \
               $(GNU_HELLO_CONFIG)X $(CONFIG_GNU_HELLO_CONFIG)X

$(GNU_HELLO_DIR)/build: FORCE
	$(Q)$(call GNU_HELLO_sh,$(srctree))
