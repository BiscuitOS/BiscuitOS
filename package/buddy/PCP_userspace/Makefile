################################################
#
# PCP Allocator Userspace
#
################################################
PK_PCP_USERSPACE_NAME        := PCP_userspace
PK_PCP_USERSPACE_VERSION     := $(CONFIG_PK_PCP_USERSPACE_VERSION)
PK_PCP_USERSPACE_SITE        := $(CONFIG_PK_PCP_USERSPACE_URL)
PK_PCP_USERSPACE_GITHUB      := $(CONFIG_PK_PCP_USERSPACE_GITHUB)
PK_PCP_USERSPACE_SUBNAME     :=
PK_PCP_USERSPACE_BUILDARCH   := $(CONFIG_PK_PCP_USERSPACE_BUILDARCH)
PK_PCP_USERSPACE_DIR         := $(srctree)/package/buddy/PCP_userspace
PK_PCP_USERSPACE_PATCH       := $(PK_PCP_USERSPACE_DIR)/patch
PK_PCP_USERSPACE_BSBIT       := PCP_userspace-$(PK_PCP_USERSPACE_VERSION).bsbit
PK_PCP_USERSPACE_OUT         :=
PK_PCP_USERSPACE_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_PCP_USERSPACE_TAR         := $(CONFIG_PK_PCP_USERSPACE_TAR)
PK_PCP_USERSPACE_PACKAGE     :=
PK_PCP_USERSPACE_CONFIG      := $(CONFIG_PK_PCP_USERSPACE_CONFIG)
SUB_TARGET                  += $(PK_PCP_USERSPACE_DIR)/build

PK_PCP_USERSPACE_sh = $(CONFIG_SHELL) $(PK_PCP_USERSPACE_SCRIPTS) \
                 $1X \
                 $(PK_PCP_USERSPACE_NAME)X \
                 $(PK_PCP_USERSPACE_VERSION)X \
                 $(PK_PCP_USERSPACE_SITE)X \
                 $(PK_PCP_USERSPACE_GITHUB)X \
                 $(PK_PCP_USERSPACE_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_PCP_USERSPACE_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_PCP_USERSPACE_SUBNAME)X \
                 $(CONFIG_PK_PCP_USERSPACE_CONFIG)X \
                 $(CONFIG_PK_PCP_USERSPACE_LIBPATH)X \
                 $(CONFIG_PK_PCP_USERSPACE_CPPFLAGS)X \
                 $(CONFIG_PK_PCP_USERSPACE_DPKCONFIG)X \
                 $(CONFIG_PK_PCP_USERSPACE_CFLAGS)X \
                 $(CONFIG_PK_PCP_USERSPACE_LDFLAGS)X \
                 $(CONFIG_PK_PCP_USERSPACE_CXXFLAGS)X \
                 $(CONFIG_PK_PCP_USERSPACE_ASFLAGS)X \
                 $(PK_PCP_USERSPACE_BSBIT)X \
                 $(PK_PCP_USERSPACE_BUILDARCH)X \
		 $(PK_PCP_USERSPACE_CSRCFILE)X \
                 $(CONFIG_PK_PCP_USERSPACE_SRCFILE)X \
                 $(CONFIG_PK_PCP_USERSPACE_CSRCFILE)

$(PK_PCP_USERSPACE_DIR)/build: FORCE
	$(Q)$(call PK_PCP_USERSPACE_sh,$(srctree))
