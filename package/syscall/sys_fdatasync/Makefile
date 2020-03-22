fdatasync-$(CONFIG_PK_SYS_FDATASYNC_C)		+= fdatasync_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_fdatasync/%/Makefile, $(fdatasync-y))

include $(PACKAGE_MAKEDIR)
