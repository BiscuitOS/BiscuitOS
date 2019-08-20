################################################
#
# snake_app
#
################################################
GAME_SNAKE_NAME		:= snake
GAME_SNAKE_VERSION	:= $(CONFIG_GAME_SNAKE_VERSION)
GAME_SNAKE_SITE		:= $(CONFIG_GAME_SNAKE_URL)
GAME_SNAKE_GITHUB	:= 
GAME_SNAKE_SUBNAME	:= 
GAME_SNAKE_DIR		:= $(srctree)/package/snake_app
GAME_SNAKE_PATCH	:= $(srctree)/package/snake_app/patch
GAME_SNAKE_DEMO		:= $(srctree)/package/snake_app/snake.c
GAME_SNAKE_OUT		:= 
GAME_SNAKE_SCRIPTS	:= $(srctree)/scripts/package/GNU-app.sh
GAME_SNAKE_TAR		:= $(CONFIG_GAME_SNAKE_TAR)
GAME_SNAKE_PACKAGE	:= 
GAME_SNAKE_CONFIG	:=
SUB_TARGET		+= $(GAME_SNAKE_DIR)/build

GAME_SNAKE_sh = $(CONFIG_SHELL) $(GAME_SNAKE_SCRIPTS) \
               $1 $(GAME_SNAKE_NAME)X $(GAME_SNAKE_VERSION)X \
               $(GAME_SNAKE_SITE)X $(GAME_SNAKE_GITHUB)X \
               $(GAME_SNAKE_PATCH)X 5.0 \
	       $(CONFIG_GAME_SNAKE_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(GAME_SNAKE_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(GAME_SNAKE_SUBNAME)X \
               $(GAME_SNAKE_CONFIG)X $(CONFIG_GAME_SNAKE_CONFIG)X \
	       $(CONFIG_GAME_SNAKE_LDFLAGS)X $(CONFIG_GAME_SNAKE_CFLAGS)X \
	       $(CONFIG_GAME_SNAKE_SRC)X

$(GAME_SNAKE_DIR)/build: FORCE
	$(Q)$(call GAME_SNAKE_sh,$(srctree))
