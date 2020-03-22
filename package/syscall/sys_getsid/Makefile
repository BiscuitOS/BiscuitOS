getsid-$(CONFIG_PK_SYS_GETSID_C)		+= getsid_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_getsid/%/Makefile, $(getsid-y))

include $(PACKAGE_MAKEDIR)
