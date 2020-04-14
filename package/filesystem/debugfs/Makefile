debugfs-$(CONFIG_PK_DEBUGFS_BS)	+= debugfs_bs/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/filesystem/debugfs/%/Makefile, $(debugfs-y))

include $(PACKAGE_MAKEDIR)
