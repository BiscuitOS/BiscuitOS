################################################
#
# rculock_base
#
################################################
PK_RCULOCK_BASE_NAME        := rculock_base
PK_RCULOCK_BASE_VERSION     := $(CONFIG_PK_RCULOCK_BASE_VERSION)
PK_RCULOCK_BASE_SITE        := $(CONFIG_PK_RCULOCK_BASE_URL)
PK_RCULOCK_BASE_GITHUB      := $(CONFIG_PK_RCULOCK_BASE_GITHUB)
PK_RCULOCK_BASE_SUBNAME     :=
PK_RCULOCK_BASE_BUILDARCH   := $(CONFIG_PK_RCULOCK_BASE_BUILDARCH)
PK_RCULOCK_BASE_DIR         := $(srctree)/package/lock/rculock/rculock_base
PK_RCULOCK_BASE_PATCH       := $(PK_RCULOCK_BASE_DIR)/patch
PK_RCULOCK_BASE_BSBIT       := rculock_base-$(PK_RCULOCK_BASE_VERSION).bsbit
PK_RCULOCK_BASE_OUT         :=
PK_RCULOCK_BASE_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_RCULOCK_BASE_TAR         := $(CONFIG_PK_RCULOCK_BASE_TAR)
PK_RCULOCK_BASE_PACKAGE     :=
PK_RCULOCK_BASE_CONFIG      := $(CONFIG_PK_RCULOCK_BASE_CONFIG)
SUB_TARGET                  += $(PK_RCULOCK_BASE_DIR)/build

PK_RCULOCK_BASE_sh = $(CONFIG_SHELL) $(PK_RCULOCK_BASE_SCRIPTS) \
                 $1X \
                 $(PK_RCULOCK_BASE_NAME)X \
                 $(PK_RCULOCK_BASE_VERSION)X \
                 $(PK_RCULOCK_BASE_SITE)X \
                 $(PK_RCULOCK_BASE_GITHUB)X \
                 $(PK_RCULOCK_BASE_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_RCULOCK_BASE_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_RCULOCK_BASE_SUBNAME)X \
                 $(CONFIG_PK_RCULOCK_BASE_CONFIG)X \
                 $(CONFIG_PK_RCULOCK_BASE_LIBPATH)X \
                 $(CONFIG_PK_RCULOCK_BASE_CPPFLAGS)X \
                 $(CONFIG_PK_RCULOCK_BASE_DPKCONFIG)X \
                 $(CONFIG_PK_RCULOCK_BASE_CFLAGS)X \
                 $(CONFIG_PK_RCULOCK_BASE_LDFLAGS)X \
                 $(CONFIG_PK_RCULOCK_BASE_CXXFLAGS)X \
                 $(CONFIG_PK_RCULOCK_BASE_ASFLAGS)X \
                 $(PK_RCULOCK_BASE_BSBIT)X \
                 $(PK_RCULOCK_BASE_BUILDARCH)X \
		 $(PK_RCULOCK_BASE_CSRCFILE)X \
                 $(CONFIG_PK_RCULOCK_BASE_SRCFILE)X \
                 $(CONFIG_PK_RCULOCK_BASE_CSRCFILE)

$(PK_RCULOCK_BASE_DIR)/build: FORCE
	$(Q)$(call PK_RCULOCK_BASE_sh,$(srctree))
