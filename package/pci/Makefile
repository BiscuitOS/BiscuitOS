PCI-$(CONFIG_PK_PCI_COMMON_DD)		+= BiscuitOS-pci-device-driver/
PCI-$(CONFIG_PK_PCI_QEMU_EMULATE)	+= BiscuitOS-pci-device-QEMU-emulate/
PCI-$(CONFIG_PK_PCI_CFG_IO)		+= BiscuitOS-PCI-Express-Configuration-IO/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/pci/%/Makefile, $(PCI-y))

include $(PACKAGE_MAKEDIR)
