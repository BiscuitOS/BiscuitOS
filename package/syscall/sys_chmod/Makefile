chmod-$(CONFIG_PK_SYS_CHMOD_C)		+= chmod_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_chmod/%/Makefile, $(chmod-y))

include $(PACKAGE_MAKEDIR)
