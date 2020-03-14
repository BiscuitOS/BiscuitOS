write-$(CONFIG_PK_SYS_WRITE_C)		+= write_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_write/%/Makefile, $(write-y))

include $(PACKAGE_MAKEDIR)
