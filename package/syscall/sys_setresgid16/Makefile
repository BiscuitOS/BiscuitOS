setresgid16-$(CONFIG_PK_SYS_SETRESGID16_C)		+= setresgid16_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_setresgid16/%/Makefile, $(setresgid16-y))

include $(PACKAGE_MAKEDIR)
