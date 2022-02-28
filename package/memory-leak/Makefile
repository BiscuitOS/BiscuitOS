memory-leak-$(CONFIG_PK_ASAN) 		+= BiscuitOS-ASAN/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/memory-leak/%/Makefile, $(memory-leak-y))

include $(PACKAGE_MAKEDIR)
