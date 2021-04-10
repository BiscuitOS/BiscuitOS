BiscuitOS-mapping-$(CONFIG_PK_BISCUITOS_MMAP_USERSPACE) 	+= BiscuitOS-mmap-userspace/
BiscuitOS-mapping-$(CONFIG_PK_BISCUITOS_ANONMMAP_USERSPACE) 	+= BiscuitOS-anonymous-mmap-userspace/
BiscuitOS-mapping-$(CONFIG_PK_BISCUITOS_HUGE2MMMAP_USERSPACE) 	+= BiscuitOS-hugetlbfs-2M-mmap-userspace/
BiscuitOS-mapping-$(CONFIG_PK_BISCUITOS_HUGE2MMMAPANON_USERSPACE) 	+= BiscuitOS-hugetlbfs-2M-anonymous-mmap-userspace/
BiscuitOS-mapping-$(CONFIG_PK_BISCUITOS_HUGE1GMMAP_USERSPACE) 	+= BiscuitOS-hugetlbfs-1G-mmap-userspace/
BiscuitOS-mapping-$(CONFIG_PK_BISCUITOS_HUGE1GMMAPANON_USERSPACE) 	+= BiscuitOS-hugetlbfs-1G-anonymous-mmap-userspace/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/memory-mapping/%/Makefile, $(BiscuitOS-mapping-y))

include $(PACKAGE_MAKEDIR)
