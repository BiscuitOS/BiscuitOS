BiscuitOS-AS-$(CONFIG_PK_BISCUITOS_AS_TEXT_SEGMENT) 	+= BiscuitOS-address-space-text-segment/
BiscuitOS-AS-$(CONFIG_PK_BISCUITOS_AS_DATA_SEGMENT) 	+= BiscuitOS-address-space-data-segment/
BiscuitOS-AS-$(CONFIG_PK_BISCUITOS_AS_DATA_SEGMENT_GL) 	+= BiscuitOS-address-space-data-segment-global/
BiscuitOS-AS-$(CONFIG_PK_BISCUITOS_AS_DATA_SEGMENT_GL_DL) 	+= BiscuitOS-address-space-data-segment-global-dynamic/
BiscuitOS-AS-$(CONFIG_PK_BISCUITOS_AS_PROCESS) 		+= BiscuitOS-address-space-process/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/address-space/%/Makefile, $(BiscuitOS-AS-y))

include $(PACKAGE_MAKEDIR)
