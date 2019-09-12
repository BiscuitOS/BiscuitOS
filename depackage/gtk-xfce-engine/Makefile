################################################
#
# gtk-xfce-engine
#
################################################
GTK_XFCE_ENGINE_NAME		:= gtk-xfce-engine
GTK_XFCE_ENGINE_VERSION		:= $(CONFIG_GTK_XFCE_ENGINE_VERSION)
GTK_XFCE_ENGINE_SITE		:= $(CONFIG_GTK_XFCE_ENGINE_URL)
GTK_XFCE_ENGINE_GITHUB		:= 
GTK_XFCE_ENGINE_SUBNAME		:= 
GTK_XFCE_ENGINE_DIR		:= $(srctree)/package/gtk-xfce-engine
GTK_XFCE_ENGINE_PATCH		:= $(srctree)/package/gtk-xfce-engine/patch
GTK_XFCE_ENGINE_DEMO		:= $(srctree)/package/gtk-xfce-engine/demo.c
GTK_XFCE_ENGINE_OUT		:= 
GTK_XFCE_ENGINE_SCRIPTS		:= $(srctree)/scripts/package/GNU-package.sh
GTK_XFCE_ENGINE_TAR		:= $(CONFIG_GTK_XFCE_ENGINE_TAR)
GTK_XFCE_ENGINE_PACKAGE		:= 
GTK_XFCE_ENGINE_CONFIG		:=
SUB_TARGET		+= $(GTK_XFCE_ENGINE_DIR)/build

GTK_XFCE_ENGINE_sh = $(CONFIG_SHELL) $(GTK_XFCE_ENGINE_SCRIPTS) \
               $1 $(GTK_XFCE_ENGINE_NAME)X $(GTK_XFCE_ENGINE_VERSION)X \
               $(GTK_XFCE_ENGINE_SITE)X $(GTK_XFCE_ENGINE_GITHUB)X \
               $(GTK_XFCE_ENGINE_PATCH)X 5.0 \
	       $(CONFIG_GTK_XFCE_ENGINE_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(GTK_XFCE_ENGINE_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(GTK_XFCE_ENGINE_SUBNAME)X \
               $(GTK_XFCE_ENGINE_CONFIG)X $(CONFIG_GTK_XFCE_ENGINE_CONFIG)X \
	       $(CONFIG_GTK_XFCE_ENGINE_LDFLAGS) $(CONFIG_GTK_XFCE_ENGINE_CFLAGS)

$(GTK_XFCE_ENGINE_DIR)/build: FORCE
	$(Q)$(call GTK_XFCE_ENGINE_sh,$(srctree))
