setgroups-$(CONFIG_PK_SYS_SETGROUPS_C)		+= setgroups_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_setgroups/%/Makefile, $(setgroups-y))

include $(PACKAGE_MAKEDIR)
