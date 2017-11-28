PACKAGE-y                            += base-file/
PACKAGE-$(CONFIG_PACKAGE_DEMO)       += demo/
PACKAGE-$(CONFIG_PACKAGE_OBJDUMP)    += objdump/
PACKAGE-$(CONFIG_PACKAGE_GNU_BASH)   += bash/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/%/Makefile, $(PACKAGE-y))

include $(PACKAGE_MAKEDIR)
