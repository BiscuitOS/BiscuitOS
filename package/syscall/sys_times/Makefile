times-$(CONFIG_PK_SYS_TIMES_C)		+= times_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_times/%/Makefile, $(times-y))

include $(PACKAGE_MAKEDIR)
