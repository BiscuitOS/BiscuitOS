################################################
#
# cmake
#
################################################
PK_CMAKE_NAME        := cmake
PK_CMAKE_VERSION     := $(CONFIG_PK_CMAKE_VERSION)
PK_CMAKE_SITE        := $(CONFIG_PK_CMAKE_URL)
PK_CMAKE_GITHUB      := $(CONFIG_PK_CMAKE_GITHUB)
PK_CMAKE_SUBNAME     :=
PK_CMAKE_BUILDARCH   := $(CONFIG_PK_CMAKE_BUILDARCH)
PK_CMAKE_DIR         := $(srctree)/package/cmake
PK_CMAKE_PATCH       := $(PK_CMAKE_DIR)/patch
PK_CMAKE_BSBIT       := cmake-$(PK_CMAKE_VERSION).bsbit
PK_CMAKE_OUT         :=
PK_CMAKE_SCRIPTS     := $(srctree)/scripts/package/package-cmake.sh
PK_CMAKE_TAR         := $(CONFIG_PK_CMAKE_TAR)
PK_CMAKE_PACKAGE     :=
PK_CMAKE_CONFIG      := $(CONFIG_PK_CMAKE_CONFIG)
SUB_TARGET            += $(PK_CMAKE_DIR)/build

PK_CMAKE_sh = $(CONFIG_SHELL) $(PK_CMAKE_SCRIPTS) \
                 $1X \
                 $(PK_CMAKE_NAME)X \
                 $(PK_CMAKE_VERSION)X \
                 $(PK_CMAKE_SITE)X \
                 $(PK_CMAKE_GITHUB)X \
                 $(PK_CMAKE_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_CMAKE_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_CMAKE_SUBNAME)X \
                 $(CONFIG_PK_CMAKE_CONFIG)X \
                 $(CONFIG_PK_CMAKE_LIBPATH)X \
                 $(CONFIG_PK_CMAKE_CPPFLAGS)X \
                 $(CONFIG_PK_CMAKE_DPKCONFIG)X \
                 $(CONFIG_PK_CMAKE_CFLAGS)X \
                 $(CONFIG_PK_CMAKE_LDFLAGS)X \
                 $(CONFIG_PK_CMAKE_CXXFLAGS)X \
                 $(CONFIG_PK_CMAKE_ASFLAGS)X \
                 $(PK_CMAKE_BSBIT)X \
                 $(PK_CMAKE_BUILDARCH)X

$(PK_CMAKE_DIR)/build: FORCE
	$(Q)$(call PK_CMAKE_sh,$(srctree))
