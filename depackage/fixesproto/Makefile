################################################
#
# fixesproto
#
################################################
FIXESPROTO_NAME		:= fixesproto
FIXESPROTO_VERSION	:= $(CONFIG_FIXESPROTO_VERSION)
FIXESPROTO_SITE		:= $(CONFIG_FIXESPROTO_URL)
FIXESPROTO_GITHUB	:= 
FIXESPROTO_SUBNAME	:= 
FIXESPROTO_DIR		:= $(srctree)/package/fixesproto
FIXESPROTO_PATCH	:= $(srctree)/package/fixesproto/patch
FIXESPROTO_DEMO		:= $(srctree)/package/fixesproto/demo.c
FIXESPROTO_OUT		:= 
FIXESPROTO_SCRIPTS	:= $(srctree)/scripts/package/GNU-package.sh
FIXESPROTO_TAR		:= $(CONFIG_FIXESPROTO_TAR)
FIXESPROTO_PACKAGE	:= 
FIXESPROTO_CONFIG	:=
SUB_TARGET		+= $(FIXESPROTO_DIR)/build

FIXESPROTO_sh = $(CONFIG_SHELL) $(FIXESPROTO_SCRIPTS) \
               $1 $(FIXESPROTO_NAME)X $(FIXESPROTO_VERSION)X \
               $(FIXESPROTO_SITE)X $(FIXESPROTO_GITHUB)X \
               $(FIXESPROTO_PATCH)X 5.0 \
	       $(CONFIG_FIXESPROTO_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(FIXESPROTO_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(FIXESPROTO_SUBNAME)X \
               $(FIXESPROTO_CONFIG)X $(CONFIG_FIXESPROTO_CONFIG)X \
	       $(CONFIG_FIXESPROTO_LDFLAGS) $(CONFIG_FIXESPROTO_CFLAGS)

$(FIXESPROTO_DIR)/build: FORCE
	$(Q)$(call FIXESPROTO_sh,$(srctree))
