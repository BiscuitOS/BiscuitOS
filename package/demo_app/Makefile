################################################
#
# demo_app
#
################################################
DEMO_APP_NAME		:= demo
DEMO_APP_VERSION	:= $(CONFIG_DEMO_APP_VERSION)
DEMO_APP_SITE		:= $(CONFIG_DEMO_APP_URL)
DEMO_APP_GITHUB		:= 
DEMO_APP_SUBNAME	:= 
DEMO_APP_DIR		:= $(srctree)/package/demo_app
DEMO_APP_PATCH		:= $(srctree)/package/demo_app/patch
DEMO_APP_DEMO		:= $(srctree)/package/demo_app/demo.c
DEMO_APP_OUT		:= 
DEMO_APP_SCRIPTS	:= $(srctree)/scripts/package/GNU-app.sh
DEMO_APP_TAR		:= $(CONFIG_DEMO_APP_TAR)
DEMO_APP_PACKAGE	:= 
DEMO_APP_CONFIG		:=
SUB_TARGET		+= $(DEMO_APP_DIR)/build

DEMO_APP_sh = $(CONFIG_SHELL) $(DEMO_APP_SCRIPTS) \
               $1 $(DEMO_APP_NAME)X $(DEMO_APP_VERSION)X \
               $(DEMO_APP_SITE)X $(DEMO_APP_GITHUB)X \
               $(DEMO_APP_PATCH)X 5.0 \
	       $(CONFIG_DEMO_APP_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(DEMO_APP_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(DEMO_APP_SUBNAME)X \
               $(DEMO_APP_CONFIG)X $(CONFIG_DEMO_APP_CONFIG)X \
	       $(CONFIG_DEMO_APP_LDFLAGS)X $(CONFIG_DEMO_APP_CFLAGS)X \
	       $(CONFIG_DEMO_APP_SRC)X

$(DEMO_APP_DIR)/build: FORCE
	$(Q)$(call DEMO_APP_sh,$(srctree))
