setgid-$(CONFIG_PK_SYS_SETGID_C)		+= setgid_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_setgid/%/Makefile, $(setgid-y))

include $(PACKAGE_MAKEDIR)
