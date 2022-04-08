################################################
#
# BiscuitOS-debug-stub-QEMU
#
################################################
PK_DEBUG_STUB_QEMU_NAME        := BiscuitOS-debug-stub-QEMU
PK_DEBUG_STUB_QEMU_VERSION     := $(CONFIG_PK_DEBUG_STUB_QEMU_VERSION)
PK_DEBUG_STUB_QEMU_SITE        := $(CONFIG_PK_DEBUG_STUB_QEMU_URL)
PK_DEBUG_STUB_QEMU_GITHUB      := $(CONFIG_PK_DEBUG_STUB_QEMU_GITHUB)
PK_DEBUG_STUB_QEMU_SUBNAME     :=
PK_DEBUG_STUB_QEMU_BUILDARCH   := $(CONFIG_PK_DEBUG_STUB_QEMU_BUILDARCH)
PK_DEBUG_STUB_QEMU_DIR         := $(srctree)/package/BiscuitOS-debug-stub/BiscuitOS-debug-stub-QEMU
PK_DEBUG_STUB_QEMU_PATCH       := $(PK_DEBUG_STUB_QEMU_DIR)/patch
PK_DEBUG_STUB_QEMU_BSBIT       := BiscuitOS-debug-stub-QEMU-$(PK_DEBUG_STUB_QEMU_VERSION).bsbit
PK_DEBUG_STUB_QEMU_OUT         :=
PK_DEBUG_STUB_QEMU_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_DEBUG_STUB_QEMU_TAR         := $(CONFIG_PK_DEBUG_STUB_QEMU_TAR)
PK_DEBUG_STUB_QEMU_PACKAGE     :=
PK_DEBUG_STUB_QEMU_CONFIG      := $(CONFIG_PK_DEBUG_STUB_QEMU_CONFIG)
SUB_TARGET                  += $(PK_DEBUG_STUB_QEMU_DIR)/build

PK_DEBUG_STUB_QEMU_sh = $(CONFIG_SHELL) $(PK_DEBUG_STUB_QEMU_SCRIPTS) \
                 $1X \
                 $(PK_DEBUG_STUB_QEMU_NAME)X \
                 $(PK_DEBUG_STUB_QEMU_VERSION)X \
                 $(PK_DEBUG_STUB_QEMU_SITE)X \
                 $(PK_DEBUG_STUB_QEMU_GITHUB)X \
                 $(PK_DEBUG_STUB_QEMU_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_DEBUG_STUB_QEMU_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_DEBUG_STUB_QEMU_SUBNAME)X \
                 $(CONFIG_PK_DEBUG_STUB_QEMU_CONFIG)X \
                 $(CONFIG_PK_DEBUG_STUB_QEMU_LIBPATH)X \
                 $(CONFIG_PK_DEBUG_STUB_QEMU_CPPFLAGS)X \
                 $(CONFIG_PK_DEBUG_STUB_QEMU_DPKCONFIG)X \
                 $(CONFIG_PK_DEBUG_STUB_QEMU_CFLAGS)X \
                 $(CONFIG_PK_DEBUG_STUB_QEMU_LDFLAGS)X \
                 $(CONFIG_PK_DEBUG_STUB_QEMU_CXXFLAGS)X \
                 $(CONFIG_PK_DEBUG_STUB_QEMU_ASFLAGS)X \
                 $(PK_DEBUG_STUB_QEMU_BSBIT)X \
                 $(PK_DEBUG_STUB_QEMU_BUILDARCH)X \
		 $(PK_DEBUG_STUB_QEMU_CSRCFILE)X \
                 $(CONFIG_PK_DEBUG_STUB_QEMU_SRCFILE)X \
                 $(CONFIG_PK_DEBUG_STUB_QEMU_CSRCFILE)

$(PK_DEBUG_STUB_QEMU_DIR)/build: FORCE
	$(Q)$(call PK_DEBUG_STUB_QEMU_sh,$(srctree))
