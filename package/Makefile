PACKAGE-y                               += binutils/
PACKAGE-$(CONFIG_PACKAGE_GCC)           += gcc/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/%/Makefile, $(PACKAGE-y))

include $(PACKAGE_MAKEDIR)
