kernfs-$(CONFIG_PK_FS_KERNFS_MOD)	+= kernfs_module/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/filesystem/kernfs/%/Makefile, $(kernfs-y))

include $(PACKAGE_MAKEDIR)
