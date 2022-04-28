PCI-$(CONFIG_PK_PCI_COMMON_DD)		+= BiscuitOS-pci-device-driver/
PCI-$(CONFIG_PK_PCI_QEMU_EMULATE)	+= BiscuitOS-pci-device-QEMU-emulate/
PCI-$(CONFIG_PK_DMA_USERLAND)		+= BiscuitOS-dma-userland/
PCI-$(CONFIG_PK_DMA_COMMON_DD)		+= BiscuitOS-dma-device-driver/
PCI-$(CONFIG_PK_DMA_QEMU_EMULATE)	+= BiscuitOS-dma-device-QEMU-emulate/
PCI-$(CONFIG_PK_PCI_CFG_IO)		+= BiscuitOS-PCI-Express-Configuration-IO/
PCI-$(CONFIG_PK_PCIUTILS)		+= pciutils/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/pci/%/Makefile, $(PCI-y))

include $(PACKAGE_MAKEDIR)
