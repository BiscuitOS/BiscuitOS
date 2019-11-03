################################################
#
# automake
#
################################################
PK_AUTOMAKE_NAME        := automake
PK_AUTOMAKE_VERSION     := $(CONFIG_PK_AUTOMAKE_VERSION)
PK_AUTOMAKE_SITE        := $(CONFIG_PK_AUTOMAKE_URL)
PK_AUTOMAKE_GITHUB      := $(CONFIG_PK_AUTOMAKE_GITHUB)
PK_AUTOMAKE_SUBNAME     :=
PK_AUTOMAKE_BUILDARCH   := $(CONFIG_PK_AUTOMAKE_BUILDARCH)
PK_AUTOMAKE_DIR         := $(srctree)/package/automake
PK_AUTOMAKE_PATCH       := $(PK_AUTOMAKE_DIR)/patch
PK_AUTOMAKE_BSBIT       := automake-$(PK_AUTOMAKE_VERSION).bsbit
PK_AUTOMAKE_OUT         :=
PK_AUTOMAKE_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_AUTOMAKE_TAR         := $(CONFIG_PK_AUTOMAKE_TAR)
PK_AUTOMAKE_PACKAGE     :=
PK_AUTOMAKE_CONFIG      := $(CONFIG_PK_AUTOMAKE_CONFIG)
SUB_TARGET              += $(PK_AUTOMAKE_DIR)/build

PK_AUTOMAKE_sh = $(CONFIG_SHELL) $(PK_AUTOMAKE_SCRIPTS) \
                 $1X \
                 $(PK_AUTOMAKE_NAME)X \
                 $(PK_AUTOMAKE_VERSION)X \
                 $(PK_AUTOMAKE_SITE)X \
                 $(PK_AUTOMAKE_GITHUB)X \
                 $(PK_AUTOMAKE_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_AUTOMAKE_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_AUTOMAKE_SUBNAME)X \
                 $(CONFIG_PK_AUTOMAKE_CONFIG)X \
                 $(CONFIG_PK_AUTOMAKE_LIBPATH)X \
                 $(CONFIG_PK_AUTOMAKE_CPPFLAGS)X \
                 $(CONFIG_PK_AUTOMAKE_DPKCONFIG)X \
                 $(CONFIG_PK_AUTOMAKE_CFLAGS)X \
                 $(CONFIG_PK_AUTOMAKE_LDFLAGS)X \
                 $(CONFIG_PK_AUTOMAKE_CXXFLAGS)X \
                 $(CONFIG_PK_AUTOMAKE_ASFLAGS)X \
                 $(PK_AUTOMAKE_BSBIT)X \
                 $(PK_AUTOMAKE_BUILDARCH)X

$(PK_AUTOMAKE_DIR)/build: FORCE
	$(Q)$(call PK_AUTOMAKE_sh,$(srctree))
