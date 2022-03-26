################################################
#
# BiscuitOS-ASAN-stack-use-after-scope
#
################################################
PK_ASAN_STACK_UAS_NAME        := BiscuitOS-ASAN-stack-use-after-scope
PK_ASAN_STACK_UAS_VERSION     := $(CONFIG_PK_ASAN_STACK_UAS_VERSION)
PK_ASAN_STACK_UAS_SITE        := $(CONFIG_PK_ASAN_STACK_UAS_URL)
PK_ASAN_STACK_UAS_GITHUB      := $(CONFIG_PK_ASAN_STACK_UAS_GITHUB)
PK_ASAN_STACK_UAS_SUBNAME     :=
PK_ASAN_STACK_UAS_BUILDARCH   := $(CONFIG_PK_ASAN_STACK_UAS_BUILDARCH)
PK_ASAN_STACK_UAS_DIR         := $(srctree)/package/memory-sanitizers/BiscuitOS-ASAN-stack-use-after-scope
PK_ASAN_STACK_UAS_PATCH       := $(PK_ASAN_STACK_UAS_DIR)/patch
PK_ASAN_STACK_UAS_BSBIT       := BiscuitOS-ASAN-stack-use-after-scope-$(PK_ASAN_STACK_UAS_VERSION).bsbit
PK_ASAN_STACK_UAS_OUT         :=
PK_ASAN_STACK_UAS_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_ASAN_STACK_UAS_TAR         := $(CONFIG_PK_ASAN_STACK_UAS_TAR)
PK_ASAN_STACK_UAS_PACKAGE     :=
PK_ASAN_STACK_UAS_CONFIG      := $(CONFIG_PK_ASAN_STACK_UAS_CONFIG)
SUB_TARGET                  += $(PK_ASAN_STACK_UAS_DIR)/build

PK_ASAN_STACK_UAS_sh = $(CONFIG_SHELL) $(PK_ASAN_STACK_UAS_SCRIPTS) \
                 $1X \
                 $(PK_ASAN_STACK_UAS_NAME)X \
                 $(PK_ASAN_STACK_UAS_VERSION)X \
                 $(PK_ASAN_STACK_UAS_SITE)X \
                 $(PK_ASAN_STACK_UAS_GITHUB)X \
                 $(PK_ASAN_STACK_UAS_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_ASAN_STACK_UAS_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_ASAN_STACK_UAS_SUBNAME)X \
                 $(CONFIG_PK_ASAN_STACK_UAS_CONFIG)X \
                 $(CONFIG_PK_ASAN_STACK_UAS_LIBPATH)X \
                 $(CONFIG_PK_ASAN_STACK_UAS_CPPFLAGS)X \
                 $(CONFIG_PK_ASAN_STACK_UAS_DPKCONFIG)X \
                 $(CONFIG_PK_ASAN_STACK_UAS_CFLAGS)X \
                 $(CONFIG_PK_ASAN_STACK_UAS_LDFLAGS)X \
                 $(CONFIG_PK_ASAN_STACK_UAS_CXXFLAGS)X \
                 $(CONFIG_PK_ASAN_STACK_UAS_ASFLAGS)X \
                 $(PK_ASAN_STACK_UAS_BSBIT)X \
                 $(PK_ASAN_STACK_UAS_BUILDARCH)X \
		 $(PK_ASAN_STACK_UAS_CSRCFILE)X \
                 $(CONFIG_PK_ASAN_STACK_UAS_SRCFILE)X \
                 $(CONFIG_PK_ASAN_STACK_UAS_CSRCFILE)

$(PK_ASAN_STACK_UAS_DIR)/build: FORCE
	$(Q)$(call PK_ASAN_STACK_UAS_sh,$(srctree))
