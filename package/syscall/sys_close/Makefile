close-$(CONFIG_PK_SYS_CLOSE_C)		+= close_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_close/%/Makefile, $(close-y))

include $(PACKAGE_MAKEDIR)
