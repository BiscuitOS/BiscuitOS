################################################
#
# BiscuitOS-MEMORY-GUP-MM-POPULATE
#
################################################
PK_MEMORY_GUP_MM_POPULATE_NAME        := BiscuitOS-MEMORY-GUP-MM-POPULATE
PK_MEMORY_GUP_MM_POPULATE_VERSION     := $(CONFIG_PK_MEMORY_GUP_MM_POPULATE_VERSION)
PK_MEMORY_GUP_MM_POPULATE_SITE        := $(CONFIG_PK_MEMORY_GUP_MM_POPULATE_URL)
PK_MEMORY_GUP_MM_POPULATE_GITHUB      := $(CONFIG_PK_MEMORY_GUP_MM_POPULATE_GITHUB)
PK_MEMORY_GUP_MM_POPULATE_SUBNAME     :=
PK_MEMORY_GUP_MM_POPULATE_BUILDARCH   := $(CONFIG_PK_MEMORY_GUP_MM_POPULATE_BUILDARCH)
PK_MEMORY_GUP_MM_POPULATE_DIR         := $(srctree)/package/MEMORY-MMAP/BiscuitOS-MEMORY-GUP-MM-POPULATE
PK_MEMORY_GUP_MM_POPULATE_PATCH       := $(PK_MEMORY_GUP_MM_POPULATE_DIR)/patch
PK_MEMORY_GUP_MM_POPULATE_BSBIT       := BiscuitOS-MEMORY-GUP-MM-POPULATE-$(PK_MEMORY_GUP_MM_POPULATE_VERSION).bsbit
PK_MEMORY_GUP_MM_POPULATE_OUT         :=
PK_MEMORY_GUP_MM_POPULATE_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_MEMORY_GUP_MM_POPULATE_TAR         := $(CONFIG_PK_MEMORY_GUP_MM_POPULATE_TAR)
PK_MEMORY_GUP_MM_POPULATE_PACKAGE     :=
PK_MEMORY_GUP_MM_POPULATE_CONFIG      := $(CONFIG_PK_MEMORY_GUP_MM_POPULATE_CONFIG)
SUB_TARGET                  += $(PK_MEMORY_GUP_MM_POPULATE_DIR)/build

PK_MEMORY_GUP_MM_POPULATE_sh = $(CONFIG_SHELL) $(PK_MEMORY_GUP_MM_POPULATE_SCRIPTS) \
                 $1X \
                 $(PK_MEMORY_GUP_MM_POPULATE_NAME)X \
                 $(PK_MEMORY_GUP_MM_POPULATE_VERSION)X \
                 $(PK_MEMORY_GUP_MM_POPULATE_SITE)X \
                 $(PK_MEMORY_GUP_MM_POPULATE_GITHUB)X \
                 $(PK_MEMORY_GUP_MM_POPULATE_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_MEMORY_GUP_MM_POPULATE_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_MEMORY_GUP_MM_POPULATE_SUBNAME)X \
                 $(CONFIG_PK_MEMORY_GUP_MM_POPULATE_CONFIG)X \
                 $(CONFIG_PK_MEMORY_GUP_MM_POPULATE_LIBPATH)X \
                 $(CONFIG_PK_MEMORY_GUP_MM_POPULATE_CPPFLAGS)X \
                 $(CONFIG_PK_MEMORY_GUP_MM_POPULATE_DPKCONFIG)X \
                 $(CONFIG_PK_MEMORY_GUP_MM_POPULATE_CFLAGS)X \
                 $(CONFIG_PK_MEMORY_GUP_MM_POPULATE_LDFLAGS)X \
                 $(CONFIG_PK_MEMORY_GUP_MM_POPULATE_CXXFLAGS)X \
                 $(CONFIG_PK_MEMORY_GUP_MM_POPULATE_ASFLAGS)X \
                 $(PK_MEMORY_GUP_MM_POPULATE_BSBIT)X \
                 $(PK_MEMORY_GUP_MM_POPULATE_BUILDARCH)X \
		 $(PK_MEMORY_GUP_MM_POPULATE_CSRCFILE)X \
                 $(CONFIG_PK_MEMORY_GUP_MM_POPULATE_SRCFILE)X \
                 $(CONFIG_PK_MEMORY_GUP_MM_POPULATE_CSRCFILE)

$(PK_MEMORY_GUP_MM_POPULATE_DIR)/build: FORCE
	$(Q)$(call PK_MEMORY_GUP_MM_POPULATE_sh,$(srctree))
