ustat-$(CONFIG_PK_SYS_USTAT_C)		+= ustat_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_ustat/%/Makefile, $(ustat-y))

include $(PACKAGE_MAKEDIR)
