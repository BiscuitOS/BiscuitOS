################################################
#
# PERCPU linux 2.6.14
#
################################################
PK_PERCPU_2_6_14_NAME        := BiscuitOS_PERCPU
PK_PERCPU_2_6_14_VERSION     := $(CONFIG_PK_PERCPU_2_6_14_VERSION)
PK_PERCPU_2_6_14_SITE        := $(CONFIG_PK_PERCPU_2_6_14_URL)
PK_PERCPU_2_6_14_GITHUB      := $(CONFIG_PK_PERCPU_2_6_14_GITHUB)
PK_PERCPU_2_6_14_SUBNAME     :=
PK_PERCPU_2_6_14_BUILDARCH   := $(CONFIG_PK_PERCPU_2_6_14_BUILDARCH)
PK_PERCPU_2_6_14_DIR         := $(srctree)/package/memory_history/PERCPU/linux-2.6.14
PK_PERCPU_2_6_14_PATCH       := $(PK_PERCPU_2_6_14_DIR)/patch
PK_PERCPU_2_6_14_BSBIT       := BiscuitOS_PERCPU-$(PK_PERCPU_2_6_14_VERSION).bsbit
PK_PERCPU_2_6_14_OUT         :=
PK_PERCPU_2_6_14_SCRIPTS     := $(srctree)/scripts/package/package-memory.sh
PK_PERCPU_2_6_14_TAR         := $(CONFIG_PK_PERCPU_2_6_14_TAR)
PK_PERCPU_2_6_14_PACKAGE     :=
PK_PERCPU_2_6_14_CONFIG      := $(CONFIG_PK_PERCPU_2_6_14_CONFIG)
SUB_TARGET                  += $(PK_PERCPU_2_6_14_DIR)/build

PK_PERCPU_2_6_14_sh = $(CONFIG_SHELL) $(PK_PERCPU_2_6_14_SCRIPTS) \
                 $1X \
                 $(PK_PERCPU_2_6_14_NAME)X \
                 $(PK_PERCPU_2_6_14_VERSION)X \
                 $(PK_PERCPU_2_6_14_SITE)X \
                 $(PK_PERCPU_2_6_14_GITHUB)X \
                 $(PK_PERCPU_2_6_14_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_PERCPU_2_6_14_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_PERCPU_2_6_14_SUBNAME)X \
                 $(CONFIG_PK_PERCPU_2_6_14_CONFIG)X \
                 $(CONFIG_PK_PERCPU_2_6_14_LIBPATH)X \
                 $(CONFIG_PK_PERCPU_2_6_14_CPPFLAGS)X \
                 $(CONFIG_PK_PERCPU_2_6_14_DPKCONFIG)X \
                 $(CONFIG_PK_PERCPU_2_6_14_CFLAGS)X \
                 $(CONFIG_PK_PERCPU_2_6_14_LDFLAGS)X \
                 $(CONFIG_PK_PERCPU_2_6_14_CXXFLAGS)X \
                 $(CONFIG_PK_PERCPU_2_6_14_ASFLAGS)X \
                 $(PK_PERCPU_2_6_14_BSBIT)X \
                 $(PK_PERCPU_2_6_14_BUILDARCH)X \
		 $(PK_PERCPU_2_6_14_CSRCFILE)X \
                 $(CONFIG_PK_PERCPU_2_6_14_SRCFILE)X \
                 $(CONFIG_PK_PERCPU_2_6_14_CSRCFILE)

$(PK_PERCPU_2_6_14_DIR)/build: FORCE
	$(Q)$(call PK_PERCPU_2_6_14_sh,$(srctree))
