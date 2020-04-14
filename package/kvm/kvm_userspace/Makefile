################################################
#
# KVM on userspace
#
################################################
PK_KVM_USERSPACE_NAME        := kvm_userspace
PK_KVM_USERSPACE_VERSION     := $(CONFIG_PK_KVM_USERSPACE_VERSION)
PK_KVM_USERSPACE_SITE        := $(CONFIG_PK_KVM_USERSPACE_URL)
PK_KVM_USERSPACE_GITHUB      := $(CONFIG_PK_KVM_USERSPACE_GITHUB)
PK_KVM_USERSPACE_SUBNAME     :=
PK_KVM_USERSPACE_BUILDARCH   := $(CONFIG_PK_KVM_USERSPACE_BUILDARCH)
PK_KVM_USERSPACE_DIR         := $(srctree)/package/kvm/kvm_userspace
PK_KVM_USERSPACE_PATCH       := $(PK_KVM_USERSPACE_DIR)/patch
PK_KVM_USERSPACE_BSBIT       := kvm_userspace-$(PK_KVM_USERSPACE_VERSION).bsbit
PK_KVM_USERSPACE_OUT         :=
PK_KVM_USERSPACE_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_KVM_USERSPACE_TAR         := $(CONFIG_PK_KVM_USERSPACE_TAR)
PK_KVM_USERSPACE_PACKAGE     :=
PK_KVM_USERSPACE_CONFIG      := $(CONFIG_PK_KVM_USERSPACE_CONFIG)
SUB_TARGET                  += $(PK_KVM_USERSPACE_DIR)/build

PK_KVM_USERSPACE_sh = $(CONFIG_SHELL) $(PK_KVM_USERSPACE_SCRIPTS) \
                 $1X \
                 $(PK_KVM_USERSPACE_NAME)X \
                 $(PK_KVM_USERSPACE_VERSION)X \
                 $(PK_KVM_USERSPACE_SITE)X \
                 $(PK_KVM_USERSPACE_GITHUB)X \
                 $(PK_KVM_USERSPACE_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_KVM_USERSPACE_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_KVM_USERSPACE_SUBNAME)X \
                 $(CONFIG_PK_KVM_USERSPACE_CONFIG)X \
                 $(CONFIG_PK_KVM_USERSPACE_LIBPATH)X \
                 $(CONFIG_PK_KVM_USERSPACE_CPPFLAGS)X \
                 $(CONFIG_PK_KVM_USERSPACE_DPKCONFIG)X \
                 $(CONFIG_PK_KVM_USERSPACE_CFLAGS)X \
                 $(CONFIG_PK_KVM_USERSPACE_LDFLAGS)X \
                 $(CONFIG_PK_KVM_USERSPACE_CXXFLAGS)X \
                 $(CONFIG_PK_KVM_USERSPACE_ASFLAGS)X \
                 $(PK_KVM_USERSPACE_BSBIT)X \
                 $(PK_KVM_USERSPACE_BUILDARCH)X \
		 $(PK_KVM_USERSPACE_CSRCFILE)X \
                 $(CONFIG_PK_KVM_USERSPACE_SRCFILE)X \
                 $(CONFIG_PK_KVM_USERSPACE_CSRCFILE)

$(PK_KVM_USERSPACE_DIR)/build: FORCE
	$(Q)$(call PK_KVM_USERSPACE_sh,$(srctree))
