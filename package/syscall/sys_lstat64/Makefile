lstat64-$(CONFIG_PK_SYS_LSTAT64_C)		+= lstat64_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_lstat64/%/Makefile, $(lstat64-y))

include $(PACKAGE_MAKEDIR)
