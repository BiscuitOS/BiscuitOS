memory-sanitizers-$(CONFIG_PK_ASAN) 		+= BiscuitOS-ASAN/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/memory-sanitizers/%/Makefile, $(memory-sanitizers-y))

include $(PACKAGE_MAKEDIR)
