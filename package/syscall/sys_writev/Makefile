writev-$(CONFIG_PK_SYS_WRITEV_C)		+= writev_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_writev/%/Makefile, $(writev-y))

include $(PACKAGE_MAKEDIR)
