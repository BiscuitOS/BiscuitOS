sysinfo-$(CONFIG_PK_SYS_SYSINFO_C)		+= sysinfo_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_sysinfo/%/Makefile, $(sysinfo-y))

include $(PACKAGE_MAKEDIR)
