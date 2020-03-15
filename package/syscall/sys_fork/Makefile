fork-$(CONFIG_PK_SYS_FORK_C)		+= fork_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_fork/%/Makefile, $(fork-y))

include $(PACKAGE_MAKEDIR)
