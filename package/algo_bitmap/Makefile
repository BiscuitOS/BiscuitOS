################################################
#
# Algorithm BITMAP
#
################################################
ALGO_BITMAP_NAME	:= bitmap
ALGO_BITMAP_VERSION	:= $(CONFIG_ALGO_BITMAP_VERSION)
ALGO_BITMAP_SITE	:= $(CONFIG_ALGO_BITMAP_URL)
ALGO_BITMAP_GITHUB	:= 
ALGO_BITMAP_SUBNAME	:= 
ALGO_BITMAP_DIR		:= $(srctree)/package/algo_bitmap
ALGO_BITMAP_PATCH	:= $(srctree)/package/algo_bitmap/patch
ALGO_BITMAP_DEMO	:= $(srctree)/package/algo_bitmap/demo.c
ALGO_BITMAP_OUT		:= 
ALGO_BITMAP_SCRIPTS	:= $(srctree)/scripts/package/GNU-app.sh
ALGO_BITMAP_TAR		:= $(CONFIG_ALGO_BITMAP_TAR)
ALGO_BITMAP_PACKAGE	:= 
ALGO_BITMAP_CONFIG	:=
SUB_TARGET		+= $(ALGO_BITMAP_DIR)/build

ALGO_BITMAP_sh = $(CONFIG_SHELL) $(ALGO_BITMAP_SCRIPTS) \
               $1 $(ALGO_BITMAP_NAME)X $(ALGO_BITMAP_VERSION)X \
               $(ALGO_BITMAP_SITE)X $(ALGO_BITMAP_GITHUB)X \
               $(ALGO_BITMAP_PATCH)X 5.0 \
	       $(CONFIG_ALGO_BITMAP_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(ALGO_BITMAP_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(ALGO_BITMAP_SUBNAME)X \
               $(ALGO_BITMAP_CONFIG)X $(CONFIG_ALGO_BITMAP_CONFIG)X \
	       $(CONFIG_ALGO_BITMAP_LDFLAGS)X $(CONFIG_ALGO_BITMAP_CFLAGS)X \
	       $(CONFIG_ALGO_BITMAP_SRC)X

$(ALGO_BITMAP_DIR)/build: FORCE
	$(Q)$(call ALGO_BITMAP_sh,$(srctree))
