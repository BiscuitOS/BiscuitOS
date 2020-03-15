setuid16-$(CONFIG_PK_SYS_SETUID16_C)		+= setuid16_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_setuid16/%/Makefile, $(setuid16-y))

include $(PACKAGE_MAKEDIR)
