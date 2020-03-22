getitimer-$(CONFIG_PK_SYS_GETITIMER_C)		+= getitimer_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_getitimer/%/Makefile, $(getitimer-y))

include $(PACKAGE_MAKEDIR)
