################################################
#
# freetype
#
################################################
FREETYPE_NAME		:= freetype
FREETYPE_VERSION	:= $(CONFIG_FREETYPE_VERSION)
FREETYPE_SITE		:= $(CONFIG_FREETYPE_URL)
FREETYPE_GITHUB		:= 
FREETYPE_SUBNAME	:= 
FREETYPE_DIR		:= $(srctree)/package/freetype
FREETYPE_PATCH		:= $(srctree)/package/freetype/patch
FREETYPE_DEMO		:= $(srctree)/package/freetype/demo.c
FREETYPE_OUT		:= 
FREETYPE_SCRIPTS	:= $(srctree)/scripts/package/GNU-package.sh
FREETYPE_TAR		:= $(CONFIG_FREETYPE_TAR)
FREETYPE_PACKAGE	:= 
FREETYPE_CONFIG		:=
SUB_TARGET		+= $(FREETYPE_DIR)/build

FREETYPE_sh = $(CONFIG_SHELL) $(FREETYPE_SCRIPTS) \
               $1 $(FREETYPE_NAME)X $(FREETYPE_VERSION)X \
               $(FREETYPE_SITE)X $(FREETYPE_GITHUB)X \
               $(FREETYPE_PATCH)X 5.0 \
	       $(CONFIG_FREETYPE_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(FREETYPE_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(FREETYPE_SUBNAME)X \
               $(FREETYPE_CONFIG)X $(CONFIG_FREETYPE_CONFIG)X \
	       $(CONFIG_FREETYPE_LDFLAGS) $(CONFIG_FREETYPE_CFLAGS)

$(FREETYPE_DIR)/build: FORCE
	$(Q)$(call FREETYPE_sh,$(srctree))
