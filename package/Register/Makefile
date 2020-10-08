Register-$(CONFIG_PK_REGISTER_X86)	+= x86/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/Register/%/Makefile, $(Register-y))

include $(PACKAGE_MAKEDIR)
