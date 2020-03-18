readlink-$(CONFIG_PK_SYS_READLINK_C)		+= readlink_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_readlink/%/Makefile, $(readlink-y))

include $(PACKAGE_MAKEDIR)
