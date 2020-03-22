setuid-$(CONFIG_PK_SYS_SETUID_C)		+= setuid_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_setuid/%/Makefile, $(setuid-y))

include $(PACKAGE_MAKEDIR)
