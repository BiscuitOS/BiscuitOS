################################################
#
# KVM on module
#
################################################
PK_KVM_MODULE_NAME        := kvm_module
PK_KVM_MODULE_VERSION     := $(CONFIG_PK_KVM_MODULE_VERSION)
PK_KVM_MODULE_SITE        := $(CONFIG_PK_KVM_MODULE_URL)
PK_KVM_MODULE_GITHUB      := $(CONFIG_PK_KVM_MODULE_GITHUB)
PK_KVM_MODULE_SUBNAME     :=
PK_KVM_MODULE_BUILDARCH   := $(CONFIG_PK_KVM_MODULE_BUILDARCH)
PK_KVM_MODULE_DIR         := $(srctree)/package/kvm/kvm_module
PK_KVM_MODULE_PATCH       := $(PK_KVM_MODULE_DIR)/patch
PK_KVM_MODULE_BSBIT       := kvm_module-$(PK_KVM_MODULE_VERSION).bsbit
PK_KVM_MODULE_OUT         :=
PK_KVM_MODULE_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_KVM_MODULE_TAR         := $(CONFIG_PK_KVM_MODULE_TAR)
PK_KVM_MODULE_PACKAGE     :=
PK_KVM_MODULE_CONFIG      := $(CONFIG_PK_KVM_MODULE_CONFIG)
SUB_TARGET                  += $(PK_KVM_MODULE_DIR)/build

PK_KVM_MODULE_sh = $(CONFIG_SHELL) $(PK_KVM_MODULE_SCRIPTS) \
                 $1X \
                 $(PK_KVM_MODULE_NAME)X \
                 $(PK_KVM_MODULE_VERSION)X \
                 $(PK_KVM_MODULE_SITE)X \
                 $(PK_KVM_MODULE_GITHUB)X \
                 $(PK_KVM_MODULE_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_KVM_MODULE_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_KVM_MODULE_SUBNAME)X \
                 $(CONFIG_PK_KVM_MODULE_CONFIG)X \
                 $(CONFIG_PK_KVM_MODULE_LIBPATH)X \
                 $(CONFIG_PK_KVM_MODULE_CPPFLAGS)X \
                 $(CONFIG_PK_KVM_MODULE_DPKCONFIG)X \
                 $(CONFIG_PK_KVM_MODULE_CFLAGS)X \
                 $(CONFIG_PK_KVM_MODULE_LDFLAGS)X \
                 $(CONFIG_PK_KVM_MODULE_CXXFLAGS)X \
                 $(CONFIG_PK_KVM_MODULE_ASFLAGS)X \
                 $(PK_KVM_MODULE_BSBIT)X \
                 $(PK_KVM_MODULE_BUILDARCH)X \
		 $(PK_KVM_MODULE_CSRCFILE)X \
                 $(CONFIG_PK_KVM_MODULE_SRCFILE)X \
                 $(CONFIG_PK_KVM_MODULE_CSRCFILE)

$(PK_KVM_MODULE_DIR)/build: FORCE
	$(Q)$(call PK_KVM_MODULE_sh,$(srctree))
