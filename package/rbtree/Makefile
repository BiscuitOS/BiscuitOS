rbtree-$(CONFIG_PK_RBTREE_APP)		+= rbtree_app/
rbtree-$(CONFIG_PK_RB_LINK_NODE)	+= rb_link_node/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/rbtree/%/Makefile, $(rbtree-y))

include $(PACKAGE_MAKEDIR)
