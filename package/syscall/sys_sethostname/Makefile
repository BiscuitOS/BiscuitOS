sethostname-$(CONFIG_PK_SYS_SETHOSTNAME_C)		+= sethostname_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_sethostname/%/Makefile, $(sethostname-y))

include $(PACKAGE_MAKEDIR)
