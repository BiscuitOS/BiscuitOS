################################################
#
# resume-base
#
################################################
PK_PM_RESUME_BASE_NAME        := resume-base
PK_PM_RESUME_BASE_VERSION     := $(CONFIG_PK_PM_RESUME_BASE_VERSION)
PK_PM_RESUME_BASE_SITE        := $(CONFIG_PK_PM_RESUME_BASE_URL)
PK_PM_RESUME_BASE_GITHUB      := $(CONFIG_PK_PM_RESUME_BASE_GITHUB)
PK_PM_RESUME_BASE_SUBNAME     :=
PK_PM_RESUME_BASE_BUILDARCH   := $(CONFIG_PK_PM_RESUME_BASE_BUILDARCH)
PK_PM_RESUME_BASE_DIR         := $(srctree)/package/power_manager/resume-base
PK_PM_RESUME_BASE_PATCH       := $(PK_PM_RESUME_BASE_DIR)/patch
PK_PM_RESUME_BASE_BSBIT       := resume-base-$(PK_PM_RESUME_BASE_VERSION).bsbit
PK_PM_RESUME_BASE_OUT         :=
PK_PM_RESUME_BASE_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_PM_RESUME_BASE_TAR         := $(CONFIG_PK_PM_RESUME_BASE_TAR)
PK_PM_RESUME_BASE_PACKAGE     :=
PK_PM_RESUME_BASE_CONFIG      := $(CONFIG_PK_PM_RESUME_BASE_CONFIG)
SUB_TARGET                  += $(PK_PM_RESUME_BASE_DIR)/build

PK_PM_RESUME_BASE_sh = $(CONFIG_SHELL) $(PK_PM_RESUME_BASE_SCRIPTS) \
                 $1X \
                 $(PK_PM_RESUME_BASE_NAME)X \
                 $(PK_PM_RESUME_BASE_VERSION)X \
                 $(PK_PM_RESUME_BASE_SITE)X \
                 $(PK_PM_RESUME_BASE_GITHUB)X \
                 $(PK_PM_RESUME_BASE_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_PM_RESUME_BASE_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_PM_RESUME_BASE_SUBNAME)X \
                 $(CONFIG_PK_PM_RESUME_BASE_CONFIG)X \
                 $(CONFIG_PK_PM_RESUME_BASE_LIBPATH)X \
                 $(CONFIG_PK_PM_RESUME_BASE_CPPFLAGS)X \
                 $(CONFIG_PK_PM_RESUME_BASE_DPKCONFIG)X \
                 $(CONFIG_PK_PM_RESUME_BASE_CFLAGS)X \
                 $(CONFIG_PK_PM_RESUME_BASE_LDFLAGS)X \
                 $(CONFIG_PK_PM_RESUME_BASE_CXXFLAGS)X \
                 $(CONFIG_PK_PM_RESUME_BASE_ASFLAGS)X \
                 $(PK_PM_RESUME_BASE_BSBIT)X \
                 $(PK_PM_RESUME_BASE_BUILDARCH)X \
		 $(PK_PM_RESUME_BASE_CSRCFILE)X \
                 $(CONFIG_PK_PM_RESUME_BASE_SRCFILE)X \
                 $(CONFIG_PK_PM_RESUME_BASE_CSRCFILE)

$(PK_PM_RESUME_BASE_DIR)/build: FORCE
	$(Q)$(call PK_PM_RESUME_BASE_sh,$(srctree))
