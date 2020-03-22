fchmod-$(CONFIG_PK_SYS_FCHMOD_C)		+= fchmod_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_fchmod/%/Makefile, $(fchmod-y))

include $(PACKAGE_MAKEDIR)
