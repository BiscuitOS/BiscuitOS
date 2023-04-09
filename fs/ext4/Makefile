################################################
#
# Ext4 filesystem
#
################################################
EXT4_NAME       := ext4
EXT4_VERSION    := $(CONFIG_EXT4_VERSION)
EXT4_SITE       := $(CONFIG_EXT4_WGET_SITE)
EXT4_GITHUB     := $(EXT4_GITHUB_SITE)
EXT4_SUBNAME    := $(CONFIG_EXT4_DL_NAME)
EXT4_DIR        := $(srctree)/fs/ext4
EXT4_PATCH      := $(srctree)/fs/ext4/patch
EXT4_OUT        := 
EXT4_SCRIPTS    := $(srctree)/scripts/fs/rootfs.sh
EXT4_TAR        := $(CONFIG_EXT4_TAR_TYPE)
EXT4_PACKAGE    := 
SUB_TARGET      += $(EXT4_DIR)/build

EXT4_sh = $(CONFIG_SHELL) $(EXT4_SCRIPTS) \
               ${1}X \
               $(EXT4_NAME)X \
               $(EXT4_VERSION)X \
               $(EXT4_SITE)X \
               $(EXT4_GITHUB)X \
               $(EXT4_PATCH)X \
               $(CONFIG_LINUX_KERNEL_VERSION)X \
	       $(CONFIG_EXT4_SRC)X \
               $(CONFIG_MAIN_PROJ_NAME)X \
               $(EXT4_TAR)X \
               $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
               $(EXT4_SUBNAME)X \
               $(CONFIG_LINUX_BUILD_HIST)X \
               $(CONFIG_UBOOT)X \
               $(CONFIG_UBOOT_CROSS_COMPILE)X \
               $(CONFIG_ROOTFS_SIZE)X \
               $(CONFIG_FREEZE_SIZE)X \
               $(CONFIG_PK_BROILER_SYSTEM)X \
               $(CONFIG_PK_QEMU_SYSTEM)X \
               $(CONFIG_PK_NUMA)X \
               $(CONFIG_PK_KVM)X \
               ARG_23 \
               ARG_24 \
               ARG_25 \
               $(CONFIG_DIY_MEMORY)X \
               $(CONFIG_DIY_MEMORY_SLOTS)X \
               $(CONFIG_DIY_MEMORY_MAX)X \
               $(CONFIG_DIY_ROOTFS_SIZE)X \
               $(CONFIG_DIY_CPU_NUMBER)X \
               $(CONFIG_DIY_CMDLINE)X \
               $(CONFIG_DIY_NUMA)X \
               $(CONFIG_DIY_CPU_SOCKET)X \
               $(CONFIG_DIY_CPU_I440FX)X \
               $(CONFIG_DIY_CPU_Q35)X \
               $(CONFIG_DIY_VIOMMU)X \
               $(CONFIG_HW_PCI_BAR)X \
               $(CONFIG_HW_PCI_INTX)X \
               $(CONFIG_HW_PCI_MSI)X \
               $(CONFIG_HW_PCI_MSIX)X \
               $(CONFIG_HW_PCI_DMA_INTX)X \
               $(CONFIG_HW_PCI_DMA_MSI)X \
               $(CONFIG_HW_PCI_DMA_MSIX)X \
               MAX_ARG44

# MAX ARGS 30

$(EXT4_DIR)/build: FORCE
	$(Q)$(call EXT4_sh,$(srctree))
