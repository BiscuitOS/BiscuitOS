################################################
#
# BiscuitOS-OOM-userspace
#
################################################
PK_OOM_USERSPACE_NAME        := BiscuitOS-OOM-userspace
PK_OOM_USERSPACE_VERSION     := $(CONFIG_PK_OOM_USERSPACE_VERSION)
PK_OOM_USERSPACE_SITE        := $(CONFIG_PK_OOM_USERSPACE_URL)
PK_OOM_USERSPACE_GITHUB      := $(CONFIG_PK_OOM_USERSPACE_GITHUB)
PK_OOM_USERSPACE_SUBNAME     :=
PK_OOM_USERSPACE_BUILDARCH   := $(CONFIG_PK_OOM_USERSPACE_BUILDARCH)
PK_OOM_USERSPACE_DIR         := $(srctree)/package/OOM/BiscuitOS-OOM-userspace
PK_OOM_USERSPACE_PATCH       := $(PK_OOM_USERSPACE_DIR)/patch
PK_OOM_USERSPACE_BSBIT       := BiscuitOS-OOM-userspace-$(PK_OOM_USERSPACE_VERSION).bsbit
PK_OOM_USERSPACE_OUT         :=
PK_OOM_USERSPACE_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_OOM_USERSPACE_TAR         := $(CONFIG_PK_OOM_USERSPACE_TAR)
PK_OOM_USERSPACE_PACKAGE     :=
PK_OOM_USERSPACE_CONFIG      := $(CONFIG_PK_OOM_USERSPACE_CONFIG)
SUB_TARGET                  += $(PK_OOM_USERSPACE_DIR)/build

PK_OOM_USERSPACE_sh = $(CONFIG_SHELL) $(PK_OOM_USERSPACE_SCRIPTS) \
                 $1X \
                 $(PK_OOM_USERSPACE_NAME)X \
                 $(PK_OOM_USERSPACE_VERSION)X \
                 $(PK_OOM_USERSPACE_SITE)X \
                 $(PK_OOM_USERSPACE_GITHUB)X \
                 $(PK_OOM_USERSPACE_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_OOM_USERSPACE_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_OOM_USERSPACE_SUBNAME)X \
                 $(CONFIG_PK_OOM_USERSPACE_CONFIG)X \
                 $(CONFIG_PK_OOM_USERSPACE_LIBPATH)X \
                 $(CONFIG_PK_OOM_USERSPACE_CPPFLAGS)X \
                 $(CONFIG_PK_OOM_USERSPACE_DPKCONFIG)X \
                 $(CONFIG_PK_OOM_USERSPACE_CFLAGS)X \
                 $(CONFIG_PK_OOM_USERSPACE_LDFLAGS)X \
                 $(CONFIG_PK_OOM_USERSPACE_CXXFLAGS)X \
                 $(CONFIG_PK_OOM_USERSPACE_ASFLAGS)X \
                 $(PK_OOM_USERSPACE_BSBIT)X \
                 $(PK_OOM_USERSPACE_BUILDARCH)X \
		 $(PK_OOM_USERSPACE_CSRCFILE)X \
                 $(CONFIG_PK_OOM_USERSPACE_SRCFILE)X \
                 $(CONFIG_PK_OOM_USERSPACE_CSRCFILE)

$(PK_OOM_USERSPACE_DIR)/build: FORCE
	$(Q)$(call PK_OOM_USERSPACE_sh,$(srctree))
