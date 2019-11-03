################################################
#
# snake
#
################################################
PK_SNAKE_NAME        := snake
PK_SNAKE_VERSION     := $(CONFIG_PK_SNAKE_VERSION)
PK_SNAKE_SITE        := $(CONFIG_PK_SNAKE_URL)
PK_SNAKE_GITHUB      := $(CONFIG_PK_SNAKE_GITHUB)
PK_SNAKE_SUBNAME     :=
PK_SNAKE_BUILDARCH   := $(CONFIG_PK_SNAKE_BUILDARCH)
PK_SNAKE_DIR         := $(srctree)/package/snake
PK_SNAKE_PATCH       := $(PK_SNAKE_DIR)/patch
PK_SNAKE_BSBIT       := snake-$(PK_SNAKE_VERSION).bsbit
PK_SNAKE_OUT         :=
PK_SNAKE_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_SNAKE_TAR         := $(CONFIG_PK_SNAKE_TAR)
PK_SNAKE_PACKAGE     :=
PK_SNAKE_CONFIG      := $(CONFIG_PK_SNAKE_CONFIG)
SUB_TARGET                  += $(PK_SNAKE_DIR)/build

PK_SNAKE_sh = $(CONFIG_SHELL) $(PK_SNAKE_SCRIPTS) \
                 $1X \
                 $(PK_SNAKE_NAME)X \
                 $(PK_SNAKE_VERSION)X \
                 $(PK_SNAKE_SITE)X \
                 $(PK_SNAKE_GITHUB)X \
                 $(PK_SNAKE_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_SNAKE_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_SNAKE_SUBNAME)X \
                 $(CONFIG_PK_SNAKE_CONFIG)X \
                 $(CONFIG_PK_SNAKE_LIBPATH)X \
                 $(CONFIG_PK_SNAKE_CPPFLAGS)X \
                 $(CONFIG_PK_SNAKE_DPKCONFIG)X \
                 $(CONFIG_PK_SNAKE_CFLAGS)X \
                 $(CONFIG_PK_SNAKE_LDFLAGS)X \
                 $(CONFIG_PK_SNAKE_CXXFLAGS)X \
                 $(CONFIG_PK_SNAKE_ASFLAGS)X \
                 $(PK_SNAKE_BSBIT)X \
                 $(PK_SNAKE_BUILDARCH)X \
		 $(PK_SNAKE_CSRCFILE)X \
                 $(CONFIG_PK_SNAKE_SRCFILE)X \
                 $(CONFIG_PK_SNAKE_CSRCFILE)

$(PK_SNAKE_DIR)/build: FORCE
	$(Q)$(call PK_SNAKE_sh,$(srctree))
