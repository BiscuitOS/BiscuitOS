interval-tree-$(CONFIG_PK_INTERVAL_TREE_ANON)		+= BiscuitOS-anonymous-interval-tree/
interval-tree-$(CONFIG_PK_INTERVAL_TREE_FILE)		+= BiscuitOS-file-interval-tree/
interval-tree-$(CONFIG_PK_INTERVAL_TREE_FILE_FORK)	+= BiscuitOS-file-interval-tree-fork/
interval-tree-$(CONFIG_PK_INTERVAL_TREE_FILE_4_9)	+= BiscuitOS-file-interval-tree-4.9/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/interval-tree/%/Makefile, $(interval-tree-y))

include $(PACKAGE_MAKEDIR)
