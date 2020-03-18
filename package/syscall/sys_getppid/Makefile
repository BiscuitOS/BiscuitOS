getppid-$(CONFIG_PK_SYS_GETPPID_C)		+= getppid_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_getppid/%/Makefile, $(getppid-y))

include $(PACKAGE_MAKEDIR)
