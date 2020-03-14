filesystem-$(CONFIG_PK_FS_TMPFS)		+= tmpfs/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/filesystem/%/Makefile, $(filesystem-y))

include $(PACKAGE_MAKEDIR)
