getgroups-$(CONFIG_PK_SYS_GETGROUPS_C)		+= getgroups_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_getgroups/%/Makefile, $(getgroups-y))

include $(PACKAGE_MAKEDIR)
