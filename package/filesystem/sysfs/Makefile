sysfs-$(CONFIG_PK_FS_KERNFS_MOD)	+= sysfs_module/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/filesystem/sysfs/%/Makefile, $(sysfs-y))

include $(PACKAGE_MAKEDIR)
