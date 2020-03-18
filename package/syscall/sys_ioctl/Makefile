ioctl-$(CONFIG_PK_SYS_IOCTL_C)		+= ioctl_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_ioctl/%/Makefile, $(ioctl-y))

include $(PACKAGE_MAKEDIR)
