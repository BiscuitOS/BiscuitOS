MCE-$(CONFIG_PK_MCE_MCELOG)	+= BiscuitOS-MCELOG/
MCE-$(CONFIG_PK_MCE_MCE_INJECT)	+= BiscuitOS-MCE-Inject/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/MCE/%/Makefile, $(MCE-y))

include $(PACKAGE_MAKEDIR)
