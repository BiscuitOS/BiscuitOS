setitimer-$(CONFIG_PK_SYS_SETITIMER_C)		+= setitimer_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_setitimer/%/Makefile, $(setitimer-y))

include $(PACKAGE_MAKEDIR)
