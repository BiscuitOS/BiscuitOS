getgid16-$(CONFIG_PK_SYS_GETGID16_C)		+= getgid16_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_getgid16/%/Makefile, $(getgid16-y))

include $(PACKAGE_MAKEDIR)
