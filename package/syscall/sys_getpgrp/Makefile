getpgrp-$(CONFIG_PK_SYS_GETPGRP_C)		+= getpgrp_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_getpgrp/%/Makefile, $(getpgrp-y))

include $(PACKAGE_MAKEDIR)
