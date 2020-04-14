################################################
#
# rwlock_base
#
################################################
PK_RWLOCK_BASE_NAME        := rwlock_base
PK_RWLOCK_BASE_VERSION     := $(CONFIG_PK_RWLOCK_BASE_VERSION)
PK_RWLOCK_BASE_SITE        := $(CONFIG_PK_RWLOCK_BASE_URL)
PK_RWLOCK_BASE_GITHUB      := $(CONFIG_PK_RWLOCK_BASE_GITHUB)
PK_RWLOCK_BASE_SUBNAME     :=
PK_RWLOCK_BASE_BUILDARCH   := $(CONFIG_PK_RWLOCK_BASE_BUILDARCH)
PK_RWLOCK_BASE_DIR         := $(srctree)/package/lock/rwlock/rwlock_base
PK_RWLOCK_BASE_PATCH       := $(PK_RWLOCK_BASE_DIR)/patch
PK_RWLOCK_BASE_BSBIT       := rwlock_base-$(PK_RWLOCK_BASE_VERSION).bsbit
PK_RWLOCK_BASE_OUT         :=
PK_RWLOCK_BASE_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_RWLOCK_BASE_TAR         := $(CONFIG_PK_RWLOCK_BASE_TAR)
PK_RWLOCK_BASE_PACKAGE     :=
PK_RWLOCK_BASE_CONFIG      := $(CONFIG_PK_RWLOCK_BASE_CONFIG)
SUB_TARGET                  += $(PK_RWLOCK_BASE_DIR)/build

PK_RWLOCK_BASE_sh = $(CONFIG_SHELL) $(PK_RWLOCK_BASE_SCRIPTS) \
                 $1X \
                 $(PK_RWLOCK_BASE_NAME)X \
                 $(PK_RWLOCK_BASE_VERSION)X \
                 $(PK_RWLOCK_BASE_SITE)X \
                 $(PK_RWLOCK_BASE_GITHUB)X \
                 $(PK_RWLOCK_BASE_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_RWLOCK_BASE_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_RWLOCK_BASE_SUBNAME)X \
                 $(CONFIG_PK_RWLOCK_BASE_CONFIG)X \
                 $(CONFIG_PK_RWLOCK_BASE_LIBPATH)X \
                 $(CONFIG_PK_RWLOCK_BASE_CPPFLAGS)X \
                 $(CONFIG_PK_RWLOCK_BASE_DPKCONFIG)X \
                 $(CONFIG_PK_RWLOCK_BASE_CFLAGS)X \
                 $(CONFIG_PK_RWLOCK_BASE_LDFLAGS)X \
                 $(CONFIG_PK_RWLOCK_BASE_CXXFLAGS)X \
                 $(CONFIG_PK_RWLOCK_BASE_ASFLAGS)X \
                 $(PK_RWLOCK_BASE_BSBIT)X \
                 $(PK_RWLOCK_BASE_BUILDARCH)X \
		 $(PK_RWLOCK_BASE_CSRCFILE)X \
                 $(CONFIG_PK_RWLOCK_BASE_SRCFILE)X \
                 $(CONFIG_PK_RWLOCK_BASE_CSRCFILE)

$(PK_RWLOCK_BASE_DIR)/build: FORCE
	$(Q)$(call PK_RWLOCK_BASE_sh,$(srctree))
