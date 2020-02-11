################################################
#
# alloc_percpu
#
################################################
PK_ALLOC_PERCPU_NAME        := alloc_percpu
PK_ALLOC_PERCPU_VERSION     := $(CONFIG_PK_ALLOC_PERCPU_VERSION)
PK_ALLOC_PERCPU_SITE        := $(CONFIG_PK_ALLOC_PERCPU_URL)
PK_ALLOC_PERCPU_GITHUB      := $(CONFIG_PK_ALLOC_PERCPU_GITHUB)
PK_ALLOC_PERCPU_SUBNAME     :=
PK_ALLOC_PERCPU_BUILDARCH   := $(CONFIG_PK_ALLOC_PERCPU_BUILDARCH)
PK_ALLOC_PERCPU_DIR         := $(srctree)/package/percpu/alloc_percpu
PK_ALLOC_PERCPU_PATCH       := $(PK_ALLOC_PERCPU_DIR)/patch
PK_ALLOC_PERCPU_BSBIT       := alloc_percpu-$(PK_ALLOC_PERCPU_VERSION).bsbit
PK_ALLOC_PERCPU_OUT         :=
PK_ALLOC_PERCPU_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_ALLOC_PERCPU_TAR         := $(CONFIG_PK_ALLOC_PERCPU_TAR)
PK_ALLOC_PERCPU_PACKAGE     :=
PK_ALLOC_PERCPU_CONFIG      := $(CONFIG_PK_ALLOC_PERCPU_CONFIG)
SUB_TARGET                  += $(PK_ALLOC_PERCPU_DIR)/build

PK_ALLOC_PERCPU_sh = $(CONFIG_SHELL) $(PK_ALLOC_PERCPU_SCRIPTS) \
                 $1X \
                 $(PK_ALLOC_PERCPU_NAME)X \
                 $(PK_ALLOC_PERCPU_VERSION)X \
                 $(PK_ALLOC_PERCPU_SITE)X \
                 $(PK_ALLOC_PERCPU_GITHUB)X \
                 $(PK_ALLOC_PERCPU_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_ALLOC_PERCPU_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_ALLOC_PERCPU_SUBNAME)X \
                 $(CONFIG_PK_ALLOC_PERCPU_CONFIG)X \
                 $(CONFIG_PK_ALLOC_PERCPU_LIBPATH)X \
                 $(CONFIG_PK_ALLOC_PERCPU_CPPFLAGS)X \
                 $(CONFIG_PK_ALLOC_PERCPU_DPKCONFIG)X \
                 $(CONFIG_PK_ALLOC_PERCPU_CFLAGS)X \
                 $(CONFIG_PK_ALLOC_PERCPU_LDFLAGS)X \
                 $(CONFIG_PK_ALLOC_PERCPU_CXXFLAGS)X \
                 $(CONFIG_PK_ALLOC_PERCPU_ASFLAGS)X \
                 $(PK_ALLOC_PERCPU_BSBIT)X \
                 $(PK_ALLOC_PERCPU_BUILDARCH)X \
		 $(PK_ALLOC_PERCPU_CSRCFILE)X \
                 $(CONFIG_PK_ALLOC_PERCPU_SRCFILE)X \
                 $(CONFIG_PK_ALLOC_PERCPU_CSRCFILE)

$(PK_ALLOC_PERCPU_DIR)/build: FORCE
	$(Q)$(call PK_ALLOC_PERCPU_sh,$(srctree))
