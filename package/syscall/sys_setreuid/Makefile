setreuid-$(CONFIG_PK_SYS_SETREUID_C)		+= setreuid_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_setreuid/%/Makefile, $(setreuid-y))

include $(PACKAGE_MAKEDIR)
