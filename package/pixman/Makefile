################################################
#
# pixman
#
################################################
PK_PIXMAN_NAME        := pixman
PK_PIXMAN_VERSION     := $(CONFIG_PK_PIXMAN_VERSION)
PK_PIXMAN_SITE        := $(CONFIG_PK_PIXMAN_URL)
PK_PIXMAN_GITHUB      := $(CONFIG_PK_PIXMAN_GITHUB)
PK_PIXMAN_SUBNAME     :=
PK_PIXMAN_BUILDARCH   := $(CONFIG_PK_PIXMAN_BUILDARCH)
PK_PIXMAN_DIR         := $(srctree)/package/pixman
PK_PIXMAN_PATCH       := $(PK_PIXMAN_DIR)/patch
PK_PIXMAN_BSBIT       := pixman-$(PK_PIXMAN_VERSION).bsbit
PK_PIXMAN_OUT         :=
PK_PIXMAN_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_PIXMAN_TAR         := $(CONFIG_PK_PIXMAN_TAR)
PK_PIXMAN_PACKAGE     :=
PK_PIXMAN_CONFIG      := $(CONFIG_PK_PIXMAN_CONFIG)
SUB_TARGET            += $(PK_PIXMAN_DIR)/build

PK_PIXMAN_sh = $(CONFIG_SHELL) $(PK_PIXMAN_SCRIPTS) \
                 $1X \
                 $(PK_PIXMAN_NAME)X \
                 $(PK_PIXMAN_VERSION)X \
                 $(PK_PIXMAN_SITE)X \
                 $(PK_PIXMAN_GITHUB)X \
                 $(PK_PIXMAN_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_PIXMAN_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_PIXMAN_SUBNAME)X \
                 $(CONFIG_PK_PIXMAN_CONFIG)X \
                 $(CONFIG_PK_PIXMAN_LIBPATH)X \
                 $(CONFIG_PK_PIXMAN_CPPFLAGS)X \
                 $(CONFIG_PK_PIXMAN_DPKCONFIG)X \
                 $(CONFIG_PK_PIXMAN_CFLAGS)X \
                 $(CONFIG_PK_PIXMAN_LDFLAGS)X \
                 $(CONFIG_PK_PIXMAN_CXXFLAGS)X \
                 $(CONFIG_PK_PIXMAN_ASFLAGS)X \
                 $(PK_PIXMAN_BSBIT)X \
                 $(PK_PIXMAN_BUILDARCH)X

$(PK_PIXMAN_DIR)/build: FORCE
	$(Q)$(call PK_PIXMAN_sh,$(srctree))
