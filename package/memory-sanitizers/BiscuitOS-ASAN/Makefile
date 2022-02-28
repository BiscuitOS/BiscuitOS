################################################
#
# BiscuitOS-ASAN
#
################################################
PK_ASAN_NAME        := BiscuitOS-ASAN
PK_ASAN_VERSION     := $(CONFIG_PK_ASAN_VERSION)
PK_ASAN_SITE        := $(CONFIG_PK_ASAN_URL)
PK_ASAN_GITHUB      := $(CONFIG_PK_ASAN_GITHUB)
PK_ASAN_SUBNAME     :=
PK_ASAN_BUILDARCH   := $(CONFIG_PK_ASAN_BUILDARCH)
PK_ASAN_DIR         := $(srctree)/package/memory-sanitizers/BiscuitOS-ASAN
PK_ASAN_PATCH       := $(PK_ASAN_DIR)/patch
PK_ASAN_BSBIT       := BiscuitOS-ASAN-$(PK_ASAN_VERSION).bsbit
PK_ASAN_OUT         :=
PK_ASAN_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_ASAN_TAR         := $(CONFIG_PK_ASAN_TAR)
PK_ASAN_PACKAGE     :=
PK_ASAN_CONFIG      := $(CONFIG_PK_ASAN_CONFIG)
SUB_TARGET                  += $(PK_ASAN_DIR)/build

PK_ASAN_sh = $(CONFIG_SHELL) $(PK_ASAN_SCRIPTS) \
                 $1X \
                 $(PK_ASAN_NAME)X \
                 $(PK_ASAN_VERSION)X \
                 $(PK_ASAN_SITE)X \
                 $(PK_ASAN_GITHUB)X \
                 $(PK_ASAN_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_ASAN_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_ASAN_SUBNAME)X \
                 $(CONFIG_PK_ASAN_CONFIG)X \
                 $(CONFIG_PK_ASAN_LIBPATH)X \
                 $(CONFIG_PK_ASAN_CPPFLAGS)X \
                 $(CONFIG_PK_ASAN_DPKCONFIG)X \
                 $(CONFIG_PK_ASAN_CFLAGS)X \
                 $(CONFIG_PK_ASAN_LDFLAGS)X \
                 $(CONFIG_PK_ASAN_CXXFLAGS)X \
                 $(CONFIG_PK_ASAN_ASFLAGS)X \
                 $(PK_ASAN_BSBIT)X \
                 $(PK_ASAN_BUILDARCH)X \
		 $(PK_ASAN_CSRCFILE)X \
                 $(CONFIG_PK_ASAN_SRCFILE)X \
                 $(CONFIG_PK_ASAN_CSRCFILE)

$(PK_ASAN_DIR)/build: FORCE
	$(Q)$(call PK_ASAN_sh,$(srctree))
