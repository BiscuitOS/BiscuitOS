getrlimit-$(CONFIG_PK_SYS_GETRLIMIT_C)		+= getrlimit_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_getrlimit/%/Makefile, $(getrlimit-y))

include $(PACKAGE_MAKEDIR)
