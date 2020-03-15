getpid-$(CONFIG_PK_SYS_GETPID_C)		+= getpid_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_getpid/%/Makefile, $(getpid-y))

include $(PACKAGE_MAKEDIR)
