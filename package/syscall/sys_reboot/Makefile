reboot-$(CONFIG_PK_SYS_REBOOT_C)		+= reboot_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_reboot/%/Makefile, $(reboot-y))

include $(PACKAGE_MAKEDIR)
