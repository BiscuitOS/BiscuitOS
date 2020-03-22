mlock-$(CONFIG_PK_SYS_MLOCK_C)		+= mlock_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_mlock/%/Makefile, $(mlock-y))

include $(PACKAGE_MAKEDIR)
