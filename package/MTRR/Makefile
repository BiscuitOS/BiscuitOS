MTRR-$(CONFIG_PK_MTRR_DETECT)			+= BiscuitOS-MTRR-Detect/
MTRR-$(CONFIG_PK_MTRR_PAT)			+= BiscuitOS-MTRR-with-PAT/
MTRR-$(CONFIG_PK_MTRR_VIEW_CACHE_INFO)		+= BiscuitOS-MTRR-View-Cache-information/
MTRR-$(CONFIG_PK_MTRR_PAGETABLE_PAT)		+= BiscuitOS-MTRR-PageTable-Level-MTRR-PAT/
MTRR-$(CONFIG_PK_MTRR_PAGETABLE_PAT_APP)	+= BiscuitOS-MTRR-PageTable-Level-MTRR-PAT-application/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/MTRR/%/Makefile, $(MTRR-y))

include $(PACKAGE_MAKEDIR)
