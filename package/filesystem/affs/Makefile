affs-$(CONFIG_PK_AFFS_BS)	+= affs_bs/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/filesystem/affs/%/Makefile, $(affs-y))

include $(PACKAGE_MAKEDIR)
