newuname-$(CONFIG_PK_SYS_NEWUNAME_C)		+= newuname_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_newuname/%/Makefile, $(newuname-y))

include $(PACKAGE_MAKEDIR)
