################################################
#
# bootmem linux 2.6.12.2
#
################################################
PK_BOOTMEM_2_6_12_2_NAME        := BiscuitOS_bootmem
PK_BOOTMEM_2_6_12_2_VERSION     := $(CONFIG_PK_BOOTMEM_2_6_12_2_VERSION)
PK_BOOTMEM_2_6_12_2_SITE        := $(CONFIG_PK_BOOTMEM_2_6_12_2_URL)
PK_BOOTMEM_2_6_12_2_GITHUB      := $(CONFIG_PK_BOOTMEM_2_6_12_2_GITHUB)
PK_BOOTMEM_2_6_12_2_SUBNAME     :=
PK_BOOTMEM_2_6_12_2_BUILDARCH   := $(CONFIG_PK_BOOTMEM_2_6_12_2_BUILDARCH)
PK_BOOTMEM_2_6_12_2_DIR         := $(srctree)/package/memory_history/bootmem/linux-2.6.12.2
PK_BOOTMEM_2_6_12_2_PATCH       := $(PK_BOOTMEM_2_6_12_2_DIR)/patch
PK_BOOTMEM_2_6_12_2_BSBIT       := BiscuitOS_bootmem-$(PK_BOOTMEM_2_6_12_2_VERSION).bsbit
PK_BOOTMEM_2_6_12_2_OUT         :=
PK_BOOTMEM_2_6_12_2_SCRIPTS     := $(srctree)/scripts/package/package-memory.sh
PK_BOOTMEM_2_6_12_2_TAR         := $(CONFIG_PK_BOOTMEM_2_6_12_2_TAR)
PK_BOOTMEM_2_6_12_2_PACKAGE     :=
PK_BOOTMEM_2_6_12_2_CONFIG      := $(CONFIG_PK_BOOTMEM_2_6_12_2_CONFIG)
SUB_TARGET                  += $(PK_BOOTMEM_2_6_12_2_DIR)/build

PK_BOOTMEM_2_6_12_2_sh = $(CONFIG_SHELL) $(PK_BOOTMEM_2_6_12_2_SCRIPTS) \
                 $1X \
                 $(PK_BOOTMEM_2_6_12_2_NAME)X \
                 $(PK_BOOTMEM_2_6_12_2_VERSION)X \
                 $(PK_BOOTMEM_2_6_12_2_SITE)X \
                 $(PK_BOOTMEM_2_6_12_2_GITHUB)X \
                 $(PK_BOOTMEM_2_6_12_2_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_BOOTMEM_2_6_12_2_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_BOOTMEM_2_6_12_2_SUBNAME)X \
                 $(CONFIG_PK_BOOTMEM_2_6_12_2_CONFIG)X \
                 $(CONFIG_PK_BOOTMEM_2_6_12_2_LIBPATH)X \
                 $(CONFIG_PK_BOOTMEM_2_6_12_2_CPPFLAGS)X \
                 $(CONFIG_PK_BOOTMEM_2_6_12_2_DPKCONFIG)X \
                 $(CONFIG_PK_BOOTMEM_2_6_12_2_CFLAGS)X \
                 $(CONFIG_PK_BOOTMEM_2_6_12_2_LDFLAGS)X \
                 $(CONFIG_PK_BOOTMEM_2_6_12_2_CXXFLAGS)X \
                 $(CONFIG_PK_BOOTMEM_2_6_12_2_ASFLAGS)X \
                 $(PK_BOOTMEM_2_6_12_2_BSBIT)X \
                 $(PK_BOOTMEM_2_6_12_2_BUILDARCH)X \
		 $(PK_BOOTMEM_2_6_12_2_CSRCFILE)X \
                 $(CONFIG_PK_BOOTMEM_2_6_12_2_SRCFILE)X \
                 $(CONFIG_PK_BOOTMEM_2_6_12_2_CSRCFILE)

$(PK_BOOTMEM_2_6_12_2_DIR)/build: FORCE
	$(Q)$(call PK_BOOTMEM_2_6_12_2_sh,$(srctree))
