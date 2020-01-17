device-tree-$(CONFIG_PK_OF_ADDRESS_TO_RES)	+= of_address_to_resource/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/device-tree/%/Makefile, $(device-tree-y))

include $(PACKAGE_MAKEDIR)
