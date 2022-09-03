################################################
#
# Broiler-dma-msi
#
################################################
PK_BROILER_DMA_MSI_NAME        := Broiler-dma-msi
PK_BROILER_DMA_MSI_VERSION     := $(CONFIG_PK_BROILER_DMA_MSI_VERSION)
PK_BROILER_DMA_MSI_SITE        := $(CONFIG_PK_BROILER_DMA_MSI_URL)
PK_BROILER_DMA_MSI_GITHUB      := $(CONFIG_PK_BROILER_DMA_MSI_GITHUB)
PK_BROILER_DMA_MSI_SUBNAME     :=
PK_BROILER_DMA_MSI_BUILDARCH   := $(CONFIG_PK_BROILER_DMA_MSI_BUILDARCH)
PK_BROILER_DMA_MSI_DIR         := $(srctree)/package/pci/Broiler-dma-msi
PK_BROILER_DMA_MSI_PATCH       := $(PK_BROILER_DMA_MSI_DIR)/patch
PK_BROILER_DMA_MSI_BSBIT       := Broiler-dma-msi-$(PK_BROILER_DMA_MSI_VERSION).bsbit
PK_BROILER_DMA_MSI_OUT         :=
PK_BROILER_DMA_MSI_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_BROILER_DMA_MSI_TAR         := $(CONFIG_PK_BROILER_DMA_MSI_TAR)
PK_BROILER_DMA_MSI_PACKAGE     :=
PK_BROILER_DMA_MSI_CONFIG      := $(CONFIG_PK_BROILER_DMA_MSI_CONFIG)
SUB_TARGET                  += $(PK_BROILER_DMA_MSI_DIR)/build

PK_BROILER_DMA_MSI_sh = $(CONFIG_SHELL) $(PK_BROILER_DMA_MSI_SCRIPTS) \
                 $1X \
                 $(PK_BROILER_DMA_MSI_NAME)X \
                 $(PK_BROILER_DMA_MSI_VERSION)X \
                 $(PK_BROILER_DMA_MSI_SITE)X \
                 $(PK_BROILER_DMA_MSI_GITHUB)X \
                 $(PK_BROILER_DMA_MSI_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_BROILER_DMA_MSI_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_BROILER_DMA_MSI_SUBNAME)X \
                 $(CONFIG_PK_BROILER_DMA_MSI_CONFIG)X \
                 $(CONFIG_PK_BROILER_DMA_MSI_LIBPATH)X \
                 $(CONFIG_PK_BROILER_DMA_MSI_CPPFLAGS)X \
                 $(CONFIG_PK_BROILER_DMA_MSI_DPKCONFIG)X \
                 $(CONFIG_PK_BROILER_DMA_MSI_CFLAGS)X \
                 $(CONFIG_PK_BROILER_DMA_MSI_LDFLAGS)X \
                 $(CONFIG_PK_BROILER_DMA_MSI_CXXFLAGS)X \
                 $(CONFIG_PK_BROILER_DMA_MSI_ASFLAGS)X \
                 $(PK_BROILER_DMA_MSI_BSBIT)X \
                 $(PK_BROILER_DMA_MSI_BUILDARCH)X \
		 $(PK_BROILER_DMA_MSI_CSRCFILE)X \
                 $(CONFIG_PK_BROILER_DMA_MSI_SRCFILE)X \
                 $(CONFIG_PK_BROILER_DMA_MSI_CSRCFILE)

$(PK_BROILER_DMA_MSI_DIR)/build: FORCE
	$(Q)$(call PK_BROILER_DMA_MSI_sh,$(srctree))
