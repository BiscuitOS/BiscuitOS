################################################
#
# glproto
#
################################################
GLPROTO_NAME		:= glproto
GLPROTO_VERSION		:= $(CONFIG_GLPROTO_VERSION)
GLPROTO_SITE		:= $(CONFIG_GLPROTO_URL)
GLPROTO_GITHUB		:= 
GLPROTO_SUBNAME		:= 
GLPROTO_DIR		:= $(srctree)/package/glproto
GLPROTO_PATCH		:= $(srctree)/package/glproto/patch
GLPROTO_DEMO		:= $(srctree)/package/glproto/demo.c
GLPROTO_OUT		:= 
GLPROTO_SCRIPTS		:= $(srctree)/scripts/package/GNU-package.sh
GLPROTO_TAR		:= $(CONFIG_GLPROTO_TAR)
GLPROTO_PACKAGE		:= 
GLPROTO_CONFIG		:=
SUB_TARGET		+= $(GLPROTO_DIR)/build

GLPROTO_sh = $(CONFIG_SHELL) $(GLPROTO_SCRIPTS) \
               $1 $(GLPROTO_NAME)X $(GLPROTO_VERSION)X \
               $(GLPROTO_SITE)X $(GLPROTO_GITHUB)X \
               $(GLPROTO_PATCH)X 5.0 \
	       $(CONFIG_GLPROTO_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(GLPROTO_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(GLPROTO_SUBNAME)X \
               $(GLPROTO_CONFIG)X $(CONFIG_GLPROTO_CONFIG)X \
	       $(CONFIG_GLPROTO_LDFLAGS) $(CONFIG_GLPROTO_CFLAGS)

$(GLPROTO_DIR)/build: FORCE
	$(Q)$(call GLPROTO_sh,$(srctree))
