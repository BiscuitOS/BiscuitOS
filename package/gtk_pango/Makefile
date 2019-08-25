################################################
#
# pango
#
################################################
GTK_PANGO_NAME		:= pango
GTK_PANGO_VERSION	:= $(CONFIG_GTK_PANGO_VERSION)
GTK_PANGO_SITE		:= $(CONFIG_GTK_PANGO_URL)
GTK_PANGO_GITHUB	:= 
GTK_PANGO_SUBNAME	:= 
GTK_PANGO_DIR		:= $(srctree)/package/pango
GTK_PANGO_PATCH		:= $(srctree)/package/pango/patch
GTK_PANGO_DEMO		:= $(srctree)/package/pango/demo.c
GTK_PANGO_OUT		:= 
GTK_PANGO_SCRIPTS	:= $(srctree)/scripts/package/GNU-package.sh
GTK_PANGO_TAR		:= $(CONFIG_GTK_PANGO_TAR)
GTK_PANGO_PACKAGE	:= 
GTK_PANGO_CONFIG	:=
SUB_TARGET		+= $(GTK_PANGO_DIR)/build

GTK_PANGO_sh = $(CONFIG_SHELL) $(GTK_PANGO_SCRIPTS) \
               $1 $(GTK_PANGO_NAME)X $(GTK_PANGO_VERSION)X \
               $(GTK_PANGO_SITE)X $(GTK_PANGO_GITHUB)X \
               $(GTK_PANGO_PATCH)X 5.0 \
	       $(CONFIG_GTK_PANGO_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(GTK_PANGO_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(GTK_PANGO_SUBNAME)X \
               $(GTK_PANGO_CONFIG)X $(CONFIG_GTK_PANGO_CONFIG)X \
	       $(CONFIG_GTK_PANGO_LDFLAGS) $(CONFIG_GTK_PANGO_CFLAGS)

$(GTK_PANGO_DIR)/build: FORCE
	$(Q)$(call GTK_PANGO_sh,$(srctree))
