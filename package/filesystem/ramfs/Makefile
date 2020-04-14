ramfs-$(CONFIG_PK_RAMFS_BS)	+= ramfs_bs/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/filesystem/ramfs/%/Makefile, $(ramfs-y))

include $(PACKAGE_MAKEDIR)
