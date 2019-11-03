################################################
#
# tetris
#
################################################
PK_TETRIS_NAME        := tetris
PK_TETRIS_VERSION     := $(CONFIG_PK_TETRIS_VERSION)
PK_TETRIS_SITE        := $(CONFIG_PK_TETRIS_URL)
PK_TETRIS_GITHUB      := $(CONFIG_PK_TETRIS_GITHUB)
PK_TETRIS_SUBNAME     :=
PK_TETRIS_BUILDARCH   := $(CONFIG_PK_TETRIS_BUILDARCH)
PK_TETRIS_DIR         := $(srctree)/package/tetris
PK_TETRIS_PATCH       := $(PK_TETRIS_DIR)/patch
PK_TETRIS_BSBIT       := tetris-$(PK_TETRIS_VERSION).bsbit
PK_TETRIS_OUT         :=
PK_TETRIS_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_TETRIS_TAR         := $(CONFIG_PK_TETRIS_TAR)
PK_TETRIS_PACKAGE     :=
PK_TETRIS_CONFIG      := $(CONFIG_PK_TETRIS_CONFIG)
SUB_TARGET                  += $(PK_TETRIS_DIR)/build

PK_TETRIS_sh = $(CONFIG_SHELL) $(PK_TETRIS_SCRIPTS) \
                 $1X \
                 $(PK_TETRIS_NAME)X \
                 $(PK_TETRIS_VERSION)X \
                 $(PK_TETRIS_SITE)X \
                 $(PK_TETRIS_GITHUB)X \
                 $(PK_TETRIS_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_TETRIS_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_TETRIS_SUBNAME)X \
                 $(CONFIG_PK_TETRIS_CONFIG)X \
                 $(CONFIG_PK_TETRIS_LIBPATH)X \
                 $(CONFIG_PK_TETRIS_CPPFLAGS)X \
                 $(CONFIG_PK_TETRIS_DPKCONFIG)X \
                 $(CONFIG_PK_TETRIS_CFLAGS)X \
                 $(CONFIG_PK_TETRIS_LDFLAGS)X \
                 $(CONFIG_PK_TETRIS_CXXFLAGS)X \
                 $(CONFIG_PK_TETRIS_ASFLAGS)X \
                 $(PK_TETRIS_BSBIT)X \
                 $(PK_TETRIS_BUILDARCH)X \
		 $(PK_TETRIS_CSRCFILE)X \
                 $(CONFIG_PK_TETRIS_SRCFILE)X \
                 $(CONFIG_PK_TETRIS_CSRCFILE)

$(PK_TETRIS_DIR)/build: FORCE
	$(Q)$(call PK_TETRIS_sh,$(srctree))
