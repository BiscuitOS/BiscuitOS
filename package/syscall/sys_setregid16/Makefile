setregid16-$(CONFIG_PK_SYS_SETREGID16_C)		+= setregid16_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_setregid16/%/Makefile, $(setregid16-y))

include $(PACKAGE_MAKEDIR)
