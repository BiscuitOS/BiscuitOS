dup-$(CONFIG_PK_SYS_DUP_C)		+= dup_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_dup/%/Makefile, $(dup-y))

include $(PACKAGE_MAKEDIR)
