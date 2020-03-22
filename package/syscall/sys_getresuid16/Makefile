getresuid16-$(CONFIG_PK_SYS_GETRESUID16_C)		+= getresuid16_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_getresuid16/%/Makefile, $(getresuid16-y))

include $(PACKAGE_MAKEDIR)
