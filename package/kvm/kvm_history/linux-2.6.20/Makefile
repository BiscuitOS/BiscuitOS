################################################
#
# KVM linux 2.6.20
#
################################################
PK_KVM_2_6_20_NAME        := BiscuitOS_KVM
PK_KVM_2_6_20_VERSION     := $(CONFIG_PK_KVM_2_6_20_VERSION)
PK_KVM_2_6_20_SITE        := $(CONFIG_PK_KVM_2_6_20_URL)
PK_KVM_2_6_20_GITHUB      := $(CONFIG_PK_KVM_2_6_20_GITHUB)
PK_KVM_2_6_20_SUBNAME     :=
PK_KVM_2_6_20_BUILDARCH   := $(CONFIG_PK_KVM_2_6_20_BUILDARCH)
PK_KVM_2_6_20_DIR         := $(srctree)/package/kvm/kvm_history/linux-2.6.20
PK_KVM_2_6_20_PATCH       := $(PK_KVM_2_6_20_DIR)/patch
PK_KVM_2_6_20_BSBIT       := BiscuitOS_KVM-$(PK_KVM_2_6_20_VERSION).bsbit
PK_KVM_2_6_20_OUT         :=
PK_KVM_2_6_20_SCRIPTS     := $(srctree)/scripts/package/package-memory.sh
PK_KVM_2_6_20_TAR         := $(CONFIG_PK_KVM_2_6_20_TAR)
PK_KVM_2_6_20_PACKAGE     :=
PK_KVM_2_6_20_CONFIG      := $(CONFIG_PK_KVM_2_6_20_CONFIG)
SUB_TARGET                  += $(PK_KVM_2_6_20_DIR)/build

PK_KVM_2_6_20_sh = $(CONFIG_SHELL) $(PK_KVM_2_6_20_SCRIPTS) \
                 $1X \
                 $(PK_KVM_2_6_20_NAME)X \
                 $(PK_KVM_2_6_20_VERSION)X \
                 $(PK_KVM_2_6_20_SITE)X \
                 $(PK_KVM_2_6_20_GITHUB)X \
                 $(PK_KVM_2_6_20_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_KVM_2_6_20_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_KVM_2_6_20_SUBNAME)X \
                 $(CONFIG_PK_KVM_2_6_20_CONFIG)X \
                 $(CONFIG_PK_KVM_2_6_20_LIBPATH)X \
                 $(CONFIG_PK_KVM_2_6_20_CPPFLAGS)X \
                 $(CONFIG_PK_KVM_2_6_20_DPKCONFIG)X \
                 $(CONFIG_PK_KVM_2_6_20_CFLAGS)X \
                 $(CONFIG_PK_KVM_2_6_20_LDFLAGS)X \
                 $(CONFIG_PK_KVM_2_6_20_CXXFLAGS)X \
                 $(CONFIG_PK_KVM_2_6_20_ASFLAGS)X \
                 $(PK_KVM_2_6_20_BSBIT)X \
                 $(PK_KVM_2_6_20_BUILDARCH)X \
		 $(PK_KVM_2_6_20_CSRCFILE)X \
                 $(CONFIG_PK_KVM_2_6_20_SRCFILE)X \
                 $(CONFIG_PK_KVM_2_6_20_CSRCFILE)

$(PK_KVM_2_6_20_DIR)/build: FORCE
	$(Q)$(call PK_KVM_2_6_20_sh,$(srctree))
