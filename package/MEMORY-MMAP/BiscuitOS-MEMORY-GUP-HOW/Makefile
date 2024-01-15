################################################
#
# BiscuitOS-MEMORY-GUP-HOW
#
################################################
PK_MEMORY_GUP_HOW_NAME        := BiscuitOS-MEMORY-GUP-HOW
PK_MEMORY_GUP_HOW_VERSION     := $(CONFIG_PK_MEMORY_GUP_HOW_VERSION)
PK_MEMORY_GUP_HOW_SITE        := $(CONFIG_PK_MEMORY_GUP_HOW_URL)
PK_MEMORY_GUP_HOW_GITHUB      := $(CONFIG_PK_MEMORY_GUP_HOW_GITHUB)
PK_MEMORY_GUP_HOW_SUBNAME     :=
PK_MEMORY_GUP_HOW_BUILDARCH   := $(CONFIG_PK_MEMORY_GUP_HOW_BUILDARCH)
PK_MEMORY_GUP_HOW_DIR         := $(srctree)/package/MEMORY-MMAP/BiscuitOS-MEMORY-GUP-HOW
PK_MEMORY_GUP_HOW_PATCH       := $(PK_MEMORY_GUP_HOW_DIR)/patch
PK_MEMORY_GUP_HOW_BSBIT       := BiscuitOS-MEMORY-GUP-HOW-$(PK_MEMORY_GUP_HOW_VERSION).bsbit
PK_MEMORY_GUP_HOW_OUT         :=
PK_MEMORY_GUP_HOW_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_MEMORY_GUP_HOW_TAR         := $(CONFIG_PK_MEMORY_GUP_HOW_TAR)
PK_MEMORY_GUP_HOW_PACKAGE     :=
PK_MEMORY_GUP_HOW_CONFIG      := $(CONFIG_PK_MEMORY_GUP_HOW_CONFIG)
SUB_TARGET                  += $(PK_MEMORY_GUP_HOW_DIR)/build

PK_MEMORY_GUP_HOW_sh = $(CONFIG_SHELL) $(PK_MEMORY_GUP_HOW_SCRIPTS) \
                 $1X \
                 $(PK_MEMORY_GUP_HOW_NAME)X \
                 $(PK_MEMORY_GUP_HOW_VERSION)X \
                 $(PK_MEMORY_GUP_HOW_SITE)X \
                 $(PK_MEMORY_GUP_HOW_GITHUB)X \
                 $(PK_MEMORY_GUP_HOW_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_MEMORY_GUP_HOW_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_MEMORY_GUP_HOW_SUBNAME)X \
                 $(CONFIG_PK_MEMORY_GUP_HOW_CONFIG)X \
                 $(CONFIG_PK_MEMORY_GUP_HOW_LIBPATH)X \
                 $(CONFIG_PK_MEMORY_GUP_HOW_CPPFLAGS)X \
                 $(CONFIG_PK_MEMORY_GUP_HOW_DPKCONFIG)X \
                 $(CONFIG_PK_MEMORY_GUP_HOW_CFLAGS)X \
                 $(CONFIG_PK_MEMORY_GUP_HOW_LDFLAGS)X \
                 $(CONFIG_PK_MEMORY_GUP_HOW_CXXFLAGS)X \
                 $(CONFIG_PK_MEMORY_GUP_HOW_ASFLAGS)X \
                 $(PK_MEMORY_GUP_HOW_BSBIT)X \
                 $(PK_MEMORY_GUP_HOW_BUILDARCH)X \
		 $(PK_MEMORY_GUP_HOW_CSRCFILE)X \
                 $(CONFIG_PK_MEMORY_GUP_HOW_SRCFILE)X \
                 $(CONFIG_PK_MEMORY_GUP_HOW_CSRCFILE)

$(PK_MEMORY_GUP_HOW_DIR)/build: FORCE
	$(Q)$(call PK_MEMORY_GUP_HOW_sh,$(srctree))
