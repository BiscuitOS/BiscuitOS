getuid16-$(CONFIG_PK_SYS_GETUID16_C)		+= getuid16_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_getuid16/%/Makefile, $(getuid16-y))

include $(PACKAGE_MAKEDIR)
