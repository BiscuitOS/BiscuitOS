################################################
#
# BiscuitOS-kernel
#
################################################
PK_KERNEL_DEMO_NAME        := BiscuitOS-kernel
PK_KERNEL_DEMO_VERSION     := $(CONFIG_PK_KERNEL_DEMO_VERSION)
PK_KERNEL_DEMO_SITE        := $(CONFIG_PK_KERNEL_DEMO_URL)
PK_KERNEL_DEMO_GITHUB      := $(CONFIG_PK_KERNEL_DEMO_GITHUB)
PK_KERNEL_DEMO_SUBNAME     :=
PK_KERNEL_DEMO_BUILDARCH   := $(CONFIG_PK_KERNEL_DEMO_BUILDARCH)
PK_KERNEL_DEMO_DIR         := $(srctree)/package/BiscuitOS-demo/BiscuitOS-kernel
PK_KERNEL_DEMO_PATCH       := $(PK_KERNEL_DEMO_DIR)/patch
PK_KERNEL_DEMO_BSBIT       := BiscuitOS-kernel-$(PK_KERNEL_DEMO_VERSION).bsbit
PK_KERNEL_DEMO_OUT         :=
PK_KERNEL_DEMO_SCRIPTS     := $(srctree)/scripts/package/package-kernel.sh
PK_KERNEL_DEMO_TAR         := $(CONFIG_PK_KERNEL_DEMO_TAR)
PK_KERNEL_DEMO_PACKAGE     :=
PK_KERNEL_DEMO_CONFIG      := $(CONFIG_PK_KERNEL_DEMO_CONFIG)
SUB_TARGET                  += $(PK_KERNEL_DEMO_DIR)/build

PK_KERNEL_DEMO_sh = $(CONFIG_SHELL) $(PK_KERNEL_DEMO_SCRIPTS) \
                 $1X \
                 $(PK_KERNEL_DEMO_NAME)X \
                 $(PK_KERNEL_DEMO_VERSION)X \
                 $(PK_KERNEL_DEMO_SITE)X \
                 $(PK_KERNEL_DEMO_GITHUB)X \
                 $(PK_KERNEL_DEMO_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_KERNEL_DEMO_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_KERNEL_DEMO_SUBNAME)X \
                 $(CONFIG_PK_KERNEL_DEMO_CONFIG)X \
                 $(CONFIG_PK_KERNEL_DEMO_LIBPATH)X \
                 $(CONFIG_PK_KERNEL_DEMO_CPPFLAGS)X \
                 $(CONFIG_PK_KERNEL_DEMO_DPKCONFIG)X \
                 $(CONFIG_PK_KERNEL_DEMO_CFLAGS)X \
                 $(CONFIG_PK_KERNEL_DEMO_LDFLAGS)X \
                 $(CONFIG_PK_KERNEL_DEMO_CXXFLAGS)X \
                 $(CONFIG_PK_KERNEL_DEMO_ASFLAGS)X \
                 $(PK_KERNEL_DEMO_BSBIT)X \
                 $(PK_KERNEL_DEMO_BUILDARCH)X \
		 $(PK_KERNEL_DEMO_CSRCFILE)X \
                 $(CONFIG_PK_KERNEL_DEMO_SRCFILE)X \
                 $(CONFIG_PK_KERNEL_DEMO_CSRCFILE)

$(PK_KERNEL_DEMO_DIR)/build: FORCE
	$(Q)$(call PK_KERNEL_DEMO_sh,$(srctree))
