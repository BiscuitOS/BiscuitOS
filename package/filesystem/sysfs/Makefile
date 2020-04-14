sysfs-$(CONFIG_PK_SYSFS_BS)	+= sysfs_bs/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/filesystem/sysfs/%/Makefile, $(sysfs-y))

include $(PACKAGE_MAKEDIR)
