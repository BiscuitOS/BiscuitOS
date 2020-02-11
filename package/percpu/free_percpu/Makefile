################################################
#
# free_percpu
#
################################################
PK_FREE_PERCPU_NAME        := free_percpu
PK_FREE_PERCPU_VERSION     := $(CONFIG_PK_FREE_PERCPU_VERSION)
PK_FREE_PERCPU_SITE        := $(CONFIG_PK_FREE_PERCPU_URL)
PK_FREE_PERCPU_GITHUB      := $(CONFIG_PK_FREE_PERCPU_GITHUB)
PK_FREE_PERCPU_SUBNAME     :=
PK_FREE_PERCPU_BUILDARCH   := $(CONFIG_PK_FREE_PERCPU_BUILDARCH)
PK_FREE_PERCPU_DIR         := $(srctree)/package/percpu/free_percpu
PK_FREE_PERCPU_PATCH       := $(PK_FREE_PERCPU_DIR)/patch
PK_FREE_PERCPU_BSBIT       := free_percpu-$(PK_FREE_PERCPU_VERSION).bsbit
PK_FREE_PERCPU_OUT         :=
PK_FREE_PERCPU_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_FREE_PERCPU_TAR         := $(CONFIG_PK_FREE_PERCPU_TAR)
PK_FREE_PERCPU_PACKAGE     :=
PK_FREE_PERCPU_CONFIG      := $(CONFIG_PK_FREE_PERCPU_CONFIG)
SUB_TARGET                  += $(PK_FREE_PERCPU_DIR)/build

PK_FREE_PERCPU_sh = $(CONFIG_SHELL) $(PK_FREE_PERCPU_SCRIPTS) \
                 $1X \
                 $(PK_FREE_PERCPU_NAME)X \
                 $(PK_FREE_PERCPU_VERSION)X \
                 $(PK_FREE_PERCPU_SITE)X \
                 $(PK_FREE_PERCPU_GITHUB)X \
                 $(PK_FREE_PERCPU_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_FREE_PERCPU_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_FREE_PERCPU_SUBNAME)X \
                 $(CONFIG_PK_FREE_PERCPU_CONFIG)X \
                 $(CONFIG_PK_FREE_PERCPU_LIBPATH)X \
                 $(CONFIG_PK_FREE_PERCPU_CPPFLAGS)X \
                 $(CONFIG_PK_FREE_PERCPU_DPKCONFIG)X \
                 $(CONFIG_PK_FREE_PERCPU_CFLAGS)X \
                 $(CONFIG_PK_FREE_PERCPU_LDFLAGS)X \
                 $(CONFIG_PK_FREE_PERCPU_CXXFLAGS)X \
                 $(CONFIG_PK_FREE_PERCPU_ASFLAGS)X \
                 $(PK_FREE_PERCPU_BSBIT)X \
                 $(PK_FREE_PERCPU_BUILDARCH)X \
		 $(PK_FREE_PERCPU_CSRCFILE)X \
                 $(CONFIG_PK_FREE_PERCPU_SRCFILE)X \
                 $(CONFIG_PK_FREE_PERCPU_CSRCFILE)

$(PK_FREE_PERCPU_DIR)/build: FORCE
	$(Q)$(call PK_FREE_PERCPU_sh,$(srctree))
