flock-$(CONFIG_PK_SYS_FLOCK_C)		+= flock_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_flock/%/Makefile, $(flock-y))

include $(PACKAGE_MAKEDIR)
