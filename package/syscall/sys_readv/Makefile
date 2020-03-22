readv-$(CONFIG_PK_SYS_READV_C)		+= readv_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_readv/%/Makefile, $(readv-y))

include $(PACKAGE_MAKEDIR)
