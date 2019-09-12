################################################
#
# xfce4-panel
#
################################################
XFCE4_PANEL_NAME		:= xfce4-panel
XFCE4_PANEL_VERSION		:= $(CONFIG_XFCE4_PANEL_VERSION)
XFCE4_PANEL_SITE		:= $(CONFIG_XFCE4_PANEL_URL)
XFCE4_PANEL_GITHUB		:= 
XFCE4_PANEL_SUBNAME		:= 
XFCE4_PANEL_DIR			:= $(srctree)/package/xfce4-panel
XFCE4_PANEL_PATCH		:= $(srctree)/package/xfce4-panel/patch
XFCE4_PANEL_DEMO		:= $(srctree)/package/xfce4-panel/demo.c
XFCE4_PANEL_OUT			:= 
XFCE4_PANEL_SCRIPTS		:= $(srctree)/scripts/package/GNU-package.sh
XFCE4_PANEL_TAR			:= $(CONFIG_XFCE4_PANEL_TAR)
XFCE4_PANEL_PACKAGE		:= 
XFCE4_PANEL_CONFIG		:=
SUB_TARGET			+= $(XFCE4_PANEL_DIR)/build

XFCE4_PANEL_sh = $(CONFIG_SHELL) $(XFCE4_PANEL_SCRIPTS) \
               $1 $(XFCE4_PANEL_NAME)X $(XFCE4_PANEL_VERSION)X \
               $(XFCE4_PANEL_SITE)X $(XFCE4_PANEL_GITHUB)X \
               $(XFCE4_PANEL_PATCH)X 5.0 \
	       $(CONFIG_XFCE4_PANEL_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(XFCE4_PANEL_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(XFCE4_PANEL_SUBNAME)X \
               $(XFCE4_PANEL_CONFIG)X $(CONFIG_XFCE4_PANEL_CONFIG)X \
	       $(CONFIG_XFCE4_PANEL_LDFLAGS) $(CONFIG_XFCE4_PANEL_CFLAGS)

$(XFCE4_PANEL_DIR)/build: FORCE
	$(Q)$(call XFCE4_PANEL_sh,$(srctree))
