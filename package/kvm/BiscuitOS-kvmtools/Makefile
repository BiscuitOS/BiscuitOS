################################################
#
# BiscuitOS-kvmtool
#
################################################
PK_BISCUITOS_KVM_TOOLS_NAME	:= BiscuitOS-kvmtool
PK_BISCUITOS_KVM_TOOLS_VERSION	:= $(CONFIG_PK_BISCUITOS_KVM_TOOLS_VERSION)
PK_BISCUITOS_KVM_TOOLS_SITE	:= $(CONFIG_PK_BISCUITOS_KVM_TOOLS_URL)
PK_BISCUITOS_KVM_TOOLS_GITHUB	:= $(CONFIG_PK_BISCUITOS_KVM_TOOLS_GITHUB)
PK_BISCUITOS_KVM_TOOLS_SUBNAME	:=
PK_BISCUITOS_KVM_TOOLS_BUILDARCH	:= $(CONFIG_PK_BISCUITOS_KVM_TOOLS_BUILDARCH)
PK_BISCUITOS_KVM_TOOLS_DIR	:= $(srctree)/package/kvm/BiscuitOS-kvmtools
PK_BISCUITOS_KVM_TOOLS_PATCH	:= $(PK_BISCUITOS_KVM_TOOLS_DIR)/patch
PK_BISCUITOS_KVM_TOOLS_BSBIT	:= BiscuitOS-kvmtool-$(PK_BISCUITOS_KVM_TOOLS_VERSION).bsbit
PK_BISCUITOS_KVM_TOOLS_OUT	:=
PK_BISCUITOS_KVM_TOOLS_SCRIPTS	:= $(srctree)/scripts/package/package-kvmtools.sh
PK_BISCUITOS_KVM_TOOLS_TAR	:= $(CONFIG_PK_BISCUITOS_KVM_TOOLS_TAR)
PK_BISCUITOS_KVM_TOOLS_PACKAGE	:=
PK_BISCUITOS_KVM_TOOLS_CONFIG	:= $(CONFIG_PK_BISCUITOS_KVM_TOOLS_CONFIG)
SUB_TARGET		+= $(PK_BISCUITOS_KVM_TOOLS_DIR)/build

PK_BISCUITOS_KVM_TOOLS_sh = $(CONFIG_SHELL) $(PK_BISCUITOS_KVM_TOOLS_SCRIPTS) \
                 $1X \
                 $(PK_BISCUITOS_KVM_TOOLS_NAME)X \
                 $(PK_BISCUITOS_KVM_TOOLS_VERSION)X \
                 $(PK_BISCUITOS_KVM_TOOLS_SITE)X \
                 $(PK_BISCUITOS_KVM_TOOLS_GITHUB)X \
                 $(PK_BISCUITOS_KVM_TOOLS_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_BISCUITOS_KVM_TOOLS_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_BISCUITOS_KVM_TOOLS_SUBNAME)X \
                 $(CONFIG_PK_BISCUITOS_KVM_TOOLS_CONFIG)X \
                 $(CONFIG_PK_BISCUITOS_KVM_TOOLS_LIBPATH)X \
                 $(CONFIG_PK_BISCUITOS_KVM_TOOLS_CPPFLAGS)X \
                 $(CONFIG_PK_BISCUITOS_KVM_TOOLS_DPKCONFIG)X \
                 $(CONFIG_PK_BISCUITOS_KVM_TOOLS_CFLAGS)X \
                 $(CONFIG_PK_BISCUITOS_KVM_TOOLS_LDFLAGS)X \
                 $(CONFIG_PK_BISCUITOS_KVM_TOOLS_CXXFLAGS)X \
                 $(CONFIG_PK_BISCUITOS_KVM_TOOLS_ASFLAGS)X \
                 $(PK_BISCUITOS_KVM_TOOLS_BSBIT)X \
                 $(PK_BISCUITOS_KVM_TOOLS_BUILDARCH)X

$(PK_BISCUITOS_KVM_TOOLS_DIR)/build: FORCE
	$(Q)$(call PK_BISCUITOS_KVM_TOOLS_sh,$(srctree))
