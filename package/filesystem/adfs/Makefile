adfs-$(CONFIG_PK_ADFS_BS)	+= adfs_bs/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/filesystem/adfs/%/Makefile, $(adfs-y))

include $(PACKAGE_MAKEDIR)
