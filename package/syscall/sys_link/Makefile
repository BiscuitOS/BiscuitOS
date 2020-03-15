link-$(CONFIG_PK_SYS_LINK_C)		+= link_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_link/%/Makefile, $(link-y))

include $(PACKAGE_MAKEDIR)
