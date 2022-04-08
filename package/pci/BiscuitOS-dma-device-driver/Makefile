################################################
#
# BiscuitOS-dma-device-driver
#
################################################
PK_DMA_COMMON_DD_NAME        := BiscuitOS-dma-device-driver
PK_DMA_COMMON_DD_VERSION     := $(CONFIG_PK_DMA_COMMON_DD_VERSION)
PK_DMA_COMMON_DD_SITE        := $(CONFIG_PK_DMA_COMMON_DD_URL)
PK_DMA_COMMON_DD_GITHUB      := $(CONFIG_PK_DMA_COMMON_DD_GITHUB)
PK_DMA_COMMON_DD_SUBNAME     :=
PK_DMA_COMMON_DD_BUILDARCH   := $(CONFIG_PK_DMA_COMMON_DD_BUILDARCH)
PK_DMA_COMMON_DD_DIR         := $(srctree)/package/pci/BiscuitOS-dma-device-driver
PK_DMA_COMMON_DD_PATCH       := $(PK_DMA_COMMON_DD_DIR)/patch
PK_DMA_COMMON_DD_BSBIT       := BiscuitOS-dma-device-driver-$(PK_DMA_COMMON_DD_VERSION).bsbit
PK_DMA_COMMON_DD_OUT         :=
PK_DMA_COMMON_DD_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_DMA_COMMON_DD_TAR         := $(CONFIG_PK_DMA_COMMON_DD_TAR)
PK_DMA_COMMON_DD_PACKAGE     :=
PK_DMA_COMMON_DD_CONFIG      := $(CONFIG_PK_DMA_COMMON_DD_CONFIG)
SUB_TARGET                  += $(PK_DMA_COMMON_DD_DIR)/build

PK_DMA_COMMON_DD_sh = $(CONFIG_SHELL) $(PK_DMA_COMMON_DD_SCRIPTS) \
                 $1X \
                 $(PK_DMA_COMMON_DD_NAME)X \
                 $(PK_DMA_COMMON_DD_VERSION)X \
                 $(PK_DMA_COMMON_DD_SITE)X \
                 $(PK_DMA_COMMON_DD_GITHUB)X \
                 $(PK_DMA_COMMON_DD_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_DMA_COMMON_DD_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_DMA_COMMON_DD_SUBNAME)X \
                 $(CONFIG_PK_DMA_COMMON_DD_CONFIG)X \
                 $(CONFIG_PK_DMA_COMMON_DD_LIBPATH)X \
                 $(CONFIG_PK_DMA_COMMON_DD_CPPFLAGS)X \
                 $(CONFIG_PK_DMA_COMMON_DD_DPKCONFIG)X \
                 $(CONFIG_PK_DMA_COMMON_DD_CFLAGS)X \
                 $(CONFIG_PK_DMA_COMMON_DD_LDFLAGS)X \
                 $(CONFIG_PK_DMA_COMMON_DD_CXXFLAGS)X \
                 $(CONFIG_PK_DMA_COMMON_DD_ASFLAGS)X \
                 $(PK_DMA_COMMON_DD_BSBIT)X \
                 $(PK_DMA_COMMON_DD_BUILDARCH)X \
		 $(PK_DMA_COMMON_DD_CSRCFILE)X \
                 $(CONFIG_PK_DMA_COMMON_DD_SRCFILE)X \
                 $(CONFIG_PK_DMA_COMMON_DD_CSRCFILE)

$(PK_DMA_COMMON_DD_DIR)/build: FORCE
	$(Q)$(call PK_DMA_COMMON_DD_sh,$(srctree))
