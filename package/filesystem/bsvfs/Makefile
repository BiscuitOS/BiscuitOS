bsvfs-$(CONFIG_PK_BSVFS_BASE)		+= basic/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/filesystem/bsvfs/%/Makefile, $(bsvfs-y))

include $(PACKAGE_MAKEDIR)
