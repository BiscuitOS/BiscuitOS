setfsgid16-$(CONFIG_PK_SYS_SETFSGID16_C)		+= setfsgid16_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_setfsgid16/%/Makefile, $(setfsgid16-y))

include $(PACKAGE_MAKEDIR)
