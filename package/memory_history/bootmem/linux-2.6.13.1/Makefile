################################################
#
# bootmem linux 2.6.13.1
#
################################################
PK_BOOTMEM_2_6_13_1_NAME        := BiscuitOS_bootmem
PK_BOOTMEM_2_6_13_1_VERSION     := $(CONFIG_PK_BOOTMEM_2_6_13_1_VERSION)
PK_BOOTMEM_2_6_13_1_SITE        := $(CONFIG_PK_BOOTMEM_2_6_13_1_URL)
PK_BOOTMEM_2_6_13_1_GITHUB      := $(CONFIG_PK_BOOTMEM_2_6_13_1_GITHUB)
PK_BOOTMEM_2_6_13_1_SUBNAME     :=
PK_BOOTMEM_2_6_13_1_BUILDARCH   := $(CONFIG_PK_BOOTMEM_2_6_13_1_BUILDARCH)
PK_BOOTMEM_2_6_13_1_DIR         := $(srctree)/package/memory_history/bootmem/linux-2.6.13.1
PK_BOOTMEM_2_6_13_1_PATCH       := $(PK_BOOTMEM_2_6_13_1_DIR)/patch
PK_BOOTMEM_2_6_13_1_BSBIT       := BiscuitOS_bootmem-$(PK_BOOTMEM_2_6_13_1_VERSION).bsbit
PK_BOOTMEM_2_6_13_1_OUT         :=
PK_BOOTMEM_2_6_13_1_SCRIPTS     := $(srctree)/scripts/package/package-memory.sh
PK_BOOTMEM_2_6_13_1_TAR         := $(CONFIG_PK_BOOTMEM_2_6_13_1_TAR)
PK_BOOTMEM_2_6_13_1_PACKAGE     :=
PK_BOOTMEM_2_6_13_1_CONFIG      := $(CONFIG_PK_BOOTMEM_2_6_13_1_CONFIG)
SUB_TARGET                  += $(PK_BOOTMEM_2_6_13_1_DIR)/build

PK_BOOTMEM_2_6_13_1_sh = $(CONFIG_SHELL) $(PK_BOOTMEM_2_6_13_1_SCRIPTS) \
                 $1X \
                 $(PK_BOOTMEM_2_6_13_1_NAME)X \
                 $(PK_BOOTMEM_2_6_13_1_VERSION)X \
                 $(PK_BOOTMEM_2_6_13_1_SITE)X \
                 $(PK_BOOTMEM_2_6_13_1_GITHUB)X \
                 $(PK_BOOTMEM_2_6_13_1_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_BOOTMEM_2_6_13_1_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_BOOTMEM_2_6_13_1_SUBNAME)X \
                 $(CONFIG_PK_BOOTMEM_2_6_13_1_CONFIG)X \
                 $(CONFIG_PK_BOOTMEM_2_6_13_1_LIBPATH)X \
                 $(CONFIG_PK_BOOTMEM_2_6_13_1_CPPFLAGS)X \
                 $(CONFIG_PK_BOOTMEM_2_6_13_1_DPKCONFIG)X \
                 $(CONFIG_PK_BOOTMEM_2_6_13_1_CFLAGS)X \
                 $(CONFIG_PK_BOOTMEM_2_6_13_1_LDFLAGS)X \
                 $(CONFIG_PK_BOOTMEM_2_6_13_1_CXXFLAGS)X \
                 $(CONFIG_PK_BOOTMEM_2_6_13_1_ASFLAGS)X \
                 $(PK_BOOTMEM_2_6_13_1_BSBIT)X \
                 $(PK_BOOTMEM_2_6_13_1_BUILDARCH)X \
		 $(PK_BOOTMEM_2_6_13_1_CSRCFILE)X \
                 $(CONFIG_PK_BOOTMEM_2_6_13_1_SRCFILE)X \
                 $(CONFIG_PK_BOOTMEM_2_6_13_1_CSRCFILE)

$(PK_BOOTMEM_2_6_13_1_DIR)/build: FORCE
	$(Q)$(call PK_BOOTMEM_2_6_13_1_sh,$(srctree))
