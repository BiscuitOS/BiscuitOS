exit-$(CONFIG_PK_SYS_EXIT_C)		+= exit_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_exit/%/Makefile, $(exit-y))

include $(PACKAGE_MAKEDIR)
