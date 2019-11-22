filesystem-$(CONFIG_PK_FS_KERNFS)		+= kernfs/
filesystem-$(CONFIG_PK_FS_SYSFS)		+= sysfs/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/filesystem/%/Makefile, $(filesystem-y))

include $(PACKAGE_MAKEDIR)
