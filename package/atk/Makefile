################################################
#
# atk
#
################################################
PK_ATK_NAME        := atk
PK_ATK_VERSION     := $(CONFIG_PK_ATK_VERSION)
PK_ATK_SITE        := $(CONFIG_PK_ATK_URL)
PK_ATK_GITHUB      := $(CONFIG_PK_ATK_GITHUB)
PK_ATK_SUBNAME     :=
PK_ATK_BUILDARCH   := $(CONFIG_PK_ATK_BUILDARCH)
PK_ATK_DIR         := $(srctree)/package/atk
PK_ATK_PATCH       := $(PK_ATK_DIR)/patch
PK_ATK_BSBIT       := atk-$(PK_ATK_VERSION).bsbit
PK_ATK_OUT         :=
PK_ATK_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_ATK_TAR         := $(CONFIG_PK_ATK_TAR)
PK_ATK_PACKAGE     :=
PK_ATK_CONFIG      := $(CONFIG_PK_ATK_CONFIG)
SUB_TARGET         += $(PK_ATK_DIR)/build

PK_ATK_sh = $(CONFIG_SHELL) $(PK_ATK_SCRIPTS) \
                 $1X \
                 $(PK_ATK_NAME)X \
                 $(PK_ATK_VERSION)X \
                 $(PK_ATK_SITE)X \
                 $(PK_ATK_GITHUB)X \
                 $(PK_ATK_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_ATK_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_ATK_SUBNAME)X \
                 $(CONFIG_PK_ATK_CONFIG)X \
                 $(CONFIG_PK_ATK_LIBPATH)X \
                 $(CONFIG_PK_ATK_CPPFLAGS)X \
                 $(CONFIG_PK_ATK_DPKCONFIG)X \
                 $(CONFIG_PK_ATK_CFLAGS)X \
                 $(CONFIG_PK_ATK_LDFLAGS)X \
                 $(CONFIG_PK_ATK_CXXFLAGS)X \
                 $(CONFIG_PK_ATK_ASFLAGS)X \
                 $(PK_ATK_BSBIT)X \
                 $(PK_ATK_BUILDARCH)X

$(PK_ATK_DIR)/build: FORCE
	$(Q)$(call PK_ATK_sh,$(srctree))
