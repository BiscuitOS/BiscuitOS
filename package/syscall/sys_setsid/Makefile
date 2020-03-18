setsid-$(CONFIG_PK_SYS_SETSID_C)		+= setsid_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_setsid/%/Makefile, $(setsid-y))

include $(PACKAGE_MAKEDIR)
