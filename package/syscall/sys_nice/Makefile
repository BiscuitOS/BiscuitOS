nice-$(CONFIG_PK_SYS_NICE_C)		+= nice_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_nice/%/Makefile, $(nice-y))

include $(PACKAGE_MAKEDIR)
