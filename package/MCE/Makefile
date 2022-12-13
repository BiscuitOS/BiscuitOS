MCE-$(CONFIG_PK_MCE_MCELOG)		+= BiscuitOS-MCELOG/
MCE-$(CONFIG_PK_MCE_MCE_INJECT)		+= BiscuitOS-MCE-Inject/
MCE-$(CONFIG_PK_MCE_SOFT_OFFLINE_PAGE)	+= BiscuitOS-MCE-software-offline-poison-page/
MCE-$(CONFIG_PK_MCE_HARD_OFFLINE_PAGE)	+= BiscuitOS-MCE-hardware-offline-poison-page/
MCE-$(CONFIG_PK_MCE_MADV_HARD_OFFLINE_PAGE)	+= BiscuitOS-MCE-madvise-hardware-offline-poison-page/
MCE-$(CONFIG_PK_MCE_MADV_SOFT_OFFLINE_PAGE)	+= BiscuitOS-MCE-madvise-software-offline-poison-page/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/MCE/%/Makefile, $(MCE-y))

include $(PACKAGE_MAKEDIR)
