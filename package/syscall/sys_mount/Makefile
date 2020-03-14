mount-$(CONFIG_PK_SYS_MOUNT_C)		+= mount_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_mount/%/Makefile, $(mount-y))

include $(PACKAGE_MAKEDIR)
