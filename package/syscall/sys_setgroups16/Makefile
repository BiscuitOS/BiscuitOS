setgroups16-$(CONFIG_PK_SYS_SETGROUPS16_C)		+= setgroups16_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_setgroups16/%/Makefile, $(setgroups16-y))

include $(PACKAGE_MAKEDIR)
