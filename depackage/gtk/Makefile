################################################
#
# gtk
#
################################################
GTK_NAME		:= gtk+
GTK_VERSION		:= $(CONFIG_GTK_VERSION)
GTK_SITE		:= $(CONFIG_GTK_URL)
GTK_GITHUB		:= 
GTK_SUBNAME		:= 
GTK_DIR			:= $(srctree)/package/gtk
GTK_PATCH		:= $(srctree)/package/gtk/patch
GTK_DEMO		:= $(srctree)/package/gtk/demo.c
GTK_OUT			:= 
GTK_SCRIPTS		:= $(srctree)/scripts/package/GNU-package.sh
GTK_TAR			:= $(CONFIG_GTK_TAR)
GTK_PACKAGE		:= 
GTK_CONFIG		:=
SUB_TARGET		+= $(GTK_DIR)/build

GTK_sh = $(CONFIG_SHELL) $(GTK_SCRIPTS) \
               $1 $(GTK_NAME)X $(GTK_VERSION)X \
               $(GTK_SITE)X $(GTK_GITHUB)X \
               $(GTK_PATCH)X 5.0 \
	       $(CONFIG_GTK_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(GTK_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(GTK_SUBNAME)X \
               $(GTK_CONFIG)X $(CONFIG_GTK_CONFIG)X \
	       $(CONFIG_GTK_LDFLAGS) $(CONFIG_GTK_CFLAGS)

$(GTK_DIR)/build: FORCE
	$(Q)$(call GTK_sh,$(srctree))
