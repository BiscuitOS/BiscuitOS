PCI-$(CONFIG_PK_PCI_COMMON_DD)		+= BiscuitOS-pci-device-driver/
PCI-$(CONFIG_PK_PCI_QEMU_EMULATE)	+= BiscuitOS-pci-device-QEMU-emulate/
PCI-$(CONFIG_PK_DMA_USERLAND)		+= BiscuitOS-dma-userland/
PCI-$(CONFIG_PK_DMA_COMMON_DD)		+= BiscuitOS-dma-device-driver/
PCI-$(CONFIG_PK_DMA_QEMU_EMULATE)	+= BiscuitOS-dma-device-QEMU-emulate/
PCI-$(CONFIG_PK_PCI_CFG_IO)		+= BiscuitOS-PCI-Express-Configuration-IO/
PCI-$(CONFIG_PK_PCIUTILS)		+= pciutils/
PCI-$(CONFIG_PK_BROILER_PCI_DD)		+= Broiler-pci-device-driver/
PCI-$(CONFIG_PK_BROILER_PCI_INTX)	+= Broiler-pci-intx-interrupt/
PCI-$(CONFIG_PK_BROILER_PCI_MSI)	+= Broiler-pci-msi-interrupt/
PCI-$(CONFIG_PK_BROILER_PCI_MSIX)	+= Broiler-pci-msix-interrupt/
PCI-$(CONFIG_PK_BROILER_DMA_INTX)	+= Broiler-dma-intx/
PCI-$(CONFIG_PK_BROILER_DMA_MSI)	+= Broiler-dma-msi/
PCI-$(CONFIG_PK_BROILER_DMA_MSIX)	+= Broiler-dma-msix/
PCI-$(CONFIG_PK_PCI_QEMU_DEV_BAR)	+= BiscuitOS-PCI-QEMU-DEVICE-BAR/
PCI-$(CONFIG_PK_PCI_QEMU_DEV_MSI)	+= BiscuitOS-PCI-QEMU-DEVICE-MSI/
PCI-$(CONFIG_PK_PCI_QEMU_DEV_MSIX)	+= BiscuitOS-PCI-QEMU-DEVICE-MSIX/
PCI-$(CONFIG_PK_PCI_QEMU_DEV_INTX)	+= BiscuitOS-PCI-QEMU-DEVICE-INTX/
PCI-$(CONFIG_PK_PCI_DMA_QEMU_DEV_MSIX)	+= BiscuitOS-PCI-DMA-QEMU-DEVICE-MSIX/
PCI-$(CONFIG_PK_PCI_DMA_QEMU_DEV_MSI)	+= BiscuitOS-PCI-DMA-QEMU-DEVICE-MSI/
PCI-$(CONFIG_PK_PCI_DMA_QEMU_DEV_INTX)	+= BiscuitOS-PCI-DMA-QEMU-DEVICE-INTX/
PCI-$(CONFIG_PK_PCI_DMABUF_QEMU_DEV)	+= BiscuitOS-PCI-DMA-BUF-QEMU-DEVICE/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/pci/%/Makefile, $(PCI-y))

include $(PACKAGE_MAKEDIR)
