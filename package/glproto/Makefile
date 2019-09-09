################################################
#
# glproto
#
################################################
PK_GLPROTO_NAME        := glproto
PK_GLPROTO_VERSION     := $(CONFIG_PK_GLPROTO_VERSION)
PK_GLPROTO_SITE        := $(CONFIG_PK_GLPROTO_URL)
PK_GLPROTO_GITHUB      := $(CONFIG_PK_GLPROTO_GITHUB)
PK_GLPROTO_SUBNAME     :=
PK_GLPROTO_BUILDARCH   := $(CONFIG_PK_GLPROTO_BUILDARCH)
PK_GLPROTO_DIR         := $(srctree)/package/glproto
PK_GLPROTO_PATCH       := $(PK_GLPROTO_DIR)/patch
PK_GLPROTO_BSBIT       := glproto-$(PK_GLPROTO_VERSION).bsbit
PK_GLPROTO_OUT         :=
PK_GLPROTO_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_GLPROTO_TAR         := $(CONFIG_PK_GLPROTO_TAR)
PK_GLPROTO_PACKAGE     :=
PK_GLPROTO_CONFIG      := $(CONFIG_PK_GLPROTO_CONFIG)
SUB_TARGET             += $(PK_GLPROTO_DIR)/build

PK_GLPROTO_sh = $(CONFIG_SHELL) $(PK_GLPROTO_SCRIPTS) \
                 $1X \
                 $(PK_GLPROTO_NAME)X \
                 $(PK_GLPROTO_VERSION)X \
                 $(PK_GLPROTO_SITE)X \
                 $(PK_GLPROTO_GITHUB)X \
                 $(PK_GLPROTO_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_GLPROTO_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_GLPROTO_SUBNAME)X \
                 $(CONFIG_PK_GLPROTO_CONFIG)X \
                 $(CONFIG_PK_GLPROTO_LIBPATH)X \
                 $(CONFIG_PK_GLPROTO_CPPFLAGS)X \
                 $(CONFIG_PK_GLPROTO_DPKCONFIG)X \
                 $(CONFIG_PK_GLPROTO_CFLAGS)X \
                 $(CONFIG_PK_GLPROTO_LDFLAGS)X \
                 $(CONFIG_PK_GLPROTO_CXXFLAGS)X \
                 $(CONFIG_PK_GLPROTO_ASFLAGS)X \
                 $(PK_GLPROTO_BSBIT)X \
                 $(PK_GLPROTO_BUILDARCH)X

$(PK_GLPROTO_DIR)/build: FORCE
	$(Q)$(call PK_GLPROTO_sh,$(srctree))
