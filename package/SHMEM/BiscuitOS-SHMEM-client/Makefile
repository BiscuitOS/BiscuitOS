################################################
#
# BiscuitOS-SHMEM-client
#
################################################
PK_SHMEM_CLIENT_NAME        := BiscuitOS-SHMEM-client
PK_SHMEM_CLIENT_VERSION     := $(CONFIG_PK_SHMEM_CLIENT_VERSION)
PK_SHMEM_CLIENT_SITE        := $(CONFIG_PK_SHMEM_CLIENT_URL)
PK_SHMEM_CLIENT_GITHUB      := $(CONFIG_PK_SHMEM_CLIENT_GITHUB)
PK_SHMEM_CLIENT_SUBNAME     :=
PK_SHMEM_CLIENT_BUILDARCH   := $(CONFIG_PK_SHMEM_CLIENT_BUILDARCH)
PK_SHMEM_CLIENT_DIR         := $(srctree)/package/SHMEM/BiscuitOS-SHMEM-client
PK_SHMEM_CLIENT_PATCH       := $(PK_SHMEM_CLIENT_DIR)/patch
PK_SHMEM_CLIENT_BSBIT       := BiscuitOS-SHMEM-client-$(PK_SHMEM_CLIENT_VERSION).bsbit
PK_SHMEM_CLIENT_OUT         :=
PK_SHMEM_CLIENT_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_SHMEM_CLIENT_TAR         := $(CONFIG_PK_SHMEM_CLIENT_TAR)
PK_SHMEM_CLIENT_PACKAGE     :=
PK_SHMEM_CLIENT_CONFIG      := $(CONFIG_PK_SHMEM_CLIENT_CONFIG)
SUB_TARGET                  += $(PK_SHMEM_CLIENT_DIR)/build

PK_SHMEM_CLIENT_sh = $(CONFIG_SHELL) $(PK_SHMEM_CLIENT_SCRIPTS) \
                 $1X \
                 $(PK_SHMEM_CLIENT_NAME)X \
                 $(PK_SHMEM_CLIENT_VERSION)X \
                 $(PK_SHMEM_CLIENT_SITE)X \
                 $(PK_SHMEM_CLIENT_GITHUB)X \
                 $(PK_SHMEM_CLIENT_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_SHMEM_CLIENT_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_SHMEM_CLIENT_SUBNAME)X \
                 $(CONFIG_PK_SHMEM_CLIENT_CONFIG)X \
                 $(CONFIG_PK_SHMEM_CLIENT_LIBPATH)X \
                 $(CONFIG_PK_SHMEM_CLIENT_CPPFLAGS)X \
                 $(CONFIG_PK_SHMEM_CLIENT_DPKCONFIG)X \
                 $(CONFIG_PK_SHMEM_CLIENT_CFLAGS)X \
                 $(CONFIG_PK_SHMEM_CLIENT_LDFLAGS)X \
                 $(CONFIG_PK_SHMEM_CLIENT_CXXFLAGS)X \
                 $(CONFIG_PK_SHMEM_CLIENT_ASFLAGS)X \
                 $(PK_SHMEM_CLIENT_BSBIT)X \
                 $(PK_SHMEM_CLIENT_BUILDARCH)X \
		 $(PK_SHMEM_CLIENT_CSRCFILE)X \
                 $(CONFIG_PK_SHMEM_CLIENT_SRCFILE)X \
                 $(CONFIG_PK_SHMEM_CLIENT_CSRCFILE)

$(PK_SHMEM_CLIENT_DIR)/build: FORCE
	$(Q)$(call PK_SHMEM_CLIENT_sh,$(srctree))
