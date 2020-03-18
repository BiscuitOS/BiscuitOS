setrlimit-$(CONFIG_PK_SYS_SETRLIMIT_C)		+= setrlimit_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_setrlimit/%/Makefile, $(setrlimit-y))

include $(PACKAGE_MAKEDIR)
