getpriority-$(CONFIG_PK_SYS_GETPRIORITY_C)		+= getpriority_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_getpriority/%/Makefile, $(getpriority-y))

include $(PACKAGE_MAKEDIR)
