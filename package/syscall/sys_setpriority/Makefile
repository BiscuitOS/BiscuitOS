setpriority-$(CONFIG_PK_SYS_SETPRIORITY_C)		+= setpriority_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_setpriority/%/Makefile, $(setpriority-y))

include $(PACKAGE_MAKEDIR)
