BiscuitOS-NUMA-$(CONFIG_PK_NUMACTL_LIBNUMA) 	+= numactl-libnuma/
BiscuitOS-NUMA-$(CONFIG_PK_LIBNUMA_ALLOC_CUR) 	+= libnuma-alloc-memory-current-memory/
BiscuitOS-NUMA-$(CONFIG_PK_LIBNUMA_DETECT_NODE) 	+= libnuma-detect-vaddr-numa-node/
BiscuitOS-NUMA-$(CONFIG_PK_LIBNUMA_MOVE_PAGE) 	+= libnuma-numa-move-page/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/NUMA/%/Makefile, $(BiscuitOS-NUMA-y))

include $(PACKAGE_MAKEDIR)
