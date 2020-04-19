mm-$(CONFIG_PK_MM_BS)	+= mm_bs/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/memory_history/mm/%/Makefile, $(mm-y))

include $(PACKAGE_MAKEDIR)
