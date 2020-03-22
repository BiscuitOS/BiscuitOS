getdents-$(CONFIG_PK_SYS_GETDENTS_C)		+= getdents_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_getdents/%/Makefile, $(getdents-y))

include $(PACKAGE_MAKEDIR)
