################################################
#
# cairo
#
################################################
GTK_CAIRO_NAME		:= cairo
GTK_CAIRO_VERSION	:= $(CONFIG_GTK_CAIRO_VERSION)
GTK_CAIRO_SITE		:= $(CONFIG_GTK_CAIRO_URL)
GTK_CAIRO_GITHUB	:= 
GTK_CAIRO_SUBNAME	:= 
GTK_CAIRO_DIR		:= $(srctree)/package/cairo
GTK_CAIRO_PATCH		:= $(srctree)/package/gtk_cairo/patch
GTK_CAIRO_DEMO		:= $(srctree)/package/cairo/demo.c
GTK_CAIRO_OUT		:= 
GTK_CAIRO_SCRIPTS	:= $(srctree)/scripts/package/GNU-package.sh
GTK_CAIRO_TAR		:= $(CONFIG_GTK_CAIRO_TAR)
GTK_CAIRO_PACKAGE	:= 
GTK_CAIRO_CONFIG	:=
SUB_TARGET		+= $(GTK_CAIRO_DIR)/build

GTK_CAIRO_sh = $(CONFIG_SHELL) $(GTK_CAIRO_SCRIPTS) \
               $1 $(GTK_CAIRO_NAME)X $(GTK_CAIRO_VERSION)X \
               $(GTK_CAIRO_SITE)X $(GTK_CAIRO_GITHUB)X \
               $(GTK_CAIRO_PATCH)X 5.0 \
	       $(CONFIG_GTK_CAIRO_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(GTK_CAIRO_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(GTK_CAIRO_SUBNAME)X \
               $(GTK_CAIRO_CONFIG)X $(CONFIG_GTK_CAIRO_CONFIG)X \
	       $(CONFIG_GTK_CAIRO_LDFLAGS) $(CONFIG_GTK_CAIRO_CFLAGS)

$(GTK_CAIRO_DIR)/build: FORCE
	$(Q)$(call GTK_CAIRO_sh,$(srctree))
