IOMMU-$(CONFIG_PK_IOMMU_PCI_DMA_MSIX)		+= BiscuitOS-IOMMU-PCI-DMA-MSIX/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/IOMMU/%/Makefile, $(IOMMU-y))

include $(PACKAGE_MAKEDIR)
