memory_history-$(CONFIG_PK_MMU_HISTORY)			+= MMU/
memory_history-$(CONFIG_PK_BOOTMEM_HISTORY)		+= bootmem/
memory_history-$(CONFIG_PK_BUDDY_HISTORY)		+= buddy/
memory_history-$(CONFIG_PK_PCP_HISTORY)			+= PCP/
memory_history-$(CONFIG_PK_PERCPU_HISTORY)		+= PERCPU/
memory_history-$(CONFIG_PK_SLAB_HISTORY)		+= slab/
memory_history-$(CONFIG_PK_VMALLOC_HISTORY)		+= VMALLOC/
memory_history-$(CONFIG_PK_KMAP_HISTORY)		+= kmap/
memory_history-$(CONFIG_PK_FIXMAP_HISTORY)		+= fixmap/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/memory_history/%/Makefile, $(memory_history-y))

include $(PACKAGE_MAKEDIR)
