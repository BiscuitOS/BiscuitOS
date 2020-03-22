vfork-$(CONFIG_PK_SYS_VFORK_C)		+= vfork_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_vfork/%/Makefile, $(vfork-y))

include $(PACKAGE_MAKEDIR)
