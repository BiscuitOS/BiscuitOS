getpgid-$(CONFIG_PK_SYS_GETPGID_C)		+= getpgid_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_getpgid/%/Makefile, $(getpgid-y))

include $(PACKAGE_MAKEDIR)
