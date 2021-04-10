paging-$(CONFIG_PK_PTE_PAGE_PRESENT_KERNEL)	+= PTE-PAGE_PRESENT-kernel/
paging-$(CONFIG_PK_PTE_PAGE_PRESENT_USERSPACE)	+= PTE-PAGE_PRESENT-userspace/
paging-$(CONFIG_PK_PTE_PAGE_RW_KERNEL)		+= PTE-PAGE_RW-kernel/
paging-$(CONFIG_PK_PTE_PAGE_RW_USERSPACE_RW)	+= PTE-PAGE_RW-userspace-rw/
paging-$(CONFIG_PK_PTE_PAGE_RW_USERSPACE_RO)	+= PTE-PAGE_RW-userspace-ro/
paging-$(CONFIG_PK_PTE_PAGE_RW_USERSPACE_WO)	+= PTE-PAGE_RW-userspace-wo/
paging-$(CONFIG_PK_PTE_PAGE_RW_USERSPACE_NONE)	+= PTE-PAGE_RW-userspace-none/
paging-$(CONFIG_PK_PTE_PAGE_USER_U_USERSPACE)	+= PTE-PAGE_USER-U-userspace/
paging-$(CONFIG_PK_PTE_PAGE_USER_U_KERNEL)	+= PTE-PAGE_USER-U-kernel/
paging-$(CONFIG_PK_PTE_PAGE_USER_S)		+= PTE-PAGE_USER-S/
paging-$(CONFIG_PK_PTE_PAGE_ACCESSED_USERSPACE)	+= PTE-PAGE_ACCESSED-userspace/
paging-$(CONFIG_PK_PTE_PAGE_ACCESSED_KERNEL)	+= PTE-PAGE_ACCESSED-kernel/
paging-$(CONFIG_PK_PTE_PAGE_DIRTY_USERSPACE)	+= PTE-PAGE_DIRTY-userspace/
paging-$(CONFIG_PK_PTE_PAGE_DIRTY_KERNEL)	+= PTE-PAGE_DIRTY-kernel/
paging-$(CONFIG_PK_SWAP_KERNEL)			+= BiscuitOS-SWAP-kernel/
paging-$(CONFIG_PK_SWAP_USERSPACE)		+= BiscuitOS-SWAP-userspace/
paging-$(CONFIG_PK_COMPACT_KERNEL)		+= BiscuitOS-Compact-kernel/
paging-$(CONFIG_PK_COMPACT_USERSPACE)		+= BiscuitOS-Compact-userspace/
paging-$(CONFIG_PK_PAGING_USER_ADDR_KERNEL)	+= BiscuitOS-Paging-userspace-address-kernel/
paging-$(CONFIG_PK_PAGING_USER_ADDR_USERSPACE)	+= BiscuitOS-Paging-userspace-address-userspace/
paging-$(CONFIG_PK_PAGING_4K_PAGE_KERNEL)	+= BiscuitOS-Paging-4K-Page-kernel/
paging-$(CONFIG_PK_PAGING_4K_PAGE_USERSPACE)	+= BiscuitOS-Paging-4K-Page-userspace/
paging-$(CONFIG_PK_PAGING_KERNEL_ADDR)		+= BiscuitOS-Paging-kernel-address/
paging-$(CONFIG_PK_PAGING_MODE)			+= Paging-mode/
paging-$(CONFIG_PK_PAGING_MODE_32BIT)		+= Paging-mode-32bit/
paging-$(CONFIG_PK_PAGING_MODE_PAE)		+= Paging-mode-PAE/
paging-$(CONFIG_PK_PAGING_MODE_4LEVEL)		+= Paging-mode-4level/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/paging/%/Makefile, $(paging-y))

include $(PACKAGE_MAKEDIR)
