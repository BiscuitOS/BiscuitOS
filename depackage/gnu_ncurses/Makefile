################################################
#
# GNU ncurses
#
################################################
GNU_NCURSES_NAME	:= ncurses
GNU_NCURSES_VERSION	:= $(CONFIG_GNU_NCURSES_VERSION)
GNU_NCURSES_SITE	:= $(CONFIG_GNU_NCURSES_URL)
GNU_NCURSES_GITHUB	:= 
GNU_NCURSES_SUBNAME	:= 
GNU_NCURSES_DIR		:= $(srctree)/package/ncurses
GNU_NCURSES_PATCH	:= $(srctree)/package/ncurses/patch
GNU_NCURSES_DEMO	:= $(srctree)/package/ncurses/demo.c
GNU_NCURSES_OUT		:= 
GNU_NCURSES_SCRIPTS	:= $(srctree)/scripts/package/GNU-package.sh
GNU_NCURSES_TAR		:= $(CONFIG_GNU_NCURSES_TAR)
GNU_NCURSES_PACKAGE	:= 
GNU_NCURSES_CONFIG	:=
SUB_TARGET		+= $(GNU_NCURSES_DIR)/build

GNU_NCURSES_sh = $(CONFIG_SHELL) $(GNU_NCURSES_SCRIPTS) \
               $1 $(GNU_NCURSES_NAME)X $(GNU_NCURSES_VERSION)X \
               $(GNU_NCURSES_SITE)X $(GNU_NCURSES_GITHUB)X \
               $(GNU_NCURSES_PATCH)X 5.0 \
	       $(CONFIG_GNU_NCURSES_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(GNU_NCURSES_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(GNU_NCURSES_SUBNAME)X \
               $(GNU_NCURSES_CONFIG)X $(CONFIG_GNU_NCURSES_CONFIG)X

$(GNU_NCURSES_DIR)/build: FORCE
	$(Q)$(call GNU_NCURSES_sh,$(srctree))
