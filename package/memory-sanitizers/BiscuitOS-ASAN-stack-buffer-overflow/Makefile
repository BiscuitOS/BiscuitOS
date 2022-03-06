################################################
#
# BiscuitOS-ASAN-stack-buffer-overflow
#
################################################
PK_ASAN_STACK_BOF_NAME        := BiscuitOS-ASAN-stack-buffer-overflow
PK_ASAN_STACK_BOF_VERSION     := $(CONFIG_PK_ASAN_STACK_BOF_VERSION)
PK_ASAN_STACK_BOF_SITE        := $(CONFIG_PK_ASAN_STACK_BOF_URL)
PK_ASAN_STACK_BOF_GITHUB      := $(CONFIG_PK_ASAN_STACK_BOF_GITHUB)
PK_ASAN_STACK_BOF_SUBNAME     :=
PK_ASAN_STACK_BOF_BUILDARCH   := $(CONFIG_PK_ASAN_STACK_BOF_BUILDARCH)
PK_ASAN_STACK_BOF_DIR         := $(srctree)/package/memory-sanitizers/BiscuitOS-ASAN-stack-buffer-overflow
PK_ASAN_STACK_BOF_PATCH       := $(PK_ASAN_STACK_BOF_DIR)/patch
PK_ASAN_STACK_BOF_BSBIT       := BiscuitOS-ASAN-stack-buffer-overflow-$(PK_ASAN_STACK_BOF_VERSION).bsbit
PK_ASAN_STACK_BOF_OUT         :=
PK_ASAN_STACK_BOF_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_ASAN_STACK_BOF_TAR         := $(CONFIG_PK_ASAN_STACK_BOF_TAR)
PK_ASAN_STACK_BOF_PACKAGE     :=
PK_ASAN_STACK_BOF_CONFIG      := $(CONFIG_PK_ASAN_STACK_BOF_CONFIG)
SUB_TARGET                  += $(PK_ASAN_STACK_BOF_DIR)/build

PK_ASAN_STACK_BOF_sh = $(CONFIG_SHELL) $(PK_ASAN_STACK_BOF_SCRIPTS) \
                 $1X \
                 $(PK_ASAN_STACK_BOF_NAME)X \
                 $(PK_ASAN_STACK_BOF_VERSION)X \
                 $(PK_ASAN_STACK_BOF_SITE)X \
                 $(PK_ASAN_STACK_BOF_GITHUB)X \
                 $(PK_ASAN_STACK_BOF_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_ASAN_STACK_BOF_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_ASAN_STACK_BOF_SUBNAME)X \
                 $(CONFIG_PK_ASAN_STACK_BOF_CONFIG)X \
                 $(CONFIG_PK_ASAN_STACK_BOF_LIBPATH)X \
                 $(CONFIG_PK_ASAN_STACK_BOF_CPPFLAGS)X \
                 $(CONFIG_PK_ASAN_STACK_BOF_DPKCONFIG)X \
                 $(CONFIG_PK_ASAN_STACK_BOF_CFLAGS)X \
                 $(CONFIG_PK_ASAN_STACK_BOF_LDFLAGS)X \
                 $(CONFIG_PK_ASAN_STACK_BOF_CXXFLAGS)X \
                 $(CONFIG_PK_ASAN_STACK_BOF_ASFLAGS)X \
                 $(PK_ASAN_STACK_BOF_BSBIT)X \
                 $(PK_ASAN_STACK_BOF_BUILDARCH)X \
		 $(PK_ASAN_STACK_BOF_CSRCFILE)X \
                 $(CONFIG_PK_ASAN_STACK_BOF_SRCFILE)X \
                 $(CONFIG_PK_ASAN_STACK_BOF_CSRCFILE)

$(PK_ASAN_STACK_BOF_DIR)/build: FORCE
	$(Q)$(call PK_ASAN_STACK_BOF_sh,$(srctree))
