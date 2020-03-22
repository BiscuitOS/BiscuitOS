getgid-$(CONFIG_PK_SYS_GETGID_C)		+= getgid_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_getgid/%/Makefile, $(getgid-y))

include $(PACKAGE_MAKEDIR)
