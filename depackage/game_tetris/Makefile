################################################
#
# Game: tetris
#
################################################
GAME_TETRIS_NAME		:= tetris
GAME_TETRIS_VERSION	:= $(CONFIG_GAME_TETRIS_VERSION)
GAME_TETRIS_SITE	:= $(CONFIG_GAME_TETRIS_URL)
GAME_TETRIS_GITHUB	:= 
GAME_TETRIS_SUBNAME	:= 
GAME_TETRIS_DIR		:= $(srctree)/package/tetris_app
GAME_TETRIS_PATCH	:= $(srctree)/package/tetris_app/patch
GAME_TETRIS_DEMO	:= $(srctree)/package/tetris_app/tetris.c
GAME_TETRIS_OUT		:= 
GAME_TETRIS_SCRIPTS	:= $(srctree)/scripts/package/GNU-app.sh
GAME_TETRIS_TAR		:= $(CONFIG_GAME_TETRIS_TAR)
GAME_TETRIS_PACKAGE	:= 
GAME_TETRIS_CONFIG	:=
SUB_TARGET		+= $(GAME_TETRIS_DIR)/build

GAME_TETRIS_sh = $(CONFIG_SHELL) $(GAME_TETRIS_SCRIPTS) \
               $1 $(GAME_TETRIS_NAME)X $(GAME_TETRIS_VERSION)X \
               $(GAME_TETRIS_SITE)X $(GAME_TETRIS_GITHUB)X \
               $(GAME_TETRIS_PATCH)X 5.0 \
	       $(CONFIG_GAME_TETRIS_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(GAME_TETRIS_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(GAME_TETRIS_SUBNAME)X \
               $(GAME_TETRIS_CONFIG)X $(CONFIG_GAME_TETRIS_CONFIG)X \
	       $(CONFIG_GAME_TETRIS_LDFLAGS)X $(CONFIG_GAME_TETRIS_CFLAGS)X \
	       $(CONFIG_GAME_TETRIS_SRC)X

$(GAME_TETRIS_DIR)/build: FORCE
	$(Q)$(call GAME_TETRIS_sh,$(srctree))
