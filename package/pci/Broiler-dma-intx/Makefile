################################################
#
# Broiler-dma-intx
#
################################################
PK_BROILER_DMA_INTX_NAME        := Broiler-dma-intx
PK_BROILER_DMA_INTX_VERSION     := $(CONFIG_PK_BROILER_DMA_INTX_VERSION)
PK_BROILER_DMA_INTX_SITE        := $(CONFIG_PK_BROILER_DMA_INTX_URL)
PK_BROILER_DMA_INTX_GITHUB      := $(CONFIG_PK_BROILER_DMA_INTX_GITHUB)
PK_BROILER_DMA_INTX_SUBNAME     :=
PK_BROILER_DMA_INTX_BUILDARCH   := $(CONFIG_PK_BROILER_DMA_INTX_BUILDARCH)
PK_BROILER_DMA_INTX_DIR         := $(srctree)/package/pci/Broiler-dma-intx
PK_BROILER_DMA_INTX_PATCH       := $(PK_BROILER_DMA_INTX_DIR)/patch
PK_BROILER_DMA_INTX_BSBIT       := Broiler-dma-intx-$(PK_BROILER_DMA_INTX_VERSION).bsbit
PK_BROILER_DMA_INTX_OUT         :=
PK_BROILER_DMA_INTX_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_BROILER_DMA_INTX_TAR         := $(CONFIG_PK_BROILER_DMA_INTX_TAR)
PK_BROILER_DMA_INTX_PACKAGE     :=
PK_BROILER_DMA_INTX_CONFIG      := $(CONFIG_PK_BROILER_DMA_INTX_CONFIG)
SUB_TARGET                  += $(PK_BROILER_DMA_INTX_DIR)/build

PK_BROILER_DMA_INTX_sh = $(CONFIG_SHELL) $(PK_BROILER_DMA_INTX_SCRIPTS) \
                 $1X \
                 $(PK_BROILER_DMA_INTX_NAME)X \
                 $(PK_BROILER_DMA_INTX_VERSION)X \
                 $(PK_BROILER_DMA_INTX_SITE)X \
                 $(PK_BROILER_DMA_INTX_GITHUB)X \
                 $(PK_BROILER_DMA_INTX_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_BROILER_DMA_INTX_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_BROILER_DMA_INTX_SUBNAME)X \
                 $(CONFIG_PK_BROILER_DMA_INTX_CONFIG)X \
                 $(CONFIG_PK_BROILER_DMA_INTX_LIBPATH)X \
                 $(CONFIG_PK_BROILER_DMA_INTX_CPPFLAGS)X \
                 $(CONFIG_PK_BROILER_DMA_INTX_DPKCONFIG)X \
                 $(CONFIG_PK_BROILER_DMA_INTX_CFLAGS)X \
                 $(CONFIG_PK_BROILER_DMA_INTX_LDFLAGS)X \
                 $(CONFIG_PK_BROILER_DMA_INTX_CXXFLAGS)X \
                 $(CONFIG_PK_BROILER_DMA_INTX_ASFLAGS)X \
                 $(PK_BROILER_DMA_INTX_BSBIT)X \
                 $(PK_BROILER_DMA_INTX_BUILDARCH)X \
		 $(PK_BROILER_DMA_INTX_CSRCFILE)X \
                 $(CONFIG_PK_BROILER_DMA_INTX_SRCFILE)X \
                 $(CONFIG_PK_BROILER_DMA_INTX_CSRCFILE)

$(PK_BROILER_DMA_INTX_DIR)/build: FORCE
	$(Q)$(call PK_BROILER_DMA_INTX_sh,$(srctree))
