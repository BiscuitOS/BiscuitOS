sync-$(CONFIG_PK_SYS_SYNC_C)		+= sync_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_sync/%/Makefile, $(sync-y))

include $(PACKAGE_MAKEDIR)
