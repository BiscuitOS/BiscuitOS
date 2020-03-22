llseek-$(CONFIG_PK_SYS_LLSEEK_C)		+= llseek_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_llseek/%/Makefile, $(llseek-y))

include $(PACKAGE_MAKEDIR)
