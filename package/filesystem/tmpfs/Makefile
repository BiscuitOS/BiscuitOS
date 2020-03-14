tmpfs-$(CONFIG_PK_TMPFS_BS)	+= tmpfs_bs/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/filesystem/tmpfs/%/Makefile, $(tmpfs-y))

include $(PACKAGE_MAKEDIR)
