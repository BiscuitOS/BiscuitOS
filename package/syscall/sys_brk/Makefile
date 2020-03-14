brk-$(CONFIG_PK_SYS_BRK_C)		+= brk_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_brk/%/Makefile, $(brk-y))

include $(PACKAGE_MAKEDIR)
