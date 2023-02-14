################################################
#
# BiscuitOS-CACHE-WB-MEM-KERNEL
#
################################################
PK_CACHE_WB_MEM_K_NAME        := BiscuitOS-CACHE-WB-MEM-KERNEL
PK_CACHE_WB_MEM_K_VERSION     := $(CONFIG_PK_CACHE_WB_MEM_K_VERSION)
PK_CACHE_WB_MEM_K_SITE        := $(CONFIG_PK_CACHE_WB_MEM_K_URL)
PK_CACHE_WB_MEM_K_GITHUB      := $(CONFIG_PK_CACHE_WB_MEM_K_GITHUB)
PK_CACHE_WB_MEM_K_SUBNAME     :=
PK_CACHE_WB_MEM_K_BUILDARCH   := $(CONFIG_PK_CACHE_WB_MEM_K_BUILDARCH)
PK_CACHE_WB_MEM_K_DIR         := $(srctree)/package/CACHE/BiscuitOS-CACHE-WB-MEM-KERNEL
PK_CACHE_WB_MEM_K_PATCH       := $(PK_CACHE_WB_MEM_K_DIR)/patch
PK_CACHE_WB_MEM_K_BSBIT       := BiscuitOS-CACHE-WB-MEM-KERNEL-$(PK_CACHE_WB_MEM_K_VERSION).bsbit
PK_CACHE_WB_MEM_K_OUT         :=
PK_CACHE_WB_MEM_K_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_CACHE_WB_MEM_K_TAR         := $(CONFIG_PK_CACHE_WB_MEM_K_TAR)
PK_CACHE_WB_MEM_K_PACKAGE     :=
PK_CACHE_WB_MEM_K_CONFIG      := $(CONFIG_PK_CACHE_WB_MEM_K_CONFIG)
SUB_TARGET                  += $(PK_CACHE_WB_MEM_K_DIR)/build

PK_CACHE_WB_MEM_K_sh = $(CONFIG_SHELL) $(PK_CACHE_WB_MEM_K_SCRIPTS) \
                 $1X \
                 $(PK_CACHE_WB_MEM_K_NAME)X \
                 $(PK_CACHE_WB_MEM_K_VERSION)X \
                 $(PK_CACHE_WB_MEM_K_SITE)X \
                 $(PK_CACHE_WB_MEM_K_GITHUB)X \
                 $(PK_CACHE_WB_MEM_K_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_CACHE_WB_MEM_K_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_CACHE_WB_MEM_K_SUBNAME)X \
                 $(CONFIG_PK_CACHE_WB_MEM_K_CONFIG)X \
                 $(CONFIG_PK_CACHE_WB_MEM_K_LIBPATH)X \
                 $(CONFIG_PK_CACHE_WB_MEM_K_CPPFLAGS)X \
                 $(CONFIG_PK_CACHE_WB_MEM_K_DPKCONFIG)X \
                 $(CONFIG_PK_CACHE_WB_MEM_K_CFLAGS)X \
                 $(CONFIG_PK_CACHE_WB_MEM_K_LDFLAGS)X \
                 $(CONFIG_PK_CACHE_WB_MEM_K_CXXFLAGS)X \
                 $(CONFIG_PK_CACHE_WB_MEM_K_ASFLAGS)X \
                 $(PK_CACHE_WB_MEM_K_BSBIT)X \
                 $(PK_CACHE_WB_MEM_K_BUILDARCH)X \
		 $(PK_CACHE_WB_MEM_K_CSRCFILE)X \
                 $(CONFIG_PK_CACHE_WB_MEM_K_SRCFILE)X \
                 $(CONFIG_PK_CACHE_WB_MEM_K_CSRCFILE)

$(PK_CACHE_WB_MEM_K_DIR)/build: FORCE
	$(Q)$(call PK_CACHE_WB_MEM_K_sh,$(srctree))
