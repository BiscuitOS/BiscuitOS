################################################
#
# Mesa
#
################################################
MESALIB_NAME		:= mesa
MESALIB_VERSION		:= $(CONFIG_MESALIB_VERSION)
MESALIB_SITE		:= $(CONFIG_MESALIB_URL)
MESALIB_GITHUB		:= 
MESALIB_SUBNAME		:= 
MESALIB_DIR		:= $(srctree)/package/Mesa
MESALIB_PATCH		:= $(srctree)/package/Mesa/patch
MESALIB_DEMO		:= $(srctree)/package/Mesa/demo.c
MESALIB_OUT		:= 
MESALIB_SCRIPTS		:= $(srctree)/scripts/package/GNU-package.sh
MESALIB_TAR		:= $(CONFIG_MESALIB_TAR)
MESALIB_PACKAGE		:= 
MESALIB_CONFIG		:=
SUB_TARGET		+= $(MESALIB_DIR)/build

MESALIB_sh = $(CONFIG_SHELL) $(MESALIB_SCRIPTS) \
               $1 $(MESALIB_NAME)X $(MESALIB_VERSION)X \
               $(MESALIB_SITE)X $(MESALIB_GITHUB)X \
               $(MESALIB_PATCH)X 5.0 \
	       $(CONFIG_MESALIB_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(MESALIB_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(MESALIB_SUBNAME)X \
               $(MESALIB_CONFIG)X $(CONFIG_MESALIB_CONFIG)X \
	       $(CONFIG_MESALIB_LDFLAGS) $(CONFIG_MESALIB_CFLAGS)

$(MESALIB_DIR)/build: FORCE
	$(Q)$(call MESALIB_sh,$(srctree))
