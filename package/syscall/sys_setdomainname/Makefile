setdomainname-$(CONFIG_PK_SYS_SETDOMAINNAME_C)		+= setdomainname_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_setdomainname/%/Makefile, $(setdomainname-y))

include $(PACKAGE_MAKEDIR)
