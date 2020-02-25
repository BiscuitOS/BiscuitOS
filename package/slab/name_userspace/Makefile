################################################
#
# Name Allocator Userspace
#
################################################
PK_NAME_USERSPACE_NAME        := name_userspace
PK_NAME_USERSPACE_VERSION     := $(CONFIG_PK_NAME_USERSPACE_VERSION)
PK_NAME_USERSPACE_SITE        := $(CONFIG_PK_NAME_USERSPACE_URL)
PK_NAME_USERSPACE_GITHUB      := $(CONFIG_PK_NAME_USERSPACE_GITHUB)
PK_NAME_USERSPACE_SUBNAME     :=
PK_NAME_USERSPACE_BUILDARCH   := $(CONFIG_PK_NAME_USERSPACE_BUILDARCH)
PK_NAME_USERSPACE_DIR         := $(srctree)/package/slab/name_userspace
PK_NAME_USERSPACE_PATCH       := $(PK_NAME_USERSPACE_DIR)/patch
PK_NAME_USERSPACE_BSBIT       := name_userspace-$(PK_NAME_USERSPACE_VERSION).bsbit
PK_NAME_USERSPACE_OUT         :=
PK_NAME_USERSPACE_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_NAME_USERSPACE_TAR         := $(CONFIG_PK_NAME_USERSPACE_TAR)
PK_NAME_USERSPACE_PACKAGE     :=
PK_NAME_USERSPACE_CONFIG      := $(CONFIG_PK_NAME_USERSPACE_CONFIG)
SUB_TARGET                  += $(PK_NAME_USERSPACE_DIR)/build

PK_NAME_USERSPACE_sh = $(CONFIG_SHELL) $(PK_NAME_USERSPACE_SCRIPTS) \
                 $1X \
                 $(PK_NAME_USERSPACE_NAME)X \
                 $(PK_NAME_USERSPACE_VERSION)X \
                 $(PK_NAME_USERSPACE_SITE)X \
                 $(PK_NAME_USERSPACE_GITHUB)X \
                 $(PK_NAME_USERSPACE_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_NAME_USERSPACE_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_NAME_USERSPACE_SUBNAME)X \
                 $(CONFIG_PK_NAME_USERSPACE_CONFIG)X \
                 $(CONFIG_PK_NAME_USERSPACE_LIBPATH)X \
                 $(CONFIG_PK_NAME_USERSPACE_CPPFLAGS)X \
                 $(CONFIG_PK_NAME_USERSPACE_DPKCONFIG)X \
                 $(CONFIG_PK_NAME_USERSPACE_CFLAGS)X \
                 $(CONFIG_PK_NAME_USERSPACE_LDFLAGS)X \
                 $(CONFIG_PK_NAME_USERSPACE_CXXFLAGS)X \
                 $(CONFIG_PK_NAME_USERSPACE_ASFLAGS)X \
                 $(PK_NAME_USERSPACE_BSBIT)X \
                 $(PK_NAME_USERSPACE_BUILDARCH)X \
		 $(PK_NAME_USERSPACE_CSRCFILE)X \
                 $(CONFIG_PK_NAME_USERSPACE_SRCFILE)X \
                 $(CONFIG_PK_NAME_USERSPACE_CSRCFILE)

$(PK_NAME_USERSPACE_DIR)/build: FORCE
	$(Q)$(call PK_NAME_USERSPACE_sh,$(srctree))
