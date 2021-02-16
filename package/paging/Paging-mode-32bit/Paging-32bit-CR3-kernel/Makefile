################################################
#
# X86-Paging-32bit-CR3-kernel
#
################################################
PK_PAGING_32BIT_CR3_K_NAME        := X86-Paging-32bit-CR3-kernel
PK_PAGING_32BIT_CR3_K_VERSION     := $(CONFIG_PK_PAGING_32BIT_CR3_K_VERSION)
PK_PAGING_32BIT_CR3_K_SITE        := $(CONFIG_PK_PAGING_32BIT_CR3_K_URL)
PK_PAGING_32BIT_CR3_K_GITHUB      := $(CONFIG_PK_PAGING_32BIT_CR3_K_GITHUB)
PK_PAGING_32BIT_CR3_K_SUBNAME     :=
PK_PAGING_32BIT_CR3_K_BUILDARCH   := $(CONFIG_PK_PAGING_32BIT_CR3_K_BUILDARCH)
PK_PAGING_32BIT_CR3_K_DIR         := $(srctree)/package/paging/Paging-mode-32bit/X86-Paging-32bit-CR3-kernel
PK_PAGING_32BIT_CR3_K_PATCH       := $(PK_PAGING_32BIT_CR3_K_DIR)/patch
PK_PAGING_32BIT_CR3_K_BSBIT       := X86-Paging-32bit-CR3-kernel-$(PK_PAGING_32BIT_CR3_K_VERSION).bsbit
PK_PAGING_32BIT_CR3_K_OUT         :=
PK_PAGING_32BIT_CR3_K_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_PAGING_32BIT_CR3_K_TAR         := $(CONFIG_PK_PAGING_32BIT_CR3_K_TAR)
PK_PAGING_32BIT_CR3_K_PACKAGE     :=
PK_PAGING_32BIT_CR3_K_CONFIG      := $(CONFIG_PK_PAGING_32BIT_CR3_K_CONFIG)
SUB_TARGET                  += $(PK_PAGING_32BIT_CR3_K_DIR)/build

PK_PAGING_32BIT_CR3_K_sh = $(CONFIG_SHELL) $(PK_PAGING_32BIT_CR3_K_SCRIPTS) \
                 $1X \
                 $(PK_PAGING_32BIT_CR3_K_NAME)X \
                 $(PK_PAGING_32BIT_CR3_K_VERSION)X \
                 $(PK_PAGING_32BIT_CR3_K_SITE)X \
                 $(PK_PAGING_32BIT_CR3_K_GITHUB)X \
                 $(PK_PAGING_32BIT_CR3_K_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_PAGING_32BIT_CR3_K_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_PAGING_32BIT_CR3_K_SUBNAME)X \
                 $(CONFIG_PK_PAGING_32BIT_CR3_K_CONFIG)X \
                 $(CONFIG_PK_PAGING_32BIT_CR3_K_LIBPATH)X \
                 $(CONFIG_PK_PAGING_32BIT_CR3_K_CPPFLAGS)X \
                 $(CONFIG_PK_PAGING_32BIT_CR3_K_DPKCONFIG)X \
                 $(CONFIG_PK_PAGING_32BIT_CR3_K_CFLAGS)X \
                 $(CONFIG_PK_PAGING_32BIT_CR3_K_LDFLAGS)X \
                 $(CONFIG_PK_PAGING_32BIT_CR3_K_CXXFLAGS)X \
                 $(CONFIG_PK_PAGING_32BIT_CR3_K_ASFLAGS)X \
                 $(PK_PAGING_32BIT_CR3_K_BSBIT)X \
                 $(PK_PAGING_32BIT_CR3_K_BUILDARCH)X \
		 $(PK_PAGING_32BIT_CR3_K_CSRCFILE)X \
                 $(CONFIG_PK_PAGING_32BIT_CR3_K_SRCFILE)X \
                 $(CONFIG_PK_PAGING_32BIT_CR3_K_CSRCFILE)

$(PK_PAGING_32BIT_CR3_K_DIR)/build: FORCE
	$(Q)$(call PK_PAGING_32BIT_CR3_K_sh,$(srctree))
