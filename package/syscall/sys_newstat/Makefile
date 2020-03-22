newstat-$(CONFIG_PK_SYS_NEWSTAT_C)		+= newstat_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_newstat/%/Makefile, $(newstat-y))

include $(PACKAGE_MAKEDIR)
