acct-$(CONFIG_PK_SYS_ACCT_C)		+= acct_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_acct/%/Makefile, $(acct-y))

include $(PACKAGE_MAKEDIR)
