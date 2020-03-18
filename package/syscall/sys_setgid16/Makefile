setgid16-$(CONFIG_PK_SYS_SETGID16_C)		+= setgid16_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_setgid16/%/Makefile, $(setgid16-y))

include $(PACKAGE_MAKEDIR)
