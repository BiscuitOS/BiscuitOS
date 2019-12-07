################################################
#
# kmemdup
#
################################################
PK_KMEMDUP_NAME        := kmemdup
PK_KMEMDUP_VERSION     := $(CONFIG_PK_KMEMDUP_VERSION)
PK_KMEMDUP_SITE        := $(CONFIG_PK_KMEMDUP_URL)
PK_KMEMDUP_GITHUB      := $(CONFIG_PK_KMEMDUP_GITHUB)
PK_KMEMDUP_SUBNAME     :=
PK_KMEMDUP_BUILDARCH   := $(CONFIG_PK_KMEMDUP_BUILDARCH)
PK_KMEMDUP_DIR         := $(srctree)/package/slab/kmemdup
PK_KMEMDUP_PATCH       := $(PK_KMEMDUP_DIR)/patch
PK_KMEMDUP_BSBIT       := KMEMDUP-$(PK_KMEMDUP_VERSION).bsbit
PK_KMEMDUP_OUT         :=
PK_KMEMDUP_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_KMEMDUP_TAR         := $(CONFIG_PK_KMEMDUP_TAR)
PK_KMEMDUP_PACKAGE     :=
PK_KMEMDUP_CONFIG      := $(CONFIG_PK_KMEMDUP_CONFIG)
SUB_TARGET                  += $(PK_KMEMDUP_DIR)/build

PK_KMEMDUP_sh = $(CONFIG_SHELL) $(PK_KMEMDUP_SCRIPTS) \
                 $1X \
                 $(PK_KMEMDUP_NAME)X \
                 $(PK_KMEMDUP_VERSION)X \
                 $(PK_KMEMDUP_SITE)X \
                 $(PK_KMEMDUP_GITHUB)X \
                 $(PK_KMEMDUP_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_KMEMDUP_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_KMEMDUP_SUBNAME)X \
                 $(CONFIG_PK_KMEMDUP_CONFIG)X \
                 $(CONFIG_PK_KMEMDUP_LIBPATH)X \
                 $(CONFIG_PK_KMEMDUP_CPPFLAGS)X \
                 $(CONFIG_PK_KMEMDUP_DPKCONFIG)X \
                 $(CONFIG_PK_KMEMDUP_CFLAGS)X \
                 $(CONFIG_PK_KMEMDUP_LDFLAGS)X \
                 $(CONFIG_PK_KMEMDUP_CXXFLAGS)X \
                 $(CONFIG_PK_KMEMDUP_ASFLAGS)X \
                 $(PK_KMEMDUP_BSBIT)X \
                 $(PK_KMEMDUP_BUILDARCH)X \
		 $(PK_KMEMDUP_CSRCFILE)X \
                 $(CONFIG_PK_KMEMDUP_SRCFILE)X \
                 $(CONFIG_PK_KMEMDUP_CSRCFILE)

$(PK_KMEMDUP_DIR)/build: FORCE
	$(Q)$(call PK_KMEMDUP_sh,$(srctree))
