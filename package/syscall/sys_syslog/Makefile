syslog-$(CONFIG_PK_SYS_SYSLOG_C)		+= syslog_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_syslog/%/Makefile, $(syslog-y))

include $(PACKAGE_MAKEDIR)
