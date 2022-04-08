################################################
#
# BiscuitOS-dma-userland
#
################################################
PK_DMA_USERLAND_NAME        := BiscuitOS-dma-userland
PK_DMA_USERLAND_VERSION     := $(CONFIG_PK_DMA_USERLAND_VERSION)
PK_DMA_USERLAND_SITE        := $(CONFIG_PK_DMA_USERLAND_URL)
PK_DMA_USERLAND_GITHUB      := $(CONFIG_PK_DMA_USERLAND_GITHUB)
PK_DMA_USERLAND_SUBNAME     :=
PK_DMA_USERLAND_BUILDARCH   := $(CONFIG_PK_DMA_USERLAND_BUILDARCH)
PK_DMA_USERLAND_DIR         := $(srctree)/package/pci/BiscuitOS-dma-userland
PK_DMA_USERLAND_PATCH       := $(PK_DMA_USERLAND_DIR)/patch
PK_DMA_USERLAND_BSBIT       := BiscuitOS-dma-userland-$(PK_DMA_USERLAND_VERSION).bsbit
PK_DMA_USERLAND_OUT         :=
PK_DMA_USERLAND_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_DMA_USERLAND_TAR         := $(CONFIG_PK_DMA_USERLAND_TAR)
PK_DMA_USERLAND_PACKAGE     :=
PK_DMA_USERLAND_CONFIG      := $(CONFIG_PK_DMA_USERLAND_CONFIG)
SUB_TARGET                  += $(PK_DMA_USERLAND_DIR)/build

PK_DMA_USERLAND_sh = $(CONFIG_SHELL) $(PK_DMA_USERLAND_SCRIPTS) \
                 $1X \
                 $(PK_DMA_USERLAND_NAME)X \
                 $(PK_DMA_USERLAND_VERSION)X \
                 $(PK_DMA_USERLAND_SITE)X \
                 $(PK_DMA_USERLAND_GITHUB)X \
                 $(PK_DMA_USERLAND_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_DMA_USERLAND_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_DMA_USERLAND_SUBNAME)X \
                 $(CONFIG_PK_DMA_USERLAND_CONFIG)X \
                 $(CONFIG_PK_DMA_USERLAND_LIBPATH)X \
                 $(CONFIG_PK_DMA_USERLAND_CPPFLAGS)X \
                 $(CONFIG_PK_DMA_USERLAND_DPKCONFIG)X \
                 $(CONFIG_PK_DMA_USERLAND_CFLAGS)X \
                 $(CONFIG_PK_DMA_USERLAND_LDFLAGS)X \
                 $(CONFIG_PK_DMA_USERLAND_CXXFLAGS)X \
                 $(CONFIG_PK_DMA_USERLAND_ASFLAGS)X \
                 $(PK_DMA_USERLAND_BSBIT)X \
                 $(PK_DMA_USERLAND_BUILDARCH)X \
		 $(PK_DMA_USERLAND_CSRCFILE)X \
                 $(CONFIG_PK_DMA_USERLAND_SRCFILE)X \
                 $(CONFIG_PK_DMA_USERLAND_CSRCFILE)

$(PK_DMA_USERLAND_DIR)/build: FORCE
	$(Q)$(call PK_DMA_USERLAND_sh,$(srctree))
