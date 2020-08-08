################################################
#
# KVM Userspace linux 2.6.32
#
################################################
PK_KVM_U_2_6_32_NAME        := BiscuitOS_UKVM
PK_KVM_U_2_6_32_VERSION     := $(CONFIG_PK_KVM_U_2_6_32_VERSION)
PK_KVM_U_2_6_32_SITE        := $(CONFIG_PK_KVM_U_2_6_32_URL)
PK_KVM_U_2_6_32_GITHUB      := $(CONFIG_PK_KVM_U_2_6_32_GITHUB)
PK_KVM_U_2_6_32_SUBNAME     :=
PK_KVM_U_2_6_32_BUILDARCH   := $(CONFIG_PK_KVM_U_2_6_32_BUILDARCH)
PK_KVM_U_2_6_32_DIR         := $(srctree)/package/kvm/kvm_history/userspace-2.6.32
PK_KVM_U_2_6_32_PATCH       := $(PK_KVM_U_2_6_32_DIR)/patch
PK_KVM_U_2_6_32_BSBIT       := BiscuitOS_UKVM-$(PK_KVM_U_2_6_32_VERSION).bsbit
PK_KVM_U_2_6_32_OUT         :=
PK_KVM_U_2_6_32_SCRIPTS     := $(srctree)/scripts/package/package-memory.sh
PK_KVM_U_2_6_32_TAR         := $(CONFIG_PK_KVM_U_2_6_32_TAR)
PK_KVM_U_2_6_32_PACKAGE     :=
PK_KVM_U_2_6_32_CONFIG      := $(CONFIG_PK_KVM_U_2_6_32_CONFIG)
SUB_TARGET                  += $(PK_KVM_U_2_6_32_DIR)/build

PK_KVM_U_2_6_32_sh = $(CONFIG_SHELL) $(PK_KVM_U_2_6_32_SCRIPTS) \
                 $1X \
                 $(PK_KVM_U_2_6_32_NAME)X \
                 $(PK_KVM_U_2_6_32_VERSION)X \
                 $(PK_KVM_U_2_6_32_SITE)X \
                 $(PK_KVM_U_2_6_32_GITHUB)X \
                 $(PK_KVM_U_2_6_32_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_KVM_U_2_6_32_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_KVM_U_2_6_32_SUBNAME)X \
                 $(CONFIG_PK_KVM_U_2_6_32_CONFIG)X \
                 $(CONFIG_PK_KVM_U_2_6_32_LIBPATH)X \
                 $(CONFIG_PK_KVM_U_2_6_32_CPPFLAGS)X \
                 $(CONFIG_PK_KVM_U_2_6_32_DPKCONFIG)X \
                 $(CONFIG_PK_KVM_U_2_6_32_CFLAGS)X \
                 $(CONFIG_PK_KVM_U_2_6_32_LDFLAGS)X \
                 $(CONFIG_PK_KVM_U_2_6_32_CXXFLAGS)X \
                 $(CONFIG_PK_KVM_U_2_6_32_ASFLAGS)X \
                 $(PK_KVM_U_2_6_32_BSBIT)X \
                 $(PK_KVM_U_2_6_32_BUILDARCH)X \
		 $(PK_KVM_U_2_6_32_CSRCFILE)X \
                 $(CONFIG_PK_KVM_U_2_6_32_SRCFILE)X \
                 $(CONFIG_PK_KVM_U_2_6_32_CSRCFILE)

$(PK_KVM_U_2_6_32_DIR)/build: FORCE
	$(Q)$(call PK_KVM_U_2_6_32_sh,$(srctree))
