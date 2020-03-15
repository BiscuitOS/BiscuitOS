pause-$(CONFIG_PK_SYS_PAUSE_C)		+= pause_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_pause/%/Makefile, $(pause-y))

include $(PACKAGE_MAKEDIR)
