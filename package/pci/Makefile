PCI-$(CONFIG_PK_PCI_COMMON_DD)	+= BiscuitOS-pci-device-driver/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/pci/%/Makefile, $(PCI-y))

include $(PACKAGE_MAKEDIR)
