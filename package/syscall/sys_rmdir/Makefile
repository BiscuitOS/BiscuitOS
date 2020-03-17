rmdir-$(CONFIG_PK_SYS_RMDIR_C)		+= rmdir_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_rmdir/%/Makefile, $(rmdir-y))

include $(PACKAGE_MAKEDIR)
