fsync-$(CONFIG_PK_SYS_FSYNC_C)		+= fsync_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_fsync/%/Makefile, $(fsync-y))

include $(PACKAGE_MAKEDIR)
