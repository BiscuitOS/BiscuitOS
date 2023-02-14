################################################
#
# BiscuitOS-MMAP-Alloc-Special-Memory-Userspace
#
################################################
PK_MMAP_SPECIAL_U_NAME        := BiscuitOS-MMAP-Alloc-Special-Memory-Userspace
PK_MMAP_SPECIAL_U_VERSION     := $(CONFIG_PK_MMAP_SPECIAL_U_VERSION)
PK_MMAP_SPECIAL_U_SITE        := $(CONFIG_PK_MMAP_SPECIAL_U_URL)
PK_MMAP_SPECIAL_U_GITHUB      := $(CONFIG_PK_MMAP_SPECIAL_U_GITHUB)
PK_MMAP_SPECIAL_U_SUBNAME     :=
PK_MMAP_SPECIAL_U_BUILDARCH   := $(CONFIG_PK_MMAP_SPECIAL_U_BUILDARCH)
PK_MMAP_SPECIAL_U_DIR         := $(srctree)/package/memory-mapping/BiscuitOS-MMAP-Alloc-Special-Memory-Userspace
PK_MMAP_SPECIAL_U_PATCH       := $(PK_MMAP_SPECIAL_U_DIR)/patch
PK_MMAP_SPECIAL_U_BSBIT       := BiscuitOS-MMAP-Alloc-Special-Memory-Userspace-$(PK_MMAP_SPECIAL_U_VERSION).bsbit
PK_MMAP_SPECIAL_U_OUT         :=
PK_MMAP_SPECIAL_U_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_MMAP_SPECIAL_U_TAR         := $(CONFIG_PK_MMAP_SPECIAL_U_TAR)
PK_MMAP_SPECIAL_U_PACKAGE     :=
PK_MMAP_SPECIAL_U_CONFIG      := $(CONFIG_PK_MMAP_SPECIAL_U_CONFIG)
SUB_TARGET                  += $(PK_MMAP_SPECIAL_U_DIR)/build

PK_MMAP_SPECIAL_U_sh = $(CONFIG_SHELL) $(PK_MMAP_SPECIAL_U_SCRIPTS) \
                 $1X \
                 $(PK_MMAP_SPECIAL_U_NAME)X \
                 $(PK_MMAP_SPECIAL_U_VERSION)X \
                 $(PK_MMAP_SPECIAL_U_SITE)X \
                 $(PK_MMAP_SPECIAL_U_GITHUB)X \
                 $(PK_MMAP_SPECIAL_U_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_MMAP_SPECIAL_U_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_MMAP_SPECIAL_U_SUBNAME)X \
                 $(CONFIG_PK_MMAP_SPECIAL_U_CONFIG)X \
                 $(CONFIG_PK_MMAP_SPECIAL_U_LIBPATH)X \
                 $(CONFIG_PK_MMAP_SPECIAL_U_CPPFLAGS)X \
                 $(CONFIG_PK_MMAP_SPECIAL_U_DPKCONFIG)X \
                 $(CONFIG_PK_MMAP_SPECIAL_U_CFLAGS)X \
                 $(CONFIG_PK_MMAP_SPECIAL_U_LDFLAGS)X \
                 $(CONFIG_PK_MMAP_SPECIAL_U_CXXFLAGS)X \
                 $(CONFIG_PK_MMAP_SPECIAL_U_ASFLAGS)X \
                 $(PK_MMAP_SPECIAL_U_BSBIT)X \
                 $(PK_MMAP_SPECIAL_U_BUILDARCH)X \
		 $(PK_MMAP_SPECIAL_U_CSRCFILE)X \
                 $(CONFIG_PK_MMAP_SPECIAL_U_SRCFILE)X \
                 $(CONFIG_PK_MMAP_SPECIAL_U_CSRCFILE)

$(PK_MMAP_SPECIAL_U_DIR)/build: FORCE
	$(Q)$(call PK_MMAP_SPECIAL_U_sh,$(srctree))
