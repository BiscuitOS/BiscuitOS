newlstat-$(CONFIG_PK_SYS_NEWLSTAT_C)		+= newlstat_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_newlstat/%/Makefile, $(newlstat-y))

include $(PACKAGE_MAKEDIR)
