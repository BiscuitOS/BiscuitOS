getrusage-$(CONFIG_PK_SYS_GETRUSAGE_C)		+= getrusage_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_getrusage/%/Makefile, $(getrusage-y))

include $(PACKAGE_MAKEDIR)
