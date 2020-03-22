sigprocmask-$(CONFIG_PK_SYS_SIGPROCMASK_C)		+= sigprocmask_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_sigprocmask/%/Makefile, $(sigprocmask-y))

include $(PACKAGE_MAKEDIR)
