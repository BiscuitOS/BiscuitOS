################################################
#
# kexec-tools
#
################################################
PK_KEXEC_NAME        := kexec-tools
PK_KEXEC_VERSION     := $(CONFIG_PK_KEXEC_VERSION)
PK_KEXEC_SITE        := $(CONFIG_PK_KEXEC_URL)
PK_KEXEC_GITHUB      := $(CONFIG_PK_KEXEC_GITHUB)
PK_KEXEC_SUBNAME     :=
PK_KEXEC_BUILDARCH   := $(CONFIG_PK_KEXEC_BUILDARCH)
PK_KEXEC_DIR         := $(srctree)/package/kexec-tools
PK_KEXEC_PATCH       := $(PK_KEXEC_DIR)/patch
PK_KEXEC_BSBIT       := kexec-tools-$(PK_KEXEC_VERSION).bsbit
PK_KEXEC_OUT         :=
PK_KEXEC_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_KEXEC_TAR         := $(CONFIG_PK_KEXEC_TAR)
PK_KEXEC_PACKAGE     :=
PK_KEXEC_CONFIG      := $(CONFIG_PK_KEXEC_CONFIG)
SUB_TARGET              += $(PK_KEXEC_DIR)/build

PK_KEXEC_sh = $(CONFIG_SHELL) $(PK_KEXEC_SCRIPTS) \
                 $1X \
                 $(PK_KEXEC_NAME)X \
                 $(PK_KEXEC_VERSION)X \
                 $(PK_KEXEC_SITE)X \
                 $(PK_KEXEC_GITHUB)X \
                 $(PK_KEXEC_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_KEXEC_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_KEXEC_SUBNAME)X \
                 $(CONFIG_PK_KEXEC_CONFIG)X \
                 $(CONFIG_PK_KEXEC_LIBPATH)X \
                 $(CONFIG_PK_KEXEC_CPPFLAGS)X \
                 $(CONFIG_PK_KEXEC_DPKCONFIG)X \
                 $(CONFIG_PK_KEXEC_CFLAGS)X \
                 $(CONFIG_PK_KEXEC_LDFLAGS)X \
                 $(CONFIG_PK_KEXEC_CXXFLAGS)X \
                 $(CONFIG_PK_KEXEC_ASFLAGS)X \
                 $(PK_KEXEC_BSBIT)X \
                 $(PK_KEXEC_BUILDARCH)X

$(PK_KEXEC_DIR)/build: FORCE
	$(Q)$(call PK_KEXEC_sh,$(srctree))
