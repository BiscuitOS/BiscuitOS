################################################
#
# BiscuitOS-dma-device-QEMU-emulate
#
################################################
PK_DMA_QEMU_EMULATE_NAME        := BiscuitOS-dma-device-QEMU-emulate
PK_DMA_QEMU_EMULATE_VERSION     := $(CONFIG_PK_DMA_QEMU_EMULATE_VERSION)
PK_DMA_QEMU_EMULATE_SITE        := $(CONFIG_PK_DMA_QEMU_EMULATE_URL)
PK_DMA_QEMU_EMULATE_GITHUB      := $(CONFIG_PK_DMA_QEMU_EMULATE_GITHUB)
PK_DMA_QEMU_EMULATE_SUBNAME     :=
PK_DMA_QEMU_EMULATE_BUILDARCH   := $(CONFIG_PK_DMA_QEMU_EMULATE_BUILDARCH)
PK_DMA_QEMU_EMULATE_DIR         := $(srctree)/package/pci/BiscuitOS-dma-device-QEMU-emulate
PK_DMA_QEMU_EMULATE_PATCH       := $(PK_DMA_QEMU_EMULATE_DIR)/patch
PK_DMA_QEMU_EMULATE_BSBIT       := BiscuitOS-dma-device-QEMU-emulate-$(PK_DMA_QEMU_EMULATE_VERSION).bsbit
PK_DMA_QEMU_EMULATE_OUT         :=
PK_DMA_QEMU_EMULATE_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_DMA_QEMU_EMULATE_TAR         := $(CONFIG_PK_DMA_QEMU_EMULATE_TAR)
PK_DMA_QEMU_EMULATE_PACKAGE     :=
PK_DMA_QEMU_EMULATE_CONFIG      := $(CONFIG_PK_DMA_QEMU_EMULATE_CONFIG)
SUB_TARGET                  += $(PK_DMA_QEMU_EMULATE_DIR)/build

PK_DMA_QEMU_EMULATE_sh = $(CONFIG_SHELL) $(PK_DMA_QEMU_EMULATE_SCRIPTS) \
                 $1X \
                 $(PK_DMA_QEMU_EMULATE_NAME)X \
                 $(PK_DMA_QEMU_EMULATE_VERSION)X \
                 $(PK_DMA_QEMU_EMULATE_SITE)X \
                 $(PK_DMA_QEMU_EMULATE_GITHUB)X \
                 $(PK_DMA_QEMU_EMULATE_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_DMA_QEMU_EMULATE_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_DMA_QEMU_EMULATE_SUBNAME)X \
                 $(CONFIG_PK_DMA_QEMU_EMULATE_CONFIG)X \
                 $(CONFIG_PK_DMA_QEMU_EMULATE_LIBPATH)X \
                 $(CONFIG_PK_DMA_QEMU_EMULATE_CPPFLAGS)X \
                 $(CONFIG_PK_DMA_QEMU_EMULATE_DPKCONFIG)X \
                 $(CONFIG_PK_DMA_QEMU_EMULATE_CFLAGS)X \
                 $(CONFIG_PK_DMA_QEMU_EMULATE_LDFLAGS)X \
                 $(CONFIG_PK_DMA_QEMU_EMULATE_CXXFLAGS)X \
                 $(CONFIG_PK_DMA_QEMU_EMULATE_ASFLAGS)X \
                 $(PK_DMA_QEMU_EMULATE_BSBIT)X \
                 $(PK_DMA_QEMU_EMULATE_BUILDARCH)X \
		 $(PK_DMA_QEMU_EMULATE_CSRCFILE)X \
                 $(CONFIG_PK_DMA_QEMU_EMULATE_SRCFILE)X \
                 $(CONFIG_PK_DMA_QEMU_EMULATE_CSRCFILE)

$(PK_DMA_QEMU_EMULATE_DIR)/build: FORCE
	$(Q)$(call PK_DMA_QEMU_EMULATE_sh,$(srctree))
