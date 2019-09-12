################################################
#
# libxfont
#
################################################
LIBXFONT_NAME		:= libXfont
LIBXFONT_VERSION	:= $(CONFIG_LIBXFONT_VERSION)
LIBXFONT_SITE		:= $(CONFIG_LIBXFONT_URL)
LIBXFONT_GITHUB		:= 
LIBXFONT_SUBNAME	:= 
LIBXFONT_DIR		:= $(srctree)/package/libxfont
LIBXFONT_PATCH		:= $(srctree)/package/libxfont/patch
LIBXFONT_DEMO		:= $(srctree)/package/libxfont/demo.c
LIBXFONT_OUT		:= 
LIBXFONT_SCRIPTS	:= $(srctree)/scripts/package/GNU-package.sh
LIBXFONT_TAR		:= $(CONFIG_LIBXFONT_TAR)
LIBXFONT_PACKAGE	:= 
LIBXFONT_CONFIG		:=
SUB_TARGET		+= $(LIBXFONT_DIR)/build

LIBXFONT_sh = $(CONFIG_SHELL) $(LIBXFONT_SCRIPTS) \
               $1 $(LIBXFONT_NAME)X $(LIBXFONT_VERSION)X \
               $(LIBXFONT_SITE)X $(LIBXFONT_GITHUB)X \
               $(LIBXFONT_PATCH)X 5.0 \
	       $(CONFIG_LIBXFONT_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(LIBXFONT_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(LIBXFONT_SUBNAME)X \
               $(LIBXFONT_CONFIG)X $(CONFIG_LIBXFONT_CONFIG)X \
	       $(CONFIG_LIBXFONT_LDFLAGS) $(CONFIG_LIBXFONT_CFLAGS)

$(LIBXFONT_DIR)/build: FORCE
	$(Q)$(call LIBXFONT_sh,$(srctree))
