################################################
#
# rol8
#
################################################
PK_BITOPS_ROL8_NAME        := rol8
PK_BITOPS_ROL8_VERSION     := $(CONFIG_PK_BITOPS_ROL8_VERSION)
PK_BITOPS_ROL8_SITE        := $(CONFIG_PK_BITOPS_ROL8_URL)
PK_BITOPS_ROL8_GITHUB      := $(CONFIG_PK_BITOPS_ROL8_GITHUB)
PK_BITOPS_ROL8_SUBNAME     :=
PK_BITOPS_ROL8_BUILDARCH   := $(CONFIG_PK_BITOPS_ROL8_BUILDARCH)
PK_BITOPS_ROL8_DIR         := $(srctree)/package/bitops/rol8
PK_BITOPS_ROL8_PATCH       := $(PK_BITOPS_ROL8_DIR)/patch
PK_BITOPS_ROL8_BSBIT       := rol8-$(PK_BITOPS_ROL8_VERSION).bsbit
PK_BITOPS_ROL8_OUT         :=
PK_BITOPS_ROL8_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_BITOPS_ROL8_TAR         := $(CONFIG_PK_BITOPS_ROL8_TAR)
PK_BITOPS_ROL8_PACKAGE     :=
PK_BITOPS_ROL8_CONFIG      := $(CONFIG_PK_BITOPS_ROL8_CONFIG)
SUB_TARGET                  += $(PK_BITOPS_ROL8_DIR)/build

PK_BITOPS_ROL8_sh = $(CONFIG_SHELL) $(PK_BITOPS_ROL8_SCRIPTS) \
                 $1X \
                 $(PK_BITOPS_ROL8_NAME)X \
                 $(PK_BITOPS_ROL8_VERSION)X \
                 $(PK_BITOPS_ROL8_SITE)X \
                 $(PK_BITOPS_ROL8_GITHUB)X \
                 $(PK_BITOPS_ROL8_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_BITOPS_ROL8_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_BITOPS_ROL8_SUBNAME)X \
                 $(CONFIG_PK_BITOPS_ROL8_CONFIG)X \
                 $(CONFIG_PK_BITOPS_ROL8_LIBPATH)X \
                 $(CONFIG_PK_BITOPS_ROL8_CPPFLAGS)X \
                 $(CONFIG_PK_BITOPS_ROL8_DPKCONFIG)X \
                 $(CONFIG_PK_BITOPS_ROL8_CFLAGS)X \
                 $(CONFIG_PK_BITOPS_ROL8_LDFLAGS)X \
                 $(CONFIG_PK_BITOPS_ROL8_CXXFLAGS)X \
                 $(CONFIG_PK_BITOPS_ROL8_ASFLAGS)X \
                 $(PK_BITOPS_ROL8_BSBIT)X \
                 $(PK_BITOPS_ROL8_BUILDARCH)X \
		 $(PK_BITOPS_ROL8_CSRCFILE)X \
                 $(CONFIG_PK_BITOPS_ROL8_SRCFILE)X \
                 $(CONFIG_PK_BITOPS_ROL8_CSRCFILE)

$(PK_BITOPS_ROL8_DIR)/build: FORCE
	$(Q)$(call PK_BITOPS_ROL8_sh,$(srctree))
