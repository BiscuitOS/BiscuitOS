################################################
#
# gdk-pixbuf
#
################################################
GDK_PIXBUF_NAME		:= gdk-pixbuf
GDK_PIXBUF_VERSION	:= $(CONFIG_GDK_PIXBUF_VERSION)
GDK_PIXBUF_SITE		:= $(CONFIG_GDK_PIXBUF_URL)
GDK_PIXBUF_GITHUB	:= 
GDK_PIXBUF_SUBNAME	:= 
GDK_PIXBUF_DIR		:= $(srctree)/package/gdk-pixbuf
GDK_PIXBUF_PATCH	:= $(srctree)/package/gdk-pixbuf/patch
GDK_PIXBUF_DEMO		:= $(srctree)/package/gdk-pixbuf/demo.c
GDK_PIXBUF_OUT		:= 
GDK_PIXBUF_SCRIPTS	:= $(srctree)/scripts/package/GNU-package.sh
GDK_PIXBUF_TAR		:= $(CONFIG_GDK_PIXBUF_TAR)
GDK_PIXBUF_PACKAGE	:= 
GDK_PIXBUF_CONFIG	:=
SUB_TARGET		+= $(GDK_PIXBUF_DIR)/build

GDK_PIXBUF_sh = $(CONFIG_SHELL) $(GDK_PIXBUF_SCRIPTS) \
               $1 $(GDK_PIXBUF_NAME)X $(GDK_PIXBUF_VERSION)X \
               $(GDK_PIXBUF_SITE)X $(GDK_PIXBUF_GITHUB)X \
               $(GDK_PIXBUF_PATCH)X 5.0 \
	       $(CONFIG_GDK_PIXBUF_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(GDK_PIXBUF_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(GDK_PIXBUF_SUBNAME)X \
               $(GDK_PIXBUF_CONFIG)X $(CONFIG_GDK_PIXBUF_CONFIG)X \
	       $(CONFIG_GDK_PIXBUF_LDFLAGS) $(CONFIG_GDK_PIXBUF_CFLAGS)

$(GDK_PIXBUF_DIR)/build: FORCE
	$(Q)$(call GDK_PIXBUF_sh,$(srctree))
