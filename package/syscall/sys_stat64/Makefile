stat64-$(CONFIG_PK_SYS_STAT64_C)		+= stat64_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_stat64/%/Makefile, $(stat64-y))

include $(PACKAGE_MAKEDIR)
