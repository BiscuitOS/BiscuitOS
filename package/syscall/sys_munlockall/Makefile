munlockall-$(CONFIG_PK_SYS_MUNLOCKALL_C)		+= munlockall_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_munlockall/%/Makefile, $(munlockall-y))

include $(PACKAGE_MAKEDIR)
