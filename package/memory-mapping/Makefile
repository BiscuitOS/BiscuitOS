BiscuitOS-mapping-$(CONFIG_PK_BISCUITOS_MEM_SHARE_MMAP_USERSPACE) 	+= BiscuitOS-memory-share-mmap-userspace/
BiscuitOS-mapping-$(CONFIG_PK_BISCUITOS_MEM_PRIVATE_MMAP_USERSPACE) 	+= BiscuitOS-memory-private-mmap-userspace/
BiscuitOS-mapping-$(CONFIG_PK_BISCUITOS_ANON_SHARE_MMAP_USERSPACE) 	+= BiscuitOS-anonymous-share-mmap-userspace/
BiscuitOS-mapping-$(CONFIG_PK_BISCUITOS_ANON_PRIVATE_MMAP_USERSPACE) 	+= BiscuitOS-anonymous-private-mmap-userspace/
BiscuitOS-mapping-$(CONFIG_PK_BISCUITOS_FILE_SHARE_MMAP_USERSPACE) 	+= BiscuitOS-file-share-mmap-userspace/
BiscuitOS-mapping-$(CONFIG_PK_BISCUITOS_FILE_PRIVATE_MMAP_USERSPACE) 	+= BiscuitOS-file-private-mmap-userspace/
BiscuitOS-mapping-$(CONFIG_PK_BISCUITOS_FILE_MMAP_TMPFS_USERSPACE) 	+= BiscuitOS-file-mmap-tmpfs-userspace/
BiscuitOS-mapping-$(CONFIG_PK_BISCUITOS_FILE_MMAP_EXT2_USERSPACE) 	+= BiscuitOS-file-mmap-ext2-userspace/
BiscuitOS-mapping-$(CONFIG_PK_BISCUITOS_FILE_MMAP_EXT3_USERSPACE) 	+= BiscuitOS-file-mmap-ext3-userspace/
BiscuitOS-mapping-$(CONFIG_PK_BISCUITOS_FILE_MMAP_EXT4_USERSPACE) 	+= BiscuitOS-file-mmap-ext4-userspace/
BiscuitOS-mapping-$(CONFIG_PK_BISCUITOS_FILE_MMAP_MINIX_USERSPACE) 	+= BiscuitOS-file-mmap-minix-userspace/
BiscuitOS-mapping-$(CONFIG_PK_BISCUITOS_FILE_MMAP_VFAT_USERSPACE) 	+= BiscuitOS-file-mmap-vfat-userspace/
BiscuitOS-mapping-$(CONFIG_PK_BISCUITOS_FILE_MMAP_MSDOS_USERSPACE) 	+= BiscuitOS-file-mmap-msdos-userspace/
BiscuitOS-mapping-$(CONFIG_PK_BISCUITOS_HUGE2M_SHARE_MMAP_USERSPACE) 	+= BiscuitOS-hugetlbfs-2M-share-mmap-userspace/
BiscuitOS-mapping-$(CONFIG_PK_BISCUITOS_HUGE2M_PRIVATE_MMAP_USERSPACE) 	+= BiscuitOS-hugetlbfs-2M-private-mmap-userspace/
BiscuitOS-mapping-$(CONFIG_PK_BISCUITOS_HUGE2M_SHARE_ANON_USERSPACE) 	+= BiscuitOS-hugetlbfs-2M-anonymous-share-mmap-userspace/
BiscuitOS-mapping-$(CONFIG_PK_BISCUITOS_HUGE2M_PRIVATE_ANON_USERSPACE) 	+= BiscuitOS-hugetlbfs-2M-anonymous-private-mmap-userspace/
BiscuitOS-mapping-$(CONFIG_PK_BISCUITOS_HUGE1G_SHARE_MMAP_USERSPACE) 	+= BiscuitOS-hugetlbfs-1G-share-mmap-userspace/
BiscuitOS-mapping-$(CONFIG_PK_BISCUITOS_HUGE1G_PRIVATE_MMAP_USERSPACE) 	+= BiscuitOS-hugetlbfs-1G-private-mmap-userspace/
BiscuitOS-mapping-$(CONFIG_PK_BISCUITOS_HUGE1G_SHARE_ANON_USERSPACE) 	+= BiscuitOS-hugetlbfs-1G-anonymous-share-mmap-userspace/
BiscuitOS-mapping-$(CONFIG_PK_BISCUITOS_HUGE1G_PRIVATE_ANON_USERSPACE) 	+= BiscuitOS-hugetlbfs-1G-anonymous-private-mmap-userspace/
BiscuitOS-mapping-$(CONFIG_PK_BISCUITOS_VMA_MERGE) 			+= BiscuitOS-vma-merge/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/memory-mapping/%/Makefile, $(BiscuitOS-mapping-y))

include $(PACKAGE_MAKEDIR)
