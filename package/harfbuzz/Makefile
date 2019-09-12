################################################
#
# harfbuzz
#
################################################
PK_HARFBUZZ_NAME        := harfbuzz
PK_HARFBUZZ_VERSION     := $(CONFIG_PK_HARFBUZZ_VERSION)
PK_HARFBUZZ_SITE        := $(CONFIG_PK_HARFBUZZ_URL)
PK_HARFBUZZ_GITHUB      := $(CONFIG_PK_HARFBUZZ_GITHUB)
PK_HARFBUZZ_SUBNAME     :=
PK_HARFBUZZ_BUILDARCH   := $(CONFIG_PK_HARFBUZZ_BUILDARCH)
PK_HARFBUZZ_DIR         := $(srctree)/package/harfbuzz
PK_HARFBUZZ_PATCH       := $(PK_HARFBUZZ_DIR)/patch
PK_HARFBUZZ_BSBIT       := harfbuzz-$(PK_HARFBUZZ_VERSION).bsbit
PK_HARFBUZZ_OUT         :=
PK_HARFBUZZ_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_HARFBUZZ_TAR         := $(CONFIG_PK_HARFBUZZ_TAR)
PK_HARFBUZZ_PACKAGE     :=
PK_HARFBUZZ_CONFIG      := $(CONFIG_PK_HARFBUZZ_CONFIG)
SUB_TARGET              += $(PK_HARFBUZZ_DIR)/build

PK_HARFBUZZ_sh = $(CONFIG_SHELL) $(PK_HARFBUZZ_SCRIPTS) \
                 $1X \
                 $(PK_HARFBUZZ_NAME)X \
                 $(PK_HARFBUZZ_VERSION)X \
                 $(PK_HARFBUZZ_SITE)X \
                 $(PK_HARFBUZZ_GITHUB)X \
                 $(PK_HARFBUZZ_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_HARFBUZZ_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_HARFBUZZ_SUBNAME)X \
                 $(CONFIG_PK_HARFBUZZ_CONFIG)X \
                 $(CONFIG_PK_HARFBUZZ_LIBPATH)X \
                 $(CONFIG_PK_HARFBUZZ_CPPFLAGS)X \
                 $(CONFIG_PK_HARFBUZZ_DPKCONFIG)X \
                 $(CONFIG_PK_HARFBUZZ_CFLAGS)X \
                 $(CONFIG_PK_HARFBUZZ_LDFLAGS)X \
                 $(CONFIG_PK_HARFBUZZ_CXXFLAGS)X \
                 $(CONFIG_PK_HARFBUZZ_ASFLAGS)X \
                 $(PK_HARFBUZZ_BSBIT)X \
                 $(PK_HARFBUZZ_BUILDARCH)X

$(PK_HARFBUZZ_DIR)/build: FORCE
	$(Q)$(call PK_HARFBUZZ_sh,$(srctree))
