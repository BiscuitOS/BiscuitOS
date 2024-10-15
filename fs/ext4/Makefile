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
               $(CONFIG_HW_DMA_BUF)X \
	       $(CONFIG_QEMU_CXL)X \
	       $(CONFIG_HW_CXL)X \
	       $(CONFIG_VIRTIO_BLK_MINIX)X \
	       $(CONFIG_VIRTIO_BLK_EXT4)X \
	       $(CONFIG_VIRTIO_BLK_EXT2)X \
	       $(CONFIG_PSEUDO_TMPFS)X \
	       $(CONFIG_PSEUDO_HUGE_TMPFS)X \
	       $(CONFIG_VIRTIO_BLK_VFAT)X \
	       $(CONFIG_VIRTIO_BLK_EXT3)X \
	       $(CONFIG_VIRTIO_BLK_FAT)X \
	       $(CONFIG_VIRTIO_BLK_BFS)X \
	       $(CONFIG_VIRTIO_BLK_CRAMFS)X \
	       $(CONFIG_VIRTIO_BLK_MSDOS)X \
	       $(CONFIG_VIRTIO_BLK_JFFS2)X \
	       $(CONFIG_VIRTIO_BLK_UBIFS)X \
	       $(CONFIG_VIRTIO_BLK_SQUASHFS)X \
	       $(CONFIG_VIRTIO_BLK_BTRFS)X \
	       $(CONFIG_VIRTIO_BLK_REISERFS)X \
	       $(CONFIG_VIRTIO_BLK_JFS)X \
	       $(CONFIG_VIRTIO_BLK_XFS)X \
	       $(CONFIG_VIRTIO_BLK_GFS2)X \
	       $(CONFIG_VIRTIO_BLK_F2FS)X \
	       $(CONFIG_DIY_DEMSG_LOGLEVEL)X \
	       $(CONFIG_DIY_SWAP)X \
	       $(CONFIG_DIY_ZSWAP)X \
	       $(CONFIG_HW_PMEM)X \
	       $(CONFIG_HW_CXL_TPG_NR)X \
	       $(CONFIG_PK_HMM_TIERED_MEMORY)X \
	       $(CONFIG_HW_NUMA_TPG_NR)X \
	       $(CONFIG_HW_NUMA_HMAT)X \
	       $(CONFIG_HW_AUTO_PK)X \
	       $(CONFIG_HW_CXL_GPU)X \
               MAX_ARG77

# MAX ARGS 73(ARG73 not effect item)

$(EXT4_DIR)/build: FORCE
	$(Q)$(call EXT4_sh,$(srctree))
