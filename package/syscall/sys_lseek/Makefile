lseek-$(CONFIG_PK_SYS_LSEEK_C)		+= lseek_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_lseek/%/Makefile, $(lseek-y))

include $(PACKAGE_MAKEDIR)
