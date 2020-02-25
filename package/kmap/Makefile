kmap-$(CONFIG_PK_KMAP_USERSPACE)		+= kmap_userspace/
kmap-$(CONFIG_PK_FIXMAP_USERSPACE)		+= fixmap_userspace/
kmap-$(CONFIG_PK_KMAP_F)			+= kmap/
kmap-$(CONFIG_PK_KUNMAP)			+= kunmap/
kmap-$(CONFIG_PK_KMAP_TO_PAGE)			+= kmap_to_page/
kmap-$(CONFIG_PK_KMAP_ATOMIC)			+= kmap_atomic/
kmap-$(CONFIG_PK_KUNMAP_ATOMIC)			+= kunmap_atomic/
kmap-$(CONFIG_PK_KMAP_ATOMIC_PFN)		+= kmap_atomic_pfn/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/kmap/%/Makefile, $(kmap-y))

include $(PACKAGE_MAKEDIR)
