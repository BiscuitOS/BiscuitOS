################################################
#
# 2048
#
################################################
PK_2048_NAME        := 2048
PK_2048_VERSION     := $(CONFIG_PK_2048_VERSION)
PK_2048_SITE        := $(CONFIG_PK_2048_URL)
PK_2048_GITHUB      := $(CONFIG_PK_2048_GITHUB)
PK_2048_SUBNAME     :=
PK_2048_BUILDARCH   := $(CONFIG_PK_2048_BUILDARCH)
PK_2048_DIR         := $(srctree)/package/2048
PK_2048_PATCH       := $(PK_2048_DIR)/patch
PK_2048_BSBIT       := 2048-$(PK_2048_VERSION).bsbit
PK_2048_OUT         :=
PK_2048_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_2048_TAR         := $(CONFIG_PK_2048_TAR)
PK_2048_PACKAGE     :=
PK_2048_CONFIG      := $(CONFIG_PK_2048_CONFIG)
SUB_TARGET                  += $(PK_2048_DIR)/build

PK_2048_sh = $(CONFIG_SHELL) $(PK_2048_SCRIPTS) \
                 $1X \
                 $(PK_2048_NAME)X \
                 $(PK_2048_VERSION)X \
                 $(PK_2048_SITE)X \
                 $(PK_2048_GITHUB)X \
                 $(PK_2048_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_2048_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_2048_SUBNAME)X \
                 $(CONFIG_PK_2048_CONFIG)X \
                 $(CONFIG_PK_2048_LIBPATH)X \
                 $(CONFIG_PK_2048_CPPFLAGS)X \
                 $(CONFIG_PK_2048_DPKCONFIG)X \
                 $(CONFIG_PK_2048_CFLAGS)X \
                 $(CONFIG_PK_2048_LDFLAGS)X \
                 $(CONFIG_PK_2048_CXXFLAGS)X \
                 $(CONFIG_PK_2048_ASFLAGS)X \
                 $(PK_2048_BSBIT)X \
                 $(PK_2048_BUILDARCH)X \
		 $(PK_2048_CSRCFILE)X \
                 $(CONFIG_PK_2048_SRCFILE)X \
                 $(CONFIG_PK_2048_CSRCFILE)

$(PK_2048_DIR)/build: FORCE
	$(Q)$(call PK_2048_sh,$(srctree))
