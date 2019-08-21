################################################
#
# 2048
#
################################################
GAME_2048_NAME		:= game_2048
GAME_2048_VERSION	:= $(CONFIG_GAME_2048_VERSION)
GAME_2048_SITE		:= $(CONFIG_GAME_2048_URL)
GAME_2048_GITHUB	:= 
GAME_2048_SUBNAME	:= 
GAME_2048_DIR		:= $(srctree)/package/2048_app
GAME_2048_PATCH		:= $(srctree)/package/2048_app/patch
GAME_2048_DEMO		:= $(srctree)/package/2048_app/2048.c
GAME_2048_OUT		:= 
GAME_2048_SCRIPTS	:= $(srctree)/scripts/package/GNU-app.sh
GAME_2048_TAR		:= $(CONFIG_GAME_2048_TAR)
GAME_2048_PACKAGE	:= 
GAME_2048_CONFIG	:=
SUB_TARGET		+= $(GAME_2048_DIR)/build

GAME_2048_sh = $(CONFIG_SHELL) $(GAME_2048_SCRIPTS) \
               $1 $(GAME_2048_NAME)X $(GAME_2048_VERSION)X \
               $(GAME_2048_SITE)X $(GAME_2048_GITHUB)X \
               $(GAME_2048_PATCH)X 5.0 \
	       $(CONFIG_GAME_2048_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(GAME_2048_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(GAME_2048_SUBNAME)X \
               $(GAME_2048_CONFIG)X $(CONFIG_GAME_2048_CONFIG)X \
	       $(CONFIG_GAME_2048_LDFLAGS)X $(CONFIG_GAME_2048_CFLAGS)X \
	       $(CONFIG_GAME_2048_SRC)X

$(GAME_2048_DIR)/build: FORCE
	$(Q)$(call GAME_2048_sh,$(srctree))
