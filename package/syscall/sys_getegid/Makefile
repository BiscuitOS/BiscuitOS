getegid-$(CONFIG_PK_SYS_GETEGID_C)		+= getegid_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_getegid/%/Makefile, $(getegid-y))

include $(PACKAGE_MAKEDIR)
