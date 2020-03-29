open-$(CONFIG_PK_SYS_OPEN_C)		+= open_common/
open-$(CONFIG_PK_SYS_OPEN_GETNAME)	+= getname_common/
open-$(CONFIG_PK_SYS_OPEN_NUMBER)	+= number_open_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_open/%/Makefile, $(open-y))

include $(PACKAGE_MAKEDIR)
