BiscuitOS-NUMA-$(CONFIG_PK_NUMACTL_LIBNUMA) 	+= numactl-libnuma/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/NUMA/%/Makefile, $(BiscuitOS-NUMA-y))

include $(PACKAGE_MAKEDIR)
