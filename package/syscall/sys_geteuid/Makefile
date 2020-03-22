geteuid-$(CONFIG_PK_SYS_GETEUID_C)		+= geteuid_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_geteuid/%/Makefile, $(geteuid-y))

include $(PACKAGE_MAKEDIR)
