################################################
#
# atk
#
################################################
GTK_ATK_NAME		:= atk
GTK_ATK_VERSION		:= $(CONFIG_GTK_ATK_VERSION)
GTK_ATK_SITE		:= $(CONFIG_GTK_ATK_URL)
GTK_ATK_GITHUB		:= 
GTK_ATK_SUBNAME		:= 
GTK_ATK_DIR		:= $(srctree)/package/atk
GTK_ATK_PATCH		:= $(srctree)/package/atk/patch
GTK_ATK_DEMO		:= $(srctree)/package/atk/demo.c
GTK_ATK_OUT		:= 
GTK_ATK_SCRIPTS		:= $(srctree)/scripts/package/GNU-package.sh
GTK_ATK_TAR		:= $(CONFIG_GTK_ATK_TAR)
GTK_ATK_PACKAGE		:= 
GTK_ATK_CONFIG		:=
SUB_TARGET		+= $(GTK_ATK_DIR)/build

GTK_ATK_sh = $(CONFIG_SHELL) $(GTK_ATK_SCRIPTS) \
               $1 $(GTK_ATK_NAME)X $(GTK_ATK_VERSION)X \
               $(GTK_ATK_SITE)X $(GTK_ATK_GITHUB)X \
               $(GTK_ATK_PATCH)X 5.0 \
	       $(CONFIG_GTK_ATK_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(GTK_ATK_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(GTK_ATK_SUBNAME)X \
               $(GTK_ATK_CONFIG)X $(CONFIG_GTK_ATK_CONFIG)X \
	       $(CONFIG_GTK_ATK_LDFLAGS) $(CONFIG_GTK_ATK_CFLAGS)

$(GTK_ATK_DIR)/build: FORCE
	$(Q)$(call GTK_ATK_sh,$(srctree))
