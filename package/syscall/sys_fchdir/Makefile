fchdir-$(CONFIG_PK_SYS_FCHDIR_C)		+= fchdir_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_fchdir/%/Makefile, $(fchdir-y))

include $(PACKAGE_MAKEDIR)
