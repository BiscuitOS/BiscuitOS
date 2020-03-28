open-$(CONFIG_PK_SYS_OPEN_C)		+= open_common/
open-$(CONFIG_PK_SYS_OPEN_GETNAME)	+= getname_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_open/%/Makefile, $(open-y))

include $(PACKAGE_MAKEDIR)
