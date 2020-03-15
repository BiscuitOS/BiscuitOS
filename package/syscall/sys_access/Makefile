access-$(CONFIG_PK_SYS_ACCESS_C)		+= access_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_access/%/Makefile, $(access-y))

include $(PACKAGE_MAKEDIR)
