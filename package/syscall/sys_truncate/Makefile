truncate-$(CONFIG_PK_SYS_TRUNCATE_C)		+= truncate_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_truncate/%/Makefile, $(truncate-y))

include $(PACKAGE_MAKEDIR)
