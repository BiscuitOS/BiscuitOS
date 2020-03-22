newfstat-$(CONFIG_PK_SYS_NEWFSTAT_C)		+= newfstat_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_newfstat/%/Makefile, $(newfstat-y))

include $(PACKAGE_MAKEDIR)
