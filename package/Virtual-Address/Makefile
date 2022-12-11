VADDR-MECH-$(CONFIG_PK_VADDR_MECH_DETECT_PADDR)		+= BiscuitOS-VADDR-MECH-Detect-physcal-address/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/Virtual-Address/%/Makefile, $(VADDR-MECH-y))

include $(PACKAGE_MAKEDIR)
