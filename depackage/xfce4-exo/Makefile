################################################
#
# xfce4-exo
#
################################################
XFCE4_EXO_NAME		:= exo
XFCE4_EXO_VERSION	:= $(CONFIG_XFCE4_EXO_VERSION)
XFCE4_EXO_SITE		:= $(CONFIG_XFCE4_EXO_URL)
XFCE4_EXO_GITHUB	:= 
XFCE4_EXO_SUBNAME	:= 
XFCE4_EXO_DIR		:= $(srctree)/package/xfce4-exo
XFCE4_EXO_PATCH		:= $(srctree)/package/xfce4-exo/patch
XFCE4_EXO_DEMO		:= $(srctree)/package/xfce4-exo/demo.c
XFCE4_EXO_OUT		:= 
XFCE4_EXO_SCRIPTS	:= $(srctree)/scripts/package/GNU-package.sh
XFCE4_EXO_TAR		:= $(CONFIG_XFCE4_EXO_TAR)
XFCE4_EXO_PACKAGE		:= 
XFCE4_EXO_CONFIG		:=
SUB_TARGET			+= $(XFCE4_EXO_DIR)/build

XFCE4_EXO_sh = $(CONFIG_SHELL) $(XFCE4_EXO_SCRIPTS) \
               $1 $(XFCE4_EXO_NAME)X $(XFCE4_EXO_VERSION)X \
               $(XFCE4_EXO_SITE)X $(XFCE4_EXO_GITHUB)X \
               $(XFCE4_EXO_PATCH)X 5.0 \
	       $(CONFIG_XFCE4_EXO_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(XFCE4_EXO_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(XFCE4_EXO_SUBNAME)X \
               $(XFCE4_EXO_CONFIG)X $(CONFIG_XFCE4_EXO_CONFIG)X \
	       $(CONFIG_XFCE4_EXO_LDFLAGS) $(CONFIG_XFCE4_EXO_CFLAGS)

$(XFCE4_EXO_DIR)/build: FORCE
	$(Q)$(call XFCE4_EXO_sh,$(srctree))
