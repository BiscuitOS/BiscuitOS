mprotect-$(CONFIG_PK_SYS_MPROTECT_C)		+= mprotect_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_mprotect/%/Makefile, $(mprotect-y))

include $(PACKAGE_MAKEDIR)
