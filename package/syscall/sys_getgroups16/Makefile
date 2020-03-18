getgroups16-$(CONFIG_PK_SYS_GETGROUPS16_C)		+= getgroups16_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_getgroups16/%/Makefile, $(getgroups16-y))

include $(PACKAGE_MAKEDIR)
