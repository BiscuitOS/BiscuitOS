chown16-$(CONFIG_PK_SYS_CHOWN16_C)		+= chown16_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_chown16/%/Makefile, $(chown16-y))

include $(PACKAGE_MAKEDIR)
