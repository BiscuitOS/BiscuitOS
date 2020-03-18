settimeofday-$(CONFIG_PK_SYS_SETTIMEOFDAY_C)		+= settimeofday_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_settimeofday/%/Makefile, $(settimeofday-y))

include $(PACKAGE_MAKEDIR)
