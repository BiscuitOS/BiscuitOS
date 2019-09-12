################################################
#
# pixman
#
################################################
PIXMAN_NAME		:= pixman
PIXMAN_VERSION		:= $(CONFIG_PIXMAN_VERSION)
PIXMAN_SITE		:= $(CONFIG_PIXMAN_URL)
PIXMAN_GITHUB		:= 
PIXMAN_SUBNAME		:= 
PIXMAN_DIR		:= $(srctree)/package/pixman
PIXMAN_PATCH		:= $(srctree)/package/pixman/patch
PIXMAN_DEMO		:= $(srctree)/package/pixman/demo.c
PIXMAN_OUT		:= 
PIXMAN_SCRIPTS		:= $(srctree)/scripts/package/GNU-package.sh
PIXMAN_TAR		:= $(CONFIG_PIXMAN_TAR)
PIXMAN_PACKAGE		:= 
PIXMAN_CONFIG		:=
SUB_TARGET		+= $(PIXMAN_DIR)/build

PIXMAN_sh = $(CONFIG_SHELL) $(PIXMAN_SCRIPTS) \
               $1 $(PIXMAN_NAME)X $(PIXMAN_VERSION)X \
               $(PIXMAN_SITE)X $(PIXMAN_GITHUB)X \
               $(PIXMAN_PATCH)X 5.0 \
	       $(CONFIG_PIXMAN_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(PIXMAN_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(PIXMAN_SUBNAME)X \
               $(PIXMAN_CONFIG)X $(CONFIG_PIXMAN_CONFIG)X \
	       $(CONFIG_PIXMAN_LDFLAGS) $(CONFIG_PIXMAN_CFLAGS)

$(PIXMAN_DIR)/build: FORCE
	$(Q)$(call PIXMAN_sh,$(srctree))
