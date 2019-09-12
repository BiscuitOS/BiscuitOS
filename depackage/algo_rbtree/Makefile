################################################
#
# Algorithm rbtree
#
################################################
ALGO_RBTREE_NAME	:= rbtree
ALGO_RBTREE_VERSION	:= $(CONFIG_ALGO_RBTREE_VERSION)
ALGO_RBTREE_SITE	:= $(CONFIG_ALGO_RBTREE_URL)
ALGO_RBTREE_GITHUB	:= 
ALGO_RBTREE_SUBNAME	:= 
ALGO_RBTREE_DIR		:= $(srctree)/package/algo_rbtree
ALGO_RBTREE_PATCH	:= $(srctree)/package/algo_rbtree/patch
ALGO_RBTREE_DEMO	:= $(srctree)/package/algo_rbtree/demo.c
ALGO_RBTREE_OUT		:= 
ALGO_RBTREE_SCRIPTS	:= $(srctree)/scripts/package/GNU-app.sh
ALGO_RBTREE_TAR		:= $(CONFIG_ALGO_RBTREE_TAR)
ALGO_RBTREE_PACKAGE	:= 
ALGO_RBTREE_CONFIG	:=
SUB_TARGET		+= $(ALGO_RBTREE_DIR)/build

ALGO_RBTREE_sh = $(CONFIG_SHELL) $(ALGO_RBTREE_SCRIPTS) \
               $1 $(ALGO_RBTREE_NAME)X $(ALGO_RBTREE_VERSION)X \
               $(ALGO_RBTREE_SITE)X $(ALGO_RBTREE_GITHUB)X \
               $(ALGO_RBTREE_PATCH)X 5.0 \
	       $(CONFIG_ALGO_RBTREE_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(ALGO_RBTREE_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(ALGO_RBTREE_SUBNAME)X \
               $(ALGO_RBTREE_CONFIG)X $(CONFIG_ALGO_RBTREE_CONFIG)X \
	       $(CONFIG_ALGO_RBTREE_LDFLAGS)X $(CONFIG_ALGO_RBTREE_CFLAGS)X \
	       $(CONFIG_ALGO_RBTREE_SRC)X $(CONFIG_ALGO_RBTREE_CSRC)X

$(ALGO_RBTREE_DIR)/build: FORCE
	$(Q)$(call ALGO_RBTREE_sh,$(srctree))
