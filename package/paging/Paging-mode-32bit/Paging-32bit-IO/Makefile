################################################
#
# X86-Paging-32bit-IO
#
################################################
PK_PAGING_32BIT_IO_NAME        := X86-Paging-32bit-IO
PK_PAGING_32BIT_IO_VERSION     := $(CONFIG_PK_PAGING_32BIT_IO_VERSION)
PK_PAGING_32BIT_IO_SITE        := $(CONFIG_PK_PAGING_32BIT_IO_URL)
PK_PAGING_32BIT_IO_GITHUB      := $(CONFIG_PK_PAGING_32BIT_IO_GITHUB)
PK_PAGING_32BIT_IO_SUBNAME     :=
PK_PAGING_32BIT_IO_BUILDARCH   := $(CONFIG_PK_PAGING_32BIT_IO_BUILDARCH)
PK_PAGING_32BIT_IO_DIR         := $(srctree)/package/paging/Paging-mode-32bit/Paging-32bit-IO
PK_PAGING_32BIT_IO_PATCH       := $(PK_PAGING_32BIT_IO_DIR)/patch
PK_PAGING_32BIT_IO_BSBIT       := X86-Paging-32bit-IO-$(PK_PAGING_32BIT_IO_VERSION).bsbit
PK_PAGING_32BIT_IO_OUT         :=
PK_PAGING_32BIT_IO_SCRIPTS     := $(srctree)/scripts/package/package-kernel.sh
PK_PAGING_32BIT_IO_TAR         := $(CONFIG_PK_PAGING_32BIT_IO_TAR)
PK_PAGING_32BIT_IO_PACKAGE     :=
PK_PAGING_32BIT_IO_CONFIG      := $(CONFIG_PK_PAGING_32BIT_IO_CONFIG)
SUB_TARGET                  += $(PK_PAGING_32BIT_IO_DIR)/build

PK_PAGING_32BIT_IO_sh = $(CONFIG_SHELL) $(PK_PAGING_32BIT_IO_SCRIPTS) \
                 $1X \
                 $(PK_PAGING_32BIT_IO_NAME)X \
                 $(PK_PAGING_32BIT_IO_VERSION)X \
                 $(PK_PAGING_32BIT_IO_SITE)X \
                 $(PK_PAGING_32BIT_IO_GITHUB)X \
                 $(PK_PAGING_32BIT_IO_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_PAGING_32BIT_IO_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_PAGING_32BIT_IO_SUBNAME)X \
                 $(CONFIG_PK_PAGING_32BIT_IO_CONFIG)X \
                 $(CONFIG_PK_PAGING_32BIT_IO_LIBPATH)X \
                 $(CONFIG_PK_PAGING_32BIT_IO_CPPFLAGS)X \
                 $(CONFIG_PK_PAGING_32BIT_IO_DPKCONFIG)X \
                 $(CONFIG_PK_PAGING_32BIT_IO_CFLAGS)X \
                 $(CONFIG_PK_PAGING_32BIT_IO_LDFLAGS)X \
                 $(CONFIG_PK_PAGING_32BIT_IO_CXXFLAGS)X \
                 $(CONFIG_PK_PAGING_32BIT_IO_ASFLAGS)X \
                 $(PK_PAGING_32BIT_IO_BSBIT)X \
                 $(PK_PAGING_32BIT_IO_BUILDARCH)X \
		 $(PK_PAGING_32BIT_IO_CSRCFILE)X \
                 $(CONFIG_PK_PAGING_32BIT_IO_SRCFILE)X \
                 $(CONFIG_PK_PAGING_32BIT_IO_CSRCFILE)

$(PK_PAGING_32BIT_IO_DIR)/build: FORCE
	$(Q)$(call PK_PAGING_32BIT_IO_sh,$(srctree))
