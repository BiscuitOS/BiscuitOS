fcntl-$(CONFIG_PK_SYS_FCNTL_C)		+= fcntl_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_fcntl/%/Makefile, $(fcntl-y))

include $(PACKAGE_MAKEDIR)
