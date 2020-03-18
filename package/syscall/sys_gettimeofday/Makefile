gettimeofday-$(CONFIG_PK_SYS_GETTIMEOFDAY_C)		+= gettimeofday_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_gettimeofday/%/Makefile, $(gettimeofday-y))

include $(PACKAGE_MAKEDIR)
