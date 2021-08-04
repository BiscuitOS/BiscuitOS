################################################
#
# BiscuitOS-SHMEM-server
#
################################################
PK_SHMEM_SERVER_NAME        := BiscuitOS-SHMEM-server
PK_SHMEM_SERVER_VERSION     := $(CONFIG_PK_SHMEM_SERVER_VERSION)
PK_SHMEM_SERVER_SITE        := $(CONFIG_PK_SHMEM_SERVER_URL)
PK_SHMEM_SERVER_GITHUB      := $(CONFIG_PK_SHMEM_SERVER_GITHUB)
PK_SHMEM_SERVER_SUBNAME     :=
PK_SHMEM_SERVER_BUILDARCH   := $(CONFIG_PK_SHMEM_SERVER_BUILDARCH)
PK_SHMEM_SERVER_DIR         := $(srctree)/package/SHMEM/BiscuitOS-SHMEM-server
PK_SHMEM_SERVER_PATCH       := $(PK_SHMEM_SERVER_DIR)/patch
PK_SHMEM_SERVER_BSBIT       := BiscuitOS-SHMEM-server-$(PK_SHMEM_SERVER_VERSION).bsbit
PK_SHMEM_SERVER_OUT         :=
PK_SHMEM_SERVER_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_SHMEM_SERVER_TAR         := $(CONFIG_PK_SHMEM_SERVER_TAR)
PK_SHMEM_SERVER_PACKAGE     :=
PK_SHMEM_SERVER_CONFIG      := $(CONFIG_PK_SHMEM_SERVER_CONFIG)
SUB_TARGET                  += $(PK_SHMEM_SERVER_DIR)/build

PK_SHMEM_SERVER_sh = $(CONFIG_SHELL) $(PK_SHMEM_SERVER_SCRIPTS) \
                 $1X \
                 $(PK_SHMEM_SERVER_NAME)X \
                 $(PK_SHMEM_SERVER_VERSION)X \
                 $(PK_SHMEM_SERVER_SITE)X \
                 $(PK_SHMEM_SERVER_GITHUB)X \
                 $(PK_SHMEM_SERVER_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_SHMEM_SERVER_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_SHMEM_SERVER_SUBNAME)X \
                 $(CONFIG_PK_SHMEM_SERVER_CONFIG)X \
                 $(CONFIG_PK_SHMEM_SERVER_LIBPATH)X \
                 $(CONFIG_PK_SHMEM_SERVER_CPPFLAGS)X \
                 $(CONFIG_PK_SHMEM_SERVER_DPKCONFIG)X \
                 $(CONFIG_PK_SHMEM_SERVER_CFLAGS)X \
                 $(CONFIG_PK_SHMEM_SERVER_LDFLAGS)X \
                 $(CONFIG_PK_SHMEM_SERVER_CXXFLAGS)X \
                 $(CONFIG_PK_SHMEM_SERVER_ASFLAGS)X \
                 $(PK_SHMEM_SERVER_BSBIT)X \
                 $(PK_SHMEM_SERVER_BUILDARCH)X \
		 $(PK_SHMEM_SERVER_CSRCFILE)X \
                 $(CONFIG_PK_SHMEM_SERVER_SRCFILE)X \
                 $(CONFIG_PK_SHMEM_SERVER_CSRCFILE)

$(PK_SHMEM_SERVER_DIR)/build: FORCE
	$(Q)$(call PK_SHMEM_SERVER_sh,$(srctree))
