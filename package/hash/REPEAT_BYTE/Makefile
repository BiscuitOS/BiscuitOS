################################################
#
# REPEAT_BYTE
#
################################################
PK_REPEAT_BYTE_NAME        := REPEAT_BYTE
PK_REPEAT_BYTE_VERSION     := $(CONFIG_PK_REPEAT_BYTE_VERSION)
PK_REPEAT_BYTE_SITE        := $(CONFIG_PK_REPEAT_BYTE_URL)
PK_REPEAT_BYTE_GITHUB      := $(CONFIG_PK_REPEAT_BYTE_GITHUB)
PK_REPEAT_BYTE_SUBNAME     :=
PK_REPEAT_BYTE_BUILDARCH   := $(CONFIG_PK_REPEAT_BYTE_BUILDARCH)
PK_REPEAT_BYTE_DIR         := $(srctree)/package/hash/REPEAT_BYTE
PK_REPEAT_BYTE_PATCH       := $(PK_REPEAT_BYTE_DIR)/patch
PK_REPEAT_BYTE_BSBIT       := REPEAT_BYTE-$(PK_REPEAT_BYTE_VERSION).bsbit
PK_REPEAT_BYTE_OUT         :=
PK_REPEAT_BYTE_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_REPEAT_BYTE_TAR         := $(CONFIG_PK_REPEAT_BYTE_TAR)
PK_REPEAT_BYTE_PACKAGE     :=
PK_REPEAT_BYTE_CONFIG      := $(CONFIG_PK_REPEAT_BYTE_CONFIG)
SUB_TARGET                  += $(PK_REPEAT_BYTE_DIR)/build

PK_REPEAT_BYTE_sh = $(CONFIG_SHELL) $(PK_REPEAT_BYTE_SCRIPTS) \
                 $1X \
                 $(PK_REPEAT_BYTE_NAME)X \
                 $(PK_REPEAT_BYTE_VERSION)X \
                 $(PK_REPEAT_BYTE_SITE)X \
                 $(PK_REPEAT_BYTE_GITHUB)X \
                 $(PK_REPEAT_BYTE_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_REPEAT_BYTE_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_REPEAT_BYTE_SUBNAME)X \
                 $(CONFIG_PK_REPEAT_BYTE_CONFIG)X \
                 $(CONFIG_PK_REPEAT_BYTE_LIBPATH)X \
                 $(CONFIG_PK_REPEAT_BYTE_CPPFLAGS)X \
                 $(CONFIG_PK_REPEAT_BYTE_DPKCONFIG)X \
                 $(CONFIG_PK_REPEAT_BYTE_CFLAGS)X \
                 $(CONFIG_PK_REPEAT_BYTE_LDFLAGS)X \
                 $(CONFIG_PK_REPEAT_BYTE_CXXFLAGS)X \
                 $(CONFIG_PK_REPEAT_BYTE_ASFLAGS)X \
                 $(PK_REPEAT_BYTE_BSBIT)X \
                 $(PK_REPEAT_BYTE_BUILDARCH)X \
		 $(PK_REPEAT_BYTE_CSRCFILE)X \
                 $(CONFIG_PK_REPEAT_BYTE_SRCFILE)X \
                 $(CONFIG_PK_REPEAT_BYTE_CSRCFILE)

$(PK_REPEAT_BYTE_DIR)/build: FORCE
	$(Q)$(call PK_REPEAT_BYTE_sh,$(srctree))
