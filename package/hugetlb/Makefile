BiscuitOS-hugetlb-$(CONFIG_PK_BISCUITOS_HUGETLB_ANON_PRIVATE_2M)	+= BiscuitOS-hugetlb-anonymous-private-mapping-2MiB/
BiscuitOS-hugetlb-$(CONFIG_PK_BISCUITOS_HUGETLB_ANON_SHARE_2M)		+= BiscuitOS-hugetlb-anonymous-share-mapping-2MiB/
BiscuitOS-hugetlb-$(CONFIG_PK_BISCUITOS_HUGETLB_FILE_PRIVATE_2M)	+= BiscuitOS-hugetlb-file-private-mapping-2MiB/
BiscuitOS-hugetlb-$(CONFIG_PK_BISCUITOS_HUGETLB_FILE_SHARE_2M)		+= BiscuitOS-hugetlb-file-share-mapping-2MiB/
BiscuitOS-hugetlb-$(CONFIG_PK_LIBHUGETLBFS)				+= libhugetlbfs/
BiscuitOS-hugetlb-$(CONFIG_PK_LIBHUGETLBFS_USAGE)			+= BiscuitOS-libhugetlbfs-usage/
BiscuitOS-hugetlb-$(CONFIG_PK_BISCUITOS_HUGETLB_FORK_ANON_PRIVATE)	+= BiscuitOS-hugetlb-fork-on-anonymous-private-mapping/
BiscuitOS-hugetlb-$(CONFIG_PK_BISCUITOS_HUGETLB_FORK_FILE_PRIVATE)	+= BiscuitOS-hugetlb-fork-on-file-private-mapping/
BiscuitOS-hugetlb-$(CONFIG_PK_HUGETLB_HISTORY_V2_6_6)			+= BiscuitOS-hugetlb-history-v2.6.6/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/hugetlb/%/Makefile, $(BiscuitOS-hugetlb-y))

include $(PACKAGE_MAKEDIR)
