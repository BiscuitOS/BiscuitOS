################################################
#
# kmap_atomic
#
################################################
PK_KMAP_ATOMIC_NAME        := kmap_atomic
PK_KMAP_ATOMIC_VERSION     := $(CONFIG_PK_KMAP_ATOMIC_VERSION)
PK_KMAP_ATOMIC_SITE        := $(CONFIG_PK_KMAP_ATOMIC_URL)
PK_KMAP_ATOMIC_GITHUB      := $(CONFIG_PK_KMAP_ATOMIC_GITHUB)
PK_KMAP_ATOMIC_SUBNAME     :=
PK_KMAP_ATOMIC_BUILDARCH   := $(CONFIG_PK_KMAP_ATOMIC_BUILDARCH)
PK_KMAP_ATOMIC_DIR         := $(srctree)/package/kmap/kmap_atomic
PK_KMAP_ATOMIC_PATCH       := $(PK_KMAP_ATOMIC_DIR)/patch
PK_KMAP_ATOMIC_BSBIT       := kmap_atomic-$(PK_KMAP_ATOMIC_VERSION).bsbit
PK_KMAP_ATOMIC_OUT         :=
PK_KMAP_ATOMIC_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_KMAP_ATOMIC_TAR         := $(CONFIG_PK_KMAP_ATOMIC_TAR)
PK_KMAP_ATOMIC_PACKAGE     :=
PK_KMAP_ATOMIC_CONFIG      := $(CONFIG_PK_KMAP_ATOMIC_CONFIG)
SUB_TARGET                  += $(PK_KMAP_ATOMIC_DIR)/build

PK_KMAP_ATOMIC_sh = $(CONFIG_SHELL) $(PK_KMAP_ATOMIC_SCRIPTS) \
                 $1X \
                 $(PK_KMAP_ATOMIC_NAME)X \
                 $(PK_KMAP_ATOMIC_VERSION)X \
                 $(PK_KMAP_ATOMIC_SITE)X \
                 $(PK_KMAP_ATOMIC_GITHUB)X \
                 $(PK_KMAP_ATOMIC_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_KMAP_ATOMIC_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_KMAP_ATOMIC_SUBNAME)X \
                 $(CONFIG_PK_KMAP_ATOMIC_CONFIG)X \
                 $(CONFIG_PK_KMAP_ATOMIC_LIBPATH)X \
                 $(CONFIG_PK_KMAP_ATOMIC_CPPFLAGS)X \
                 $(CONFIG_PK_KMAP_ATOMIC_DPKCONFIG)X \
                 $(CONFIG_PK_KMAP_ATOMIC_CFLAGS)X \
                 $(CONFIG_PK_KMAP_ATOMIC_LDFLAGS)X \
                 $(CONFIG_PK_KMAP_ATOMIC_CXXFLAGS)X \
                 $(CONFIG_PK_KMAP_ATOMIC_ASFLAGS)X \
                 $(PK_KMAP_ATOMIC_BSBIT)X \
                 $(PK_KMAP_ATOMIC_BUILDARCH)X \
		 $(PK_KMAP_ATOMIC_CSRCFILE)X \
                 $(CONFIG_PK_KMAP_ATOMIC_SRCFILE)X \
                 $(CONFIG_PK_KMAP_ATOMIC_CSRCFILE)

$(PK_KMAP_ATOMIC_DIR)/build: FORCE
	$(Q)$(call PK_KMAP_ATOMIC_sh,$(srctree))
