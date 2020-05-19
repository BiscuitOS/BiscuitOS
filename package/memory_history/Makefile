memory_history-$(CONFIG_PK_MMU_HISTORY)			+= MMU/
memory_history-$(CONFIG_PK_BOOTMEM_HISTORY)		+= bootmem/
memory_history-$(CONFIG_PK_BUDDY_HISTORY)		+= buddy/
memory_history-$(CONFIG_PK_PCP_HISTORY)			+= PCP/
memory_history-$(CONFIG_PK_PERCPU_HISTORY)		+= PERCPU/
memory_history-$(CONFIG_PK_SLAB_HISTORY)		+= SLAB/
memory_history-$(CONFIG_PK_SLUB_HISTORY)		+= slub/
memory_history-$(CONFIG_PK_SLOB_HISTORY)		+= slob/
memory_history-$(CONFIG_PK_VMALLOC_HISTORY)		+= VMALLOC/
memory_history-$(CONFIG_PK_KMAP_HISTORY)		+= KMAP/
memory_history-$(CONFIG_PK_FIXMAP_HISTORY)		+= FIXMAP/
memory_history-$(CONFIG_PK_CMA_HISTORY)			+= CMA/
memory_history-$(CONFIG_PK_BISCUITOS_MEMORY)		+= BiscuitOS/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/memory_history/%/Makefile, $(memory_history-y))

include $(PACKAGE_MAKEDIR)
