PACKAGE-y                            += base-file/
PACKAGE-$(CONFIG_PACKAGE_DEMO)       += demo/
PACKAGE-$(CONFIG_PACKAGE_OBJDUMP)    += objdump/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/%/Makefile, $(PACKAGE-y))

include $(PACKAGE_MAKEDIR)
