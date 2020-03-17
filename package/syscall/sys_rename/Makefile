rename-$(CONFIG_PK_SYS_RENAME_C)		+= rename_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_rename/%/Makefile, $(rename-y))

include $(PACKAGE_MAKEDIR)
