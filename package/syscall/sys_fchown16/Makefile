fchown16-$(CONFIG_PK_SYS_FCHOWN16_C)		+= fchown16_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_fchown16/%/Makefile, $(fchown16-y))

include $(PACKAGE_MAKEDIR)
