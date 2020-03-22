vhangup-$(CONFIG_PK_SYS_VHANGUP_C)		+= vhangup_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_vhangup/%/Makefile, $(vhangup-y))

include $(PACKAGE_MAKEDIR)
