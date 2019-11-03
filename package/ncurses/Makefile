################################################
#
# ncurses
#
################################################
PK_NCURSES_NAME        := ncurses
PK_NCURSES_VERSION     := $(CONFIG_PK_NCURSES_VERSION)
PK_NCURSES_SITE        := $(CONFIG_PK_NCURSES_URL)
PK_NCURSES_GITHUB      := $(CONFIG_PK_NCURSES_GITHUB)
PK_NCURSES_SUBNAME     :=
PK_NCURSES_BUILDARCH   := $(CONFIG_PK_NCURSES_BUILDARCH)
PK_NCURSES_DIR         := $(srctree)/package/ncurses
PK_NCURSES_PATCH       := $(PK_NCURSES_DIR)/patch
PK_NCURSES_BSBIT       := ncurses-$(PK_NCURSES_VERSION).bsbit
PK_NCURSES_OUT         :=
PK_NCURSES_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_NCURSES_TAR         := $(CONFIG_PK_NCURSES_TAR)
PK_NCURSES_PACKAGE     :=
PK_NCURSES_CONFIG      := $(CONFIG_PK_NCURSES_CONFIG)
SUB_TARGET              += $(PK_NCURSES_DIR)/build

PK_NCURSES_sh = $(CONFIG_SHELL) $(PK_NCURSES_SCRIPTS) \
                 $1X \
                 $(PK_NCURSES_NAME)X \
                 $(PK_NCURSES_VERSION)X \
                 $(PK_NCURSES_SITE)X \
                 $(PK_NCURSES_GITHUB)X \
                 $(PK_NCURSES_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_NCURSES_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_NCURSES_SUBNAME)X \
                 $(CONFIG_PK_NCURSES_CONFIG)X \
                 $(CONFIG_PK_NCURSES_LIBPATH)X \
                 $(CONFIG_PK_NCURSES_CPPFLAGS)X \
                 $(CONFIG_PK_NCURSES_DPKCONFIG)X \
                 $(CONFIG_PK_NCURSES_CFLAGS)X \
                 $(CONFIG_PK_NCURSES_LDFLAGS)X \
                 $(CONFIG_PK_NCURSES_CXXFLAGS)X \
                 $(CONFIG_PK_NCURSES_ASFLAGS)X \
                 $(PK_NCURSES_BSBIT)X \
                 $(PK_NCURSES_BUILDARCH)X

$(PK_NCURSES_DIR)/build: FORCE
	$(Q)$(call PK_NCURSES_sh,$(srctree))
