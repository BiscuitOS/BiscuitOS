Paging32bit-$(CONFIG_PK_PAGING_32BIT_DETECT)	+= Paging-32bit-Detect/
Paging32bit-$(CONFIG_PK_PAGING_32BIT_CR3_K)	+= Paging-32bit-CR3-kernel/
Paging32bit-$(CONFIG_PK_PAGING_32BIT_VMALLOC)	+= Paging-32bit-VMALLOC/
Paging32bit-$(CONFIG_PK_PAGING_32BIT_KMAP)	+= Paging-32bit-KMAP/
Paging32bit-$(CONFIG_PK_PAGING_32BIT_PKMAP)	+= Paging-32bit-PKMAP/
Paging32bit-$(CONFIG_PK_PAGING_32BIT_FIXMAP)	+= Paging-32bit-FIXMAP/
Paging32bit-$(CONFIG_PK_PAGING_32BIT_IO)	+= Paging-32bit-IO/
Paging32bit-$(CONFIG_PK_PAGING_32BIT_PFN)	+= Paging-32bit-PFN/
Paging32bit-$(CONFIG_PK_PAGING_32BIT_LINEAR)	+= Paging-32bit-Linear/
Paging32bit-$(CONFIG_PK_PAGING_32BIT_CR3_U)	+= Paging-32bit-CR3-userspace/
Paging32bit-$(CONFIG_PK_PAGING_32BIT_PGD_K)	+= Paging-32bit-PGD-kernel/
Paging32bit-$(CONFIG_PK_PAGING_32BIT_PGD_U)	+= Paging-32bit-PGD-userspace/
Paging32bit-$(CONFIG_PK_PAGING_32BIT_4K_PAGE_K)	+= Paging-32bit-4K-Page-kernel/
Paging32bit-$(CONFIG_PK_PAGING_32BIT_4K_PAGE_U)	+= Paging-32bit-4K-Page-userspace/
Paging32bit-$(CONFIG_PK_PAGING_32BIT_4M_PAGE_K)	+= Paging-32bit-4M-Page-kernel/
Paging32bit-$(CONFIG_PK_PAGING_32BIT_4M_PAGE_U)	+= Paging-32bit-4M-Page-userspace/
Paging32bit-$(CONFIG_PK_PAGING_32BIT_KERNEL_4K_PAGE)	+= Paging-32bit-Kernel-4K-Page/
Paging32bit-$(CONFIG_PK_PAGING_32BIT_KERNEL_4M_PAGE)	+= Paging-32bit-Kernel-4M-Page/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/paging/Paging-mode-32bit/%/Makefile, $(Paging32bit-y))

include $(PACKAGE_MAKEDIR)
