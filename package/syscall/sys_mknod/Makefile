mknod-$(CONFIG_PK_SYS_MKNOD_C)		+= mknod_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_mknod/%/Makefile, $(mknod-y))

include $(PACKAGE_MAKEDIR)
