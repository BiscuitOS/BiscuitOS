creat-$(CONFIG_PK_SYS_CREAT_C)		+= creat_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_creat/%/Makefile, $(creat-y))

include $(PACKAGE_MAKEDIR)
