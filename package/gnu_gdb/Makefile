################################################
#
# GNU gdb
#
################################################
GNU_GDB_NAME		:= gdb
GNU_GDB_VERSION		:= $(CONFIG_GNU_GDB_VERSION)
GNU_GDB_SITE		:= $(CONFIG_GNU_GDB_URL)
GNU_GDB_GITHUB		:= 
GNU_GDB_SUBNAME		:= 
GNU_GDB_DIR		:= $(srctree)/package/gdb
GNU_GDB_PATCH		:= $(srctree)/package/gdb/patch
GNU_GDB_DEMO		:= $(srctree)/package/gdb/demo.c
GNU_GDB_OUT		:= 
GNU_GDB_SCRIPTS		:= $(srctree)/scripts/package/GNU-package.sh
GNU_GDB_TAR		:= $(CONFIG_GNU_GDB_TAR)
GNU_GDB_PACKAGE		:= 
GNU_GDB_CONFIG		:=
SUB_TARGET		+= $(GNU_GDB_DIR)/build

GNU_GDB_sh = $(CONFIG_SHELL) $(GNU_GDB_SCRIPTS) \
               $1 $(GNU_GDB_NAME)X $(GNU_GDB_VERSION)X \
               $(GNU_GDB_SITE)X $(GNU_GDB_GITHUB)X \
               $(GNU_GDB_PATCH)X 5.0 \
	       $(CONFIG_GNU_GDB_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(GNU_GDB_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(GNU_GDB_SUBNAME)X \
               $(GNU_GDB_CONFIG)X $(CONFIG_GNU_GDB_CONFIG)X \
	       $(CONFIG_GNU_GDB_LDFLAGS) $(CONFIG_GNU_GDB_CFLAGS)

$(GNU_GDB_DIR)/build: FORCE
	$(Q)$(call GNU_GDB_sh,$(srctree))
