################################################
#
# Kmap Allocator Userspace
#
################################################
PK_KMAP_USERSPACE_NAME        := kmap_userspace
PK_KMAP_USERSPACE_VERSION     := $(CONFIG_PK_KMAP_USERSPACE_VERSION)
PK_KMAP_USERSPACE_SITE        := $(CONFIG_PK_KMAP_USERSPACE_URL)
PK_KMAP_USERSPACE_GITHUB      := $(CONFIG_PK_KMAP_USERSPACE_GITHUB)
PK_KMAP_USERSPACE_SUBNAME     :=
PK_KMAP_USERSPACE_BUILDARCH   := $(CONFIG_PK_KMAP_USERSPACE_BUILDARCH)
PK_KMAP_USERSPACE_DIR         := $(srctree)/package/kmap/kmap_userspace
PK_KMAP_USERSPACE_PATCH       := $(PK_KMAP_USERSPACE_DIR)/patch
PK_KMAP_USERSPACE_BSBIT       := kmap_userspace-$(PK_KMAP_USERSPACE_VERSION).bsbit
PK_KMAP_USERSPACE_OUT         :=
PK_KMAP_USERSPACE_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_KMAP_USERSPACE_TAR         := $(CONFIG_PK_KMAP_USERSPACE_TAR)
PK_KMAP_USERSPACE_PACKAGE     :=
PK_KMAP_USERSPACE_CONFIG      := $(CONFIG_PK_KMAP_USERSPACE_CONFIG)
SUB_TARGET                  += $(PK_KMAP_USERSPACE_DIR)/build

PK_KMAP_USERSPACE_sh = $(CONFIG_SHELL) $(PK_KMAP_USERSPACE_SCRIPTS) \
                 $1X \
                 $(PK_KMAP_USERSPACE_NAME)X \
                 $(PK_KMAP_USERSPACE_VERSION)X \
                 $(PK_KMAP_USERSPACE_SITE)X \
                 $(PK_KMAP_USERSPACE_GITHUB)X \
                 $(PK_KMAP_USERSPACE_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_KMAP_USERSPACE_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_KMAP_USERSPACE_SUBNAME)X \
                 $(CONFIG_PK_KMAP_USERSPACE_CONFIG)X \
                 $(CONFIG_PK_KMAP_USERSPACE_LIBPATH)X \
                 $(CONFIG_PK_KMAP_USERSPACE_CPPFLAGS)X \
                 $(CONFIG_PK_KMAP_USERSPACE_DPKCONFIG)X \
                 $(CONFIG_PK_KMAP_USERSPACE_CFLAGS)X \
                 $(CONFIG_PK_KMAP_USERSPACE_LDFLAGS)X \
                 $(CONFIG_PK_KMAP_USERSPACE_CXXFLAGS)X \
                 $(CONFIG_PK_KMAP_USERSPACE_ASFLAGS)X \
                 $(PK_KMAP_USERSPACE_BSBIT)X \
                 $(PK_KMAP_USERSPACE_BUILDARCH)X \
		 $(PK_KMAP_USERSPACE_CSRCFILE)X \
                 $(CONFIG_PK_KMAP_USERSPACE_SRCFILE)X \
                 $(CONFIG_PK_KMAP_USERSPACE_CSRCFILE)

$(PK_KMAP_USERSPACE_DIR)/build: FORCE
	$(Q)$(call PK_KMAP_USERSPACE_sh,$(srctree))
