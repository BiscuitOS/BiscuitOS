################################################
#
# UIO_mem_module
#
################################################
PK_UIO_MEM_MOD_NAME        := UIO_mem_module
PK_UIO_MEM_MOD_VERSION     := $(CONFIG_PK_UIO_MEM_MOD_VERSION)
PK_UIO_MEM_MOD_SITE        := $(CONFIG_PK_UIO_MEM_MOD_URL)
PK_UIO_MEM_MOD_GITHUB      := $(CONFIG_PK_UIO_MEM_MOD_GITHUB)
PK_UIO_MEM_MOD_SUBNAME     :=
PK_UIO_MEM_MOD_BUILDARCH   := $(CONFIG_PK_UIO_MEM_MOD_BUILDARCH)
PK_UIO_MEM_MOD_DIR         := $(srctree)/package/UIO/UIO_mem_module
PK_UIO_MEM_MOD_PATCH       := $(PK_UIO_MEM_MOD_DIR)/patch
PK_UIO_MEM_MOD_BSBIT       := UIO_mem_module-$(PK_UIO_MEM_MOD_VERSION).bsbit
PK_UIO_MEM_MOD_OUT         :=
PK_UIO_MEM_MOD_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_UIO_MEM_MOD_TAR         := $(CONFIG_PK_UIO_MEM_MOD_TAR)
PK_UIO_MEM_MOD_PACKAGE     :=
PK_UIO_MEM_MOD_CONFIG      := $(CONFIG_PK_UIO_MEM_MOD_CONFIG)
SUB_TARGET                  += $(PK_UIO_MEM_MOD_DIR)/build

PK_UIO_MEM_MOD_sh = $(CONFIG_SHELL) $(PK_UIO_MEM_MOD_SCRIPTS) \
                 $1X \
                 $(PK_UIO_MEM_MOD_NAME)X \
                 $(PK_UIO_MEM_MOD_VERSION)X \
                 $(PK_UIO_MEM_MOD_SITE)X \
                 $(PK_UIO_MEM_MOD_GITHUB)X \
                 $(PK_UIO_MEM_MOD_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_UIO_MEM_MOD_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_UIO_MEM_MOD_SUBNAME)X \
                 $(CONFIG_PK_UIO_MEM_MOD_CONFIG)X \
                 $(CONFIG_PK_UIO_MEM_MOD_LIBPATH)X \
                 $(CONFIG_PK_UIO_MEM_MOD_CPPFLAGS)X \
                 $(CONFIG_PK_UIO_MEM_MOD_DPKCONFIG)X \
                 $(CONFIG_PK_UIO_MEM_MOD_CFLAGS)X \
                 $(CONFIG_PK_UIO_MEM_MOD_LDFLAGS)X \
                 $(CONFIG_PK_UIO_MEM_MOD_CXXFLAGS)X \
                 $(CONFIG_PK_UIO_MEM_MOD_ASFLAGS)X \
                 $(PK_UIO_MEM_MOD_BSBIT)X \
                 $(PK_UIO_MEM_MOD_BUILDARCH)X \
		 $(PK_UIO_MEM_MOD_CSRCFILE)X \
                 $(CONFIG_PK_UIO_MEM_MOD_SRCFILE)X \
                 $(CONFIG_PK_UIO_MEM_MOD_CSRCFILE)

$(PK_UIO_MEM_MOD_DIR)/build: FORCE
	$(Q)$(call PK_UIO_MEM_MOD_sh,$(srctree))
