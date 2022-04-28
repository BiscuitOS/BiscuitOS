################################################
#
# BiscuitOS-THP-userspace
#
################################################
PK_THP_USERSPACE_NAME        := BiscuitOS-THP-userspace
PK_THP_USERSPACE_VERSION     := $(CONFIG_PK_THP_USERSPACE_VERSION)
PK_THP_USERSPACE_SITE        := $(CONFIG_PK_THP_USERSPACE_URL)
PK_THP_USERSPACE_GITHUB      := $(CONFIG_PK_THP_USERSPACE_GITHUB)
PK_THP_USERSPACE_SUBNAME     :=
PK_THP_USERSPACE_BUILDARCH   := $(CONFIG_PK_THP_USERSPACE_BUILDARCH)
PK_THP_USERSPACE_DIR         := $(srctree)/package/THP/BiscuitOS-THP-userspace
PK_THP_USERSPACE_PATCH       := $(PK_THP_USERSPACE_DIR)/patch
PK_THP_USERSPACE_BSBIT       := BiscuitOS-THP-userspace-$(PK_THP_USERSPACE_VERSION).bsbit
PK_THP_USERSPACE_OUT         :=
PK_THP_USERSPACE_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_THP_USERSPACE_TAR         := $(CONFIG_PK_THP_USERSPACE_TAR)
PK_THP_USERSPACE_PACKAGE     :=
PK_THP_USERSPACE_CONFIG      := $(CONFIG_PK_THP_USERSPACE_CONFIG)
SUB_TARGET                  += $(PK_THP_USERSPACE_DIR)/build

PK_THP_USERSPACE_sh = $(CONFIG_SHELL) $(PK_THP_USERSPACE_SCRIPTS) \
                 $1X \
                 $(PK_THP_USERSPACE_NAME)X \
                 $(PK_THP_USERSPACE_VERSION)X \
                 $(PK_THP_USERSPACE_SITE)X \
                 $(PK_THP_USERSPACE_GITHUB)X \
                 $(PK_THP_USERSPACE_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_THP_USERSPACE_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_THP_USERSPACE_SUBNAME)X \
                 $(CONFIG_PK_THP_USERSPACE_CONFIG)X \
                 $(CONFIG_PK_THP_USERSPACE_LIBPATH)X \
                 $(CONFIG_PK_THP_USERSPACE_CPPFLAGS)X \
                 $(CONFIG_PK_THP_USERSPACE_DPKCONFIG)X \
                 $(CONFIG_PK_THP_USERSPACE_CFLAGS)X \
                 $(CONFIG_PK_THP_USERSPACE_LDFLAGS)X \
                 $(CONFIG_PK_THP_USERSPACE_CXXFLAGS)X \
                 $(CONFIG_PK_THP_USERSPACE_ASFLAGS)X \
                 $(PK_THP_USERSPACE_BSBIT)X \
                 $(PK_THP_USERSPACE_BUILDARCH)X \
		 $(PK_THP_USERSPACE_CSRCFILE)X \
                 $(CONFIG_PK_THP_USERSPACE_SRCFILE)X \
                 $(CONFIG_PK_THP_USERSPACE_CSRCFILE)

$(PK_THP_USERSPACE_DIR)/build: FORCE
	$(Q)$(call PK_THP_USERSPACE_sh,$(srctree))
