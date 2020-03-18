setreuid16-$(CONFIG_PK_SYS_SETREUID16_C)		+= setreuid16_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_setreuid16/%/Makefile, $(setreuid16-y))

include $(PACKAGE_MAKEDIR)
