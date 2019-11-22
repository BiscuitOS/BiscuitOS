################################################
#
# UIO_mem_app
#
################################################
PK_UIO_MEM_APP_NAME        := UIO_mem_app
PK_UIO_MEM_APP_VERSION     := $(CONFIG_PK_UIO_MEM_APP_VERSION)
PK_UIO_MEM_APP_SITE        := $(CONFIG_PK_UIO_MEM_APP_URL)
PK_UIO_MEM_APP_GITHUB      := $(CONFIG_PK_UIO_MEM_APP_GITHUB)
PK_UIO_MEM_APP_SUBNAME     :=
PK_UIO_MEM_APP_BUILDARCH   := $(CONFIG_PK_UIO_MEM_APP_BUILDARCH)
PK_UIO_MEM_APP_DIR         := $(srctree)/package/UIO/UIO_mem_app
PK_UIO_MEM_APP_PATCH       := $(PK_UIO_MEM_APP_DIR)/patch
PK_UIO_MEM_APP_BSBIT       := UIO_mem_app-$(PK_UIO_MEM_APP_VERSION).bsbit
PK_UIO_MEM_APP_OUT         :=
PK_UIO_MEM_APP_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_UIO_MEM_APP_TAR         := $(CONFIG_PK_UIO_MEM_APP_TAR)
PK_UIO_MEM_APP_PACKAGE     :=
PK_UIO_MEM_APP_CONFIG      := $(CONFIG_PK_UIO_MEM_APP_CONFIG)
SUB_TARGET                  += $(PK_UIO_MEM_APP_DIR)/build

PK_UIO_MEM_APP_sh = $(CONFIG_SHELL) $(PK_UIO_MEM_APP_SCRIPTS) \
                 $1X \
                 $(PK_UIO_MEM_APP_NAME)X \
                 $(PK_UIO_MEM_APP_VERSION)X \
                 $(PK_UIO_MEM_APP_SITE)X \
                 $(PK_UIO_MEM_APP_GITHUB)X \
                 $(PK_UIO_MEM_APP_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_UIO_MEM_APP_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_UIO_MEM_APP_SUBNAME)X \
                 $(CONFIG_PK_UIO_MEM_APP_CONFIG)X \
                 $(CONFIG_PK_UIO_MEM_APP_LIBPATH)X \
                 $(CONFIG_PK_UIO_MEM_APP_CPPFLAGS)X \
                 $(CONFIG_PK_UIO_MEM_APP_DPKCONFIG)X \
                 $(CONFIG_PK_UIO_MEM_APP_CFLAGS)X \
                 $(CONFIG_PK_UIO_MEM_APP_LDFLAGS)X \
                 $(CONFIG_PK_UIO_MEM_APP_CXXFLAGS)X \
                 $(CONFIG_PK_UIO_MEM_APP_ASFLAGS)X \
                 $(PK_UIO_MEM_APP_BSBIT)X \
                 $(PK_UIO_MEM_APP_BUILDARCH)X \
		 $(PK_UIO_MEM_APP_CSRCFILE)X \
                 $(CONFIG_PK_UIO_MEM_APP_SRCFILE)X \
                 $(CONFIG_PK_UIO_MEM_APP_CSRCFILE)

$(PK_UIO_MEM_APP_DIR)/build: FORCE
	$(Q)$(call PK_UIO_MEM_APP_sh,$(srctree))
