proc-$(CONFIG_PK_PROC_BS)	+= proc_bs/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/filesystem/proc/%/Makefile, $(proc-y))

include $(PACKAGE_MAKEDIR)
