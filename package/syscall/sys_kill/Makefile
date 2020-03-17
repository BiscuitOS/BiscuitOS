kill-$(CONFIG_PK_SYS_KILL_C)		+= kill_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_kill/%/Makefile, $(kill-y))

include $(PACKAGE_MAKEDIR)
