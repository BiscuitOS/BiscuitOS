munlock-$(CONFIG_PK_SYS_MUNLOCK_C)		+= munlock_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_munlock/%/Makefile, $(munlock-y))

include $(PACKAGE_MAKEDIR)
