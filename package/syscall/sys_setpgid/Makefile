setpgid-$(CONFIG_PK_SYS_SETPGID_C)		+= setpgid_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_setpgid/%/Makefile, $(setpgid-y))

include $(PACKAGE_MAKEDIR)
