################################################
#
# binutils
#
################################################
PK_GBINUTILS_NAME        := binutils
PK_GBINUTILS_VERSION     := $(CONFIG_PK_GBINUTILS_VERSION)
PK_GBINUTILS_SITE        := $(CONFIG_PK_GBINUTILS_URL)
PK_GBINUTILS_GITHUB      := $(CONFIG_PK_GBINUTILS_GITHUB)
PK_GBINUTILS_SUBNAME     :=
PK_GBINUTILS_BUILDARCH   := $(CONFIG_PK_GBINUTILS_BUILDARCH)
PK_GBINUTILS_DIR         := $(srctree)/package/binutils
PK_GBINUTILS_PATCH       := $(PK_GBINUTILS_DIR)/patch
PK_GBINUTILS_BSBIT       := binutils-$(PK_GBINUTILS_VERSION).bsbit
PK_GBINUTILS_OUT         :=
PK_GBINUTILS_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_GBINUTILS_TAR         := $(CONFIG_PK_GBINUTILS_TAR)
PK_GBINUTILS_PACKAGE     :=
PK_GBINUTILS_CONFIG      := $(CONFIG_PK_GBINUTILS_CONFIG)
SUB_TARGET              += $(PK_GBINUTILS_DIR)/build

PK_GBINUTILS_sh = $(CONFIG_SHELL) $(PK_GBINUTILS_SCRIPTS) \
                 $1X \
                 $(PK_GBINUTILS_NAME)X \
                 $(PK_GBINUTILS_VERSION)X \
                 $(PK_GBINUTILS_SITE)X \
                 $(PK_GBINUTILS_GITHUB)X \
                 $(PK_GBINUTILS_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_GBINUTILS_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_GBINUTILS_SUBNAME)X \
                 $(CONFIG_PK_GBINUTILS_CONFIG)X \
                 $(CONFIG_PK_GBINUTILS_LIBPATH)X \
                 $(CONFIG_PK_GBINUTILS_CPPFLAGS)X \
                 $(CONFIG_PK_GBINUTILS_DPKCONFIG)X \
                 $(CONFIG_PK_GBINUTILS_CFLAGS)X \
                 $(CONFIG_PK_GBINUTILS_LDFLAGS)X \
                 $(CONFIG_PK_GBINUTILS_CXXFLAGS)X \
                 $(CONFIG_PK_GBINUTILS_ASFLAGS)X \
                 $(PK_GBINUTILS_BSBIT)X \
                 $(PK_GBINUTILS_BUILDARCH)X

$(PK_GBINUTILS_DIR)/build: FORCE
	$(Q)$(call PK_GBINUTILS_sh,$(srctree))
