unlink-$(CONFIG_PK_SYS_UNLINK_C)		+= unlink_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_unlink/%/Makefile, $(unlink-y))

include $(PACKAGE_MAKEDIR)
