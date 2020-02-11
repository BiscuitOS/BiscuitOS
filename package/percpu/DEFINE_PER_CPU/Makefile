################################################
#
# DEFINE_PER_CPU
#
################################################
PK_DEFINE_PER_CPU_NAME        := DEFINE_PER_CPU
PK_DEFINE_PER_CPU_VERSION     := $(CONFIG_PK_DEFINE_PER_CPU_VERSION)
PK_DEFINE_PER_CPU_SITE        := $(CONFIG_PK_DEFINE_PER_CPU_URL)
PK_DEFINE_PER_CPU_GITHUB      := $(CONFIG_PK_DEFINE_PER_CPU_GITHUB)
PK_DEFINE_PER_CPU_SUBNAME     :=
PK_DEFINE_PER_CPU_BUILDARCH   := $(CONFIG_PK_DEFINE_PER_CPU_BUILDARCH)
PK_DEFINE_PER_CPU_DIR         := $(srctree)/package/percpu/DEFINE_PER_CPU
PK_DEFINE_PER_CPU_PATCH       := $(PK_DEFINE_PER_CPU_DIR)/patch
PK_DEFINE_PER_CPU_BSBIT       := DEFINE_PER_CPU-$(PK_DEFINE_PER_CPU_VERSION).bsbit
PK_DEFINE_PER_CPU_OUT         :=
PK_DEFINE_PER_CPU_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_DEFINE_PER_CPU_TAR         := $(CONFIG_PK_DEFINE_PER_CPU_TAR)
PK_DEFINE_PER_CPU_PACKAGE     :=
PK_DEFINE_PER_CPU_CONFIG      := $(CONFIG_PK_DEFINE_PER_CPU_CONFIG)
SUB_TARGET                  += $(PK_DEFINE_PER_CPU_DIR)/build

PK_DEFINE_PER_CPU_sh = $(CONFIG_SHELL) $(PK_DEFINE_PER_CPU_SCRIPTS) \
                 $1X \
                 $(PK_DEFINE_PER_CPU_NAME)X \
                 $(PK_DEFINE_PER_CPU_VERSION)X \
                 $(PK_DEFINE_PER_CPU_SITE)X \
                 $(PK_DEFINE_PER_CPU_GITHUB)X \
                 $(PK_DEFINE_PER_CPU_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_DEFINE_PER_CPU_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_DEFINE_PER_CPU_SUBNAME)X \
                 $(CONFIG_PK_DEFINE_PER_CPU_CONFIG)X \
                 $(CONFIG_PK_DEFINE_PER_CPU_LIBPATH)X \
                 $(CONFIG_PK_DEFINE_PER_CPU_CPPFLAGS)X \
                 $(CONFIG_PK_DEFINE_PER_CPU_DPKCONFIG)X \
                 $(CONFIG_PK_DEFINE_PER_CPU_CFLAGS)X \
                 $(CONFIG_PK_DEFINE_PER_CPU_LDFLAGS)X \
                 $(CONFIG_PK_DEFINE_PER_CPU_CXXFLAGS)X \
                 $(CONFIG_PK_DEFINE_PER_CPU_ASFLAGS)X \
                 $(PK_DEFINE_PER_CPU_BSBIT)X \
                 $(PK_DEFINE_PER_CPU_BUILDARCH)X \
		 $(PK_DEFINE_PER_CPU_CSRCFILE)X \
                 $(CONFIG_PK_DEFINE_PER_CPU_SRCFILE)X \
                 $(CONFIG_PK_DEFINE_PER_CPU_CSRCFILE)

$(PK_DEFINE_PER_CPU_DIR)/build: FORCE
	$(Q)$(call PK_DEFINE_PER_CPU_sh,$(srctree))
