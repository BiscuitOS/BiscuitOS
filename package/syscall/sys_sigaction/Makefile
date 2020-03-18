sigaction-$(CONFIG_PK_SYS_SIGACTION_C)		+= sigaction_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_sigaction/%/Makefile, $(sigaction-y))

include $(PACKAGE_MAKEDIR)
