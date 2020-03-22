getuid-$(CONFIG_PK_SYS_GETUID_C)		+= getuid_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_getuid/%/Makefile, $(getuid-y))

include $(PACKAGE_MAKEDIR)
