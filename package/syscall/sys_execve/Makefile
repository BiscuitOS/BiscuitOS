execve-$(CONFIG_PK_SYS_EXECVE_C)		+= execve_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_execve/%/Makefile, $(execve-y))

include $(PACKAGE_MAKEDIR)
