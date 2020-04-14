################################################
#
# seqlock_base
#
################################################
PK_SEQLOCK_BASE_NAME        := seqlock_base
PK_SEQLOCK_BASE_VERSION     := $(CONFIG_PK_SEQLOCK_BASE_VERSION)
PK_SEQLOCK_BASE_SITE        := $(CONFIG_PK_SEQLOCK_BASE_URL)
PK_SEQLOCK_BASE_GITHUB      := $(CONFIG_PK_SEQLOCK_BASE_GITHUB)
PK_SEQLOCK_BASE_SUBNAME     :=
PK_SEQLOCK_BASE_BUILDARCH   := $(CONFIG_PK_SEQLOCK_BASE_BUILDARCH)
PK_SEQLOCK_BASE_DIR         := $(srctree)/package/lock/seqlock/seqlock_base
PK_SEQLOCK_BASE_PATCH       := $(PK_SEQLOCK_BASE_DIR)/patch
PK_SEQLOCK_BASE_BSBIT       := seqlock_base-$(PK_SEQLOCK_BASE_VERSION).bsbit
PK_SEQLOCK_BASE_OUT         :=
PK_SEQLOCK_BASE_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_SEQLOCK_BASE_TAR         := $(CONFIG_PK_SEQLOCK_BASE_TAR)
PK_SEQLOCK_BASE_PACKAGE     :=
PK_SEQLOCK_BASE_CONFIG      := $(CONFIG_PK_SEQLOCK_BASE_CONFIG)
SUB_TARGET                  += $(PK_SEQLOCK_BASE_DIR)/build

PK_SEQLOCK_BASE_sh = $(CONFIG_SHELL) $(PK_SEQLOCK_BASE_SCRIPTS) \
                 $1X \
                 $(PK_SEQLOCK_BASE_NAME)X \
                 $(PK_SEQLOCK_BASE_VERSION)X \
                 $(PK_SEQLOCK_BASE_SITE)X \
                 $(PK_SEQLOCK_BASE_GITHUB)X \
                 $(PK_SEQLOCK_BASE_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_SEQLOCK_BASE_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_SEQLOCK_BASE_SUBNAME)X \
                 $(CONFIG_PK_SEQLOCK_BASE_CONFIG)X \
                 $(CONFIG_PK_SEQLOCK_BASE_LIBPATH)X \
                 $(CONFIG_PK_SEQLOCK_BASE_CPPFLAGS)X \
                 $(CONFIG_PK_SEQLOCK_BASE_DPKCONFIG)X \
                 $(CONFIG_PK_SEQLOCK_BASE_CFLAGS)X \
                 $(CONFIG_PK_SEQLOCK_BASE_LDFLAGS)X \
                 $(CONFIG_PK_SEQLOCK_BASE_CXXFLAGS)X \
                 $(CONFIG_PK_SEQLOCK_BASE_ASFLAGS)X \
                 $(PK_SEQLOCK_BASE_BSBIT)X \
                 $(PK_SEQLOCK_BASE_BUILDARCH)X \
		 $(PK_SEQLOCK_BASE_CSRCFILE)X \
                 $(CONFIG_PK_SEQLOCK_BASE_SRCFILE)X \
                 $(CONFIG_PK_SEQLOCK_BASE_CSRCFILE)

$(PK_SEQLOCK_BASE_DIR)/build: FORCE
	$(Q)$(call PK_SEQLOCK_BASE_sh,$(srctree))
