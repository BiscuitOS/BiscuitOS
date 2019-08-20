################################################
#
# Algorithm tree23
#
################################################
ALGO_TREE23_NAME	:= tree23
ALGO_TREE23_VERSION	:= $(CONFIG_ALGO_TREE23_VERSION)
ALGO_TREE23_SITE	:= $(CONFIG_ALGO_TREE23_URL)
ALGO_TREE23_GITHUB	:= 
ALGO_TREE23_SUBNAME	:= 
ALGO_TREE23_DIR		:= $(srctree)/package/algo_tree23
ALGO_TREE23_PATCH	:= $(srctree)/package/algo_tree23/patch
ALGO_TREE23_DEMO	:= $(srctree)/package/algo_tree23/demo.c
ALGO_TREE23_OUT		:= 
ALGO_TREE23_SCRIPTS	:= $(srctree)/scripts/package/GNU-app.sh
ALGO_TREE23_TAR		:= $(CONFIG_ALGO_TREE23_TAR)
ALGO_TREE23_PACKAGE	:= 
ALGO_TREE23_CONFIG	:=
SUB_TARGET		+= $(ALGO_TREE23_DIR)/build

ALGO_TREE23_sh = $(CONFIG_SHELL) $(ALGO_TREE23_SCRIPTS) \
               $1 $(ALGO_TREE23_NAME)X $(ALGO_TREE23_VERSION)X \
               $(ALGO_TREE23_SITE)X $(ALGO_TREE23_GITHUB)X \
               $(ALGO_TREE23_PATCH)X 5.0 \
	       $(CONFIG_ALGO_TREE23_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(ALGO_TREE23_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(ALGO_TREE23_SUBNAME)X \
               $(ALGO_TREE23_CONFIG)X $(CONFIG_ALGO_TREE23_CONFIG)X \
	       $(CONFIG_ALGO_TREE23_LDFLAGS)X $(CONFIG_ALGO_TREE23_CFLAGS)X \
	       $(CONFIG_ALGO_TREE23_SRC)X $(CONFIG_ALGO_TREE23_CSRC)X

$(ALGO_TREE23_DIR)/build: FORCE
	$(Q)$(call ALGO_TREE23_sh,$(srctree))
