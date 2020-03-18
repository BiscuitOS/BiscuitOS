dup2-$(CONFIG_PK_SYS_DUP2_C)		+= dup2_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_dup2/%/Makefile, $(dup2-y))

include $(PACKAGE_MAKEDIR)
