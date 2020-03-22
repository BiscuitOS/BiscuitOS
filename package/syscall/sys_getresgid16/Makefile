getresgid16-$(CONFIG_PK_SYS_GETRESGID16_C)		+= getresgid16_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_getresgid16/%/Makefile, $(getresgid16-y))

include $(PACKAGE_MAKEDIR)
