PACKAGE-y                               += base-file/
PACKAGE-$(CONFIG_PACKAGE_DEMO)          += demo/
PACKAGE-$(CONFIG_PACKAGE_GCC)           += gcc/
PACKAGE-$(CONFIG_PACKAGE_UTILS_LINUX)   += utils-linux/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/%/Makefile, $(PACKAGE-y))

include $(PACKAGE_MAKEDIR)
