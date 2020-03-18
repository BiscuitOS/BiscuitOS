umask-$(CONFIG_PK_SYS_UMASK_C)		+= umask_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_umask/%/Makefile, $(umask-y))

include $(PACKAGE_MAKEDIR)
