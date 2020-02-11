################################################
#
# Slub Allocator Userspace
#
################################################
PK_SLUB_USERSPACE_NAME        := slub_userspace
PK_SLUB_USERSPACE_VERSION     := $(CONFIG_PK_SLUB_USERSPACE_VERSION)
PK_SLUB_USERSPACE_SITE        := $(CONFIG_PK_SLUB_USERSPACE_URL)
PK_SLUB_USERSPACE_GITHUB      := $(CONFIG_PK_SLUB_USERSPACE_GITHUB)
PK_SLUB_USERSPACE_SUBNAME     :=
PK_SLUB_USERSPACE_BUILDARCH   := $(CONFIG_PK_SLUB_USERSPACE_BUILDARCH)
PK_SLUB_USERSPACE_DIR         := $(srctree)/package/slab/slub_userspace
PK_SLUB_USERSPACE_PATCH       := $(PK_SLUB_USERSPACE_DIR)/patch
PK_SLUB_USERSPACE_BSBIT       := slub_userspace-$(PK_SLUB_USERSPACE_VERSION).bsbit
PK_SLUB_USERSPACE_OUT         :=
PK_SLUB_USERSPACE_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_SLUB_USERSPACE_TAR         := $(CONFIG_PK_SLUB_USERSPACE_TAR)
PK_SLUB_USERSPACE_PACKAGE     :=
PK_SLUB_USERSPACE_CONFIG      := $(CONFIG_PK_SLUB_USERSPACE_CONFIG)
SUB_TARGET                  += $(PK_SLUB_USERSPACE_DIR)/build

PK_SLUB_USERSPACE_sh = $(CONFIG_SHELL) $(PK_SLUB_USERSPACE_SCRIPTS) \
                 $1X \
                 $(PK_SLUB_USERSPACE_NAME)X \
                 $(PK_SLUB_USERSPACE_VERSION)X \
                 $(PK_SLUB_USERSPACE_SITE)X \
                 $(PK_SLUB_USERSPACE_GITHUB)X \
                 $(PK_SLUB_USERSPACE_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_SLUB_USERSPACE_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_SLUB_USERSPACE_SUBNAME)X \
                 $(CONFIG_PK_SLUB_USERSPACE_CONFIG)X \
                 $(CONFIG_PK_SLUB_USERSPACE_LIBPATH)X \
                 $(CONFIG_PK_SLUB_USERSPACE_CPPFLAGS)X \
                 $(CONFIG_PK_SLUB_USERSPACE_DPKCONFIG)X \
                 $(CONFIG_PK_SLUB_USERSPACE_CFLAGS)X \
                 $(CONFIG_PK_SLUB_USERSPACE_LDFLAGS)X \
                 $(CONFIG_PK_SLUB_USERSPACE_CXXFLAGS)X \
                 $(CONFIG_PK_SLUB_USERSPACE_ASFLAGS)X \
                 $(PK_SLUB_USERSPACE_BSBIT)X \
                 $(PK_SLUB_USERSPACE_BUILDARCH)X \
		 $(PK_SLUB_USERSPACE_CSRCFILE)X \
                 $(CONFIG_PK_SLUB_USERSPACE_SRCFILE)X \
                 $(CONFIG_PK_SLUB_USERSPACE_CSRCFILE)

$(PK_SLUB_USERSPACE_DIR)/build: FORCE
	$(Q)$(call PK_SLUB_USERSPACE_sh,$(srctree))
