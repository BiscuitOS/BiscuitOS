setresuid16-$(CONFIG_PK_SYS_SETRESUID16_C)		+= setresuid16_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_setresuid16/%/Makefile, $(setresuid16-y))

include $(PACKAGE_MAKEDIR)
