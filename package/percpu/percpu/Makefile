################################################
#
# percpu
#
################################################
PK_PERCPU_BASE_NAME        := percpu
PK_PERCPU_BASE_VERSION     := $(CONFIG_PK_PERCPU_BASE_VERSION)
PK_PERCPU_BASE_SITE        := $(CONFIG_PK_PERCPU_BASE_URL)
PK_PERCPU_BASE_GITHUB      := $(CONFIG_PK_PERCPU_BASE_GITHUB)
PK_PERCPU_BASE_SUBNAME     :=
PK_PERCPU_BASE_BUILDARCH   := $(CONFIG_PK_PERCPU_BASE_BUILDARCH)
PK_PERCPU_BASE_DIR         := $(srctree)/package/percpu/percpu
PK_PERCPU_BASE_PATCH       := $(PK_PERCPU_BASE_DIR)/patch
PK_PERCPU_BASE_BSBIT       := percpu-$(PK_PERCPU_BASE_VERSION).bsbit
PK_PERCPU_BASE_OUT         :=
PK_PERCPU_BASE_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_PERCPU_BASE_TAR         := $(CONFIG_PK_PERCPU_BASE_TAR)
PK_PERCPU_BASE_PACKAGE     :=
PK_PERCPU_BASE_CONFIG      := $(CONFIG_PK_PERCPU_BASE_CONFIG)
SUB_TARGET                  += $(PK_PERCPU_BASE_DIR)/build

PK_PERCPU_BASE_sh = $(CONFIG_SHELL) $(PK_PERCPU_BASE_SCRIPTS) \
                 $1X \
                 $(PK_PERCPU_BASE_NAME)X \
                 $(PK_PERCPU_BASE_VERSION)X \
                 $(PK_PERCPU_BASE_SITE)X \
                 $(PK_PERCPU_BASE_GITHUB)X \
                 $(PK_PERCPU_BASE_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_PERCPU_BASE_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_PERCPU_BASE_SUBNAME)X \
                 $(CONFIG_PK_PERCPU_BASE_CONFIG)X \
                 $(CONFIG_PK_PERCPU_BASE_LIBPATH)X \
                 $(CONFIG_PK_PERCPU_BASE_CPPFLAGS)X \
                 $(CONFIG_PK_PERCPU_BASE_DPKCONFIG)X \
                 $(CONFIG_PK_PERCPU_BASE_CFLAGS)X \
                 $(CONFIG_PK_PERCPU_BASE_LDFLAGS)X \
                 $(CONFIG_PK_PERCPU_BASE_CXXFLAGS)X \
                 $(CONFIG_PK_PERCPU_BASE_ASFLAGS)X \
                 $(PK_PERCPU_BASE_BSBIT)X \
                 $(PK_PERCPU_BASE_BUILDARCH)X \
		 $(PK_PERCPU_BASE_CSRCFILE)X \
                 $(CONFIG_PK_PERCPU_BASE_SRCFILE)X \
                 $(CONFIG_PK_PERCPU_BASE_CSRCFILE)

$(PK_PERCPU_BASE_DIR)/build: FORCE
	$(Q)$(call PK_PERCPU_BASE_sh,$(srctree))
