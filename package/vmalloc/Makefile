vmalloc-$(CONFIG_PK_VMALLOC_USERSPACE)		+= vmalloc_userspace/
vmalloc-$(CONFIG_PK_VMALLOC_F)			+= vmalloc/
vmalloc-$(CONFIG_PK_VMALLOC_TO_PAGE)		+= vmalloc_to_page/
vmalloc-$(CONFIG_PK_VMALLOC_TO_PFN)		+= vmalloc_to_pfn/
vmalloc-$(CONFIG_PK_VFREE)			+= vfree/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/vmalloc/%/Makefile, $(vmalloc-y))

include $(PACKAGE_MAKEDIR)
