PERCPU-$(CONFIG_PK_PERCPU_2_6_12)		+= linux-2.6.12/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/memory_history/PERCPU/%/Makefile, $(PERCPU-y))

include $(PACKAGE_MAKEDIR)
