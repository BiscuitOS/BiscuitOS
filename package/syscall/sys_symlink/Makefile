symlink-$(CONFIG_PK_SYS_SYMLINK_C)		+= symlink_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_symlink/%/Makefile, $(symlink-y))

include $(PACKAGE_MAKEDIR)
