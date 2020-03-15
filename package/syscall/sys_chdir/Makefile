chdir-$(CONFIG_PK_SYS_CHDIR_C)		+= chdir_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_chdir/%/Makefile, $(chdir-y))

include $(PACKAGE_MAKEDIR)
