hugetlbfs-$(CONFIG_PK_LIBHUGETLBFS)				+= libhugetlbfs/
hugetlbfs-$(CONFIG_PK_LIBHUGETLBFS_USAGE)			+= BiscuitOS-libhugetlbfs-usage/
hugetlbfs-$(CONFIG_PK_BISCUITOS_HUGE2M_SHARE_MMAP_USERSPACE)    += BiscuitOS-hugetlbfs-2M-share-mmap-userspace/
hugetlbfs-$(CONFIG_PK_BISCUITOS_HUGE2M_PRIVATE_MMAP_USERSPACE)  += BiscuitOS-hugetlbfs-2M-private-mmap-userspace/
hugetlbfs-$(CONFIG_PK_BISCUITOS_HUGE2M_SHARE_ANON_USERSPACE)    += BiscuitOS-hugetlbfs-2M-anonymous-share-mmap-userspace/
hugetlbfs-$(CONFIG_PK_BISCUITOS_HUGE2M_PRIVATE_ANON_USERSPACE)  += BiscuitOS-hugetlbfs-2M-anonymous-private-mmap-userspace/
hugetlbfs-$(CONFIG_PK_BISCUITOS_HUGE1G_SHARE_MMAP_USERSPACE)    += BiscuitOS-hugetlbfs-1G-share-mmap-userspace/
hugetlbfs-$(CONFIG_PK_BISCUITOS_HUGE1G_PRIVATE_MMAP_USERSPACE)  += BiscuitOS-hugetlbfs-1G-private-mmap-userspace/
hugetlbfs-$(CONFIG_PK_BISCUITOS_HUGE1G_SHARE_ANON_USERSPACE)    += BiscuitOS-hugetlbfs-1G-anonymous-share-mmap-userspace/
hugetlbfs-$(CONFIG_PK_BISCUITOS_HUGE1G_PRIVATE_ANON_USERSPACE)  += BiscuitOS-hugetlbfs-1G-anonymous-private-mmap-userspace/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/hugetlbfs/%/Makefile, $(hugetlbfs-y))

include $(PACKAGE_MAKEDIR)
