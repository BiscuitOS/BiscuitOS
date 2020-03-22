fstat64-$(CONFIG_PK_SYS_FSTAT64_C)		+= fstat64_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_fstat64/%/Makefile, $(fstat64-y))

include $(PACKAGE_MAKEDIR)
