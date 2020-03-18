uselib-$(CONFIG_PK_SYS_USELIB_C)		+= uselib_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_uselib/%/Makefile, $(uselib-y))

include $(PACKAGE_MAKEDIR)
