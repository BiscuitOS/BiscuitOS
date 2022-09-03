################################################
#
# Broiler-dma-msix
#
################################################
PK_BROILER_DMA_MSIX_NAME        := Broiler-dma-msix
PK_BROILER_DMA_MSIX_VERSION     := $(CONFIG_PK_BROILER_DMA_MSIX_VERSION)
PK_BROILER_DMA_MSIX_SITE        := $(CONFIG_PK_BROILER_DMA_MSIX_URL)
PK_BROILER_DMA_MSIX_GITHUB      := $(CONFIG_PK_BROILER_DMA_MSIX_GITHUB)
PK_BROILER_DMA_MSIX_SUBNAME     :=
PK_BROILER_DMA_MSIX_BUILDARCH   := $(CONFIG_PK_BROILER_DMA_MSIX_BUILDARCH)
PK_BROILER_DMA_MSIX_DIR         := $(srctree)/package/pci/Broiler-dma-msix
PK_BROILER_DMA_MSIX_PATCH       := $(PK_BROILER_DMA_MSIX_DIR)/patch
PK_BROILER_DMA_MSIX_BSBIT       := Broiler-dma-msix-$(PK_BROILER_DMA_MSIX_VERSION).bsbit
PK_BROILER_DMA_MSIX_OUT         :=
PK_BROILER_DMA_MSIX_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_BROILER_DMA_MSIX_TAR         := $(CONFIG_PK_BROILER_DMA_MSIX_TAR)
PK_BROILER_DMA_MSIX_PACKAGE     :=
PK_BROILER_DMA_MSIX_CONFIG      := $(CONFIG_PK_BROILER_DMA_MSIX_CONFIG)
SUB_TARGET                  += $(PK_BROILER_DMA_MSIX_DIR)/build

PK_BROILER_DMA_MSIX_sh = $(CONFIG_SHELL) $(PK_BROILER_DMA_MSIX_SCRIPTS) \
                 $1X \
                 $(PK_BROILER_DMA_MSIX_NAME)X \
                 $(PK_BROILER_DMA_MSIX_VERSION)X \
                 $(PK_BROILER_DMA_MSIX_SITE)X \
                 $(PK_BROILER_DMA_MSIX_GITHUB)X \
                 $(PK_BROILER_DMA_MSIX_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_BROILER_DMA_MSIX_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_BROILER_DMA_MSIX_SUBNAME)X \
                 $(CONFIG_PK_BROILER_DMA_MSIX_CONFIG)X \
                 $(CONFIG_PK_BROILER_DMA_MSIX_LIBPATH)X \
                 $(CONFIG_PK_BROILER_DMA_MSIX_CPPFLAGS)X \
                 $(CONFIG_PK_BROILER_DMA_MSIX_DPKCONFIG)X \
                 $(CONFIG_PK_BROILER_DMA_MSIX_CFLAGS)X \
                 $(CONFIG_PK_BROILER_DMA_MSIX_LDFLAGS)X \
                 $(CONFIG_PK_BROILER_DMA_MSIX_CXXFLAGS)X \
                 $(CONFIG_PK_BROILER_DMA_MSIX_ASFLAGS)X \
                 $(PK_BROILER_DMA_MSIX_BSBIT)X \
                 $(PK_BROILER_DMA_MSIX_BUILDARCH)X \
		 $(PK_BROILER_DMA_MSIX_CSRCFILE)X \
                 $(CONFIG_PK_BROILER_DMA_MSIX_SRCFILE)X \
                 $(CONFIG_PK_BROILER_DMA_MSIX_CSRCFILE)

$(PK_BROILER_DMA_MSIX_DIR)/build: FORCE
	$(Q)$(call PK_BROILER_DMA_MSIX_sh,$(srctree))
