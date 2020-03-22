truncate64-$(CONFIG_PK_SYS_TRUNCATE64_C)		+= truncate64_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_truncate64/%/Makefile, $(truncate64-y))

include $(PACKAGE_MAKEDIR)
