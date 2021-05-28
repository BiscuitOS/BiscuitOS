vmamerge-$(CONFIG_PK_BISCUITOS_VMA_MERGE_LAYOUT0_DISCONNECT)	+= BiscuitOS-vma-merge-layout0-disconnect/
vmamerge-$(CONFIG_PK_BISCUITOS_VMA_MERGE_LAYOUT0_ADJOIN)	+= BiscuitOS-vma-merge-layout0-adjoin/
vmamerge-$(CONFIG_PK_BISCUITOS_VMA_MERGE_LAYOUT0_INTERSECT)	+= BiscuitOS-vma-merge-layout0-intersect/
vmamerge-$(CONFIG_PK_BISCUITOS_VMA_MERGE_LAYOUT1_DISCONNECT)	+= BiscuitOS-vma-merge-layout1-disconnect/
vmamerge-$(CONFIG_PK_BISCUITOS_VMA_MERGE_LAYOUT1_ADJOIN)	+= BiscuitOS-vma-merge-layout1-adjoin/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/memory-mapping/BiscuitOS-vma-merge/%/Makefile, $(vmamerge-y))

include $(PACKAGE_MAKEDIR)
