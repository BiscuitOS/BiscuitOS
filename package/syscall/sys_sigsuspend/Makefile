sigsuspend-$(CONFIG_PK_SYS_SIGSUSPEND_C)		+= sigsuspend_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_sigsuspend/%/Makefile, $(sigsuspend-y))

include $(PACKAGE_MAKEDIR)
