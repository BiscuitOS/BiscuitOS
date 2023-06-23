################################################
#
# BiscuitOS-MEMORY-LOCKING-RCU
#
################################################
PK_MEMLOCK_RCU_NAME        := BiscuitOS-MEMORY-LOCKING-RCU
PK_MEMLOCK_RCU_VERSION     := $(CONFIG_PK_MEMLOCK_RCU_VERSION)
PK_MEMLOCK_RCU_SITE        := $(CONFIG_PK_MEMLOCK_RCU_URL)
PK_MEMLOCK_RCU_GITHUB      := $(CONFIG_PK_MEMLOCK_RCU_GITHUB)
PK_MEMLOCK_RCU_SUBNAME     :=
PK_MEMLOCK_RCU_BUILDARCH   := $(CONFIG_PK_MEMLOCK_RCU_BUILDARCH)
PK_MEMLOCK_RCU_DIR         := $(srctree)/package/MEMORY-LOCKING/BiscuitOS-MEMORY-LOCKING-RCU
PK_MEMLOCK_RCU_PATCH       := $(PK_MEMLOCK_RCU_DIR)/patch
PK_MEMLOCK_RCU_BSBIT       := BiscuitOS-MEMORY-LOCKING-RCU-$(PK_MEMLOCK_RCU_VERSION).bsbit
PK_MEMLOCK_RCU_OUT         :=
PK_MEMLOCK_RCU_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_MEMLOCK_RCU_TAR         := $(CONFIG_PK_MEMLOCK_RCU_TAR)
PK_MEMLOCK_RCU_PACKAGE     :=
PK_MEMLOCK_RCU_CONFIG      := $(CONFIG_PK_MEMLOCK_RCU_CONFIG)
SUB_TARGET                  += $(PK_MEMLOCK_RCU_DIR)/build

PK_MEMLOCK_RCU_sh = $(CONFIG_SHELL) $(PK_MEMLOCK_RCU_SCRIPTS) \
                 $1X \
                 $(PK_MEMLOCK_RCU_NAME)X \
                 $(PK_MEMLOCK_RCU_VERSION)X \
                 $(PK_MEMLOCK_RCU_SITE)X \
                 $(PK_MEMLOCK_RCU_GITHUB)X \
                 $(PK_MEMLOCK_RCU_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_MEMLOCK_RCU_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_MEMLOCK_RCU_SUBNAME)X \
                 $(CONFIG_PK_MEMLOCK_RCU_CONFIG)X \
                 $(CONFIG_PK_MEMLOCK_RCU_LIBPATH)X \
                 $(CONFIG_PK_MEMLOCK_RCU_CPPFLAGS)X \
                 $(CONFIG_PK_MEMLOCK_RCU_DPKCONFIG)X \
                 $(CONFIG_PK_MEMLOCK_RCU_CFLAGS)X \
                 $(CONFIG_PK_MEMLOCK_RCU_LDFLAGS)X \
                 $(CONFIG_PK_MEMLOCK_RCU_CXXFLAGS)X \
                 $(CONFIG_PK_MEMLOCK_RCU_ASFLAGS)X \
                 $(PK_MEMLOCK_RCU_BSBIT)X \
                 $(PK_MEMLOCK_RCU_BUILDARCH)X \
		 $(PK_MEMLOCK_RCU_CSRCFILE)X \
                 $(CONFIG_PK_MEMLOCK_RCU_SRCFILE)X \
                 $(CONFIG_PK_MEMLOCK_RCU_CSRCFILE)

$(PK_MEMLOCK_RCU_DIR)/build: FORCE
	$(Q)$(call PK_MEMLOCK_RCU_sh,$(srctree))
