################################################
#
# BiscuitOS-madvise-KSM
#
################################################
PK_MADVISE_KSM_NAME        := BiscuitOS-madvise-KSM
PK_MADVISE_KSM_VERSION     := $(CONFIG_PK_MADVISE_KSM_VERSION)
PK_MADVISE_KSM_SITE        := $(CONFIG_PK_MADVISE_KSM_URL)
PK_MADVISE_KSM_GITHUB      := $(CONFIG_PK_MADVISE_KSM_GITHUB)
PK_MADVISE_KSM_SUBNAME     :=
PK_MADVISE_KSM_BUILDARCH   := $(CONFIG_PK_MADVISE_KSM_BUILDARCH)
PK_MADVISE_KSM_DIR         := $(srctree)/package/madvise/BiscuitOS-madvise-KSM
PK_MADVISE_KSM_PATCH       := $(PK_MADVISE_KSM_DIR)/patch
PK_MADVISE_KSM_BSBIT       := BiscuitOS-madvise-KSM-$(PK_MADVISE_KSM_VERSION).bsbit
PK_MADVISE_KSM_OUT         :=
PK_MADVISE_KSM_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_MADVISE_KSM_TAR         := $(CONFIG_PK_MADVISE_KSM_TAR)
PK_MADVISE_KSM_PACKAGE     :=
PK_MADVISE_KSM_CONFIG      := $(CONFIG_PK_MADVISE_KSM_CONFIG)
SUB_TARGET                  += $(PK_MADVISE_KSM_DIR)/build

PK_MADVISE_KSM_sh = $(CONFIG_SHELL) $(PK_MADVISE_KSM_SCRIPTS) \
                 $1X \
                 $(PK_MADVISE_KSM_NAME)X \
                 $(PK_MADVISE_KSM_VERSION)X \
                 $(PK_MADVISE_KSM_SITE)X \
                 $(PK_MADVISE_KSM_GITHUB)X \
                 $(PK_MADVISE_KSM_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_MADVISE_KSM_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_MADVISE_KSM_SUBNAME)X \
                 $(CONFIG_PK_MADVISE_KSM_CONFIG)X \
                 $(CONFIG_PK_MADVISE_KSM_LIBPATH)X \
                 $(CONFIG_PK_MADVISE_KSM_CPPFLAGS)X \
                 $(CONFIG_PK_MADVISE_KSM_DPKCONFIG)X \
                 $(CONFIG_PK_MADVISE_KSM_CFLAGS)X \
                 $(CONFIG_PK_MADVISE_KSM_LDFLAGS)X \
                 $(CONFIG_PK_MADVISE_KSM_CXXFLAGS)X \
                 $(CONFIG_PK_MADVISE_KSM_ASFLAGS)X \
                 $(PK_MADVISE_KSM_BSBIT)X \
                 $(PK_MADVISE_KSM_BUILDARCH)X \
		 $(PK_MADVISE_KSM_CSRCFILE)X \
                 $(CONFIG_PK_MADVISE_KSM_SRCFILE)X \
                 $(CONFIG_PK_MADVISE_KSM_CSRCFILE)

$(PK_MADVISE_KSM_DIR)/build: FORCE
	$(Q)$(call PK_MADVISE_KSM_sh,$(srctree))
