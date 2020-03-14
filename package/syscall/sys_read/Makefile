read-$(CONFIG_PK_SYS_READ_C)		+= read_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_read/%/Makefile, $(read-y))

include $(PACKAGE_MAKEDIR)
