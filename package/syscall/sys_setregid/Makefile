setregid-$(CONFIG_PK_SYS_SETREGID_C)		+= setregid_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_setregid/%/Makefile, $(setregid-y))

include $(PACKAGE_MAKEDIR)
