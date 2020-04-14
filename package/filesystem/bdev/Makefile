bdev-$(CONFIG_PK_BDEV_BS)	+= bdev_bs/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/filesystem/bdev/%/Makefile, $(bdev-y))

include $(PACKAGE_MAKEDIR)
