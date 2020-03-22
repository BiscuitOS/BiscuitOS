setfsuid16-$(CONFIG_PK_SYS_SETFSUID16_C)		+= setfsuid16_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_setfsuid16/%/Makefile, $(setfsuid16-y))

include $(PACKAGE_MAKEDIR)
