################################################
#
# HASH_MIX
#
################################################
PK_HASH_MIX_NAME        := HASH_MIX
PK_HASH_MIX_VERSION     := $(CONFIG_PK_HASH_MIX_VERSION)
PK_HASH_MIX_SITE        := $(CONFIG_PK_HASH_MIX_URL)
PK_HASH_MIX_GITHUB      := $(CONFIG_PK_HASH_MIX_GITHUB)
PK_HASH_MIX_SUBNAME     :=
PK_HASH_MIX_BUILDARCH   := $(CONFIG_PK_HASH_MIX_BUILDARCH)
PK_HASH_MIX_DIR         := $(srctree)/package/hash/HASH_MIX
PK_HASH_MIX_PATCH       := $(PK_HASH_MIX_DIR)/patch
PK_HASH_MIX_BSBIT       := HASH_MIX-$(PK_HASH_MIX_VERSION).bsbit
PK_HASH_MIX_OUT         :=
PK_HASH_MIX_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_HASH_MIX_TAR         := $(CONFIG_PK_HASH_MIX_TAR)
PK_HASH_MIX_PACKAGE     :=
PK_HASH_MIX_CONFIG      := $(CONFIG_PK_HASH_MIX_CONFIG)
SUB_TARGET                  += $(PK_HASH_MIX_DIR)/build

PK_HASH_MIX_sh = $(CONFIG_SHELL) $(PK_HASH_MIX_SCRIPTS) \
                 $1X \
                 $(PK_HASH_MIX_NAME)X \
                 $(PK_HASH_MIX_VERSION)X \
                 $(PK_HASH_MIX_SITE)X \
                 $(PK_HASH_MIX_GITHUB)X \
                 $(PK_HASH_MIX_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_HASH_MIX_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_HASH_MIX_SUBNAME)X \
                 $(CONFIG_PK_HASH_MIX_CONFIG)X \
                 $(CONFIG_PK_HASH_MIX_LIBPATH)X \
                 $(CONFIG_PK_HASH_MIX_CPPFLAGS)X \
                 $(CONFIG_PK_HASH_MIX_DPKCONFIG)X \
                 $(CONFIG_PK_HASH_MIX_CFLAGS)X \
                 $(CONFIG_PK_HASH_MIX_LDFLAGS)X \
                 $(CONFIG_PK_HASH_MIX_CXXFLAGS)X \
                 $(CONFIG_PK_HASH_MIX_ASFLAGS)X \
                 $(PK_HASH_MIX_BSBIT)X \
                 $(PK_HASH_MIX_BUILDARCH)X \
		 $(PK_HASH_MIX_CSRCFILE)X \
                 $(CONFIG_PK_HASH_MIX_SRCFILE)X \
                 $(CONFIG_PK_HASH_MIX_CSRCFILE)

$(PK_HASH_MIX_DIR)/build: FORCE
	$(Q)$(call PK_HASH_MIX_sh,$(srctree))
