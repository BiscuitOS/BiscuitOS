################################################
#
# LC-trie
#
################################################
PK_BITMAP_LC_TRIE_NAME        := LC-trie
PK_BITMAP_LC_TRIE_VERSION     := $(CONFIG_PK_BITMAP_LC_TRIE_VERSION)
PK_BITMAP_LC_TRIE_SITE        := $(CONFIG_PK_BITMAP_LC_TRIE_URL)
PK_BITMAP_LC_TRIE_GITHUB      := $(CONFIG_PK_BITMAP_LC_TRIE_GITHUB)
PK_BITMAP_LC_TRIE_SUBNAME     :=
PK_BITMAP_LC_TRIE_BUILDARCH   := $(CONFIG_PK_BITMAP_LC_TRIE_BUILDARCH)
PK_BITMAP_LC_TRIE_DIR         := $(srctree)/package/bitmap/LC-trie
PK_BITMAP_LC_TRIE_PATCH       := $(PK_BITMAP_LC_TRIE_DIR)/patch
PK_BITMAP_LC_TRIE_BSBIT       := LC-trie-$(PK_BITMAP_LC_TRIE_VERSION).bsbit
PK_BITMAP_LC_TRIE_OUT         :=
PK_BITMAP_LC_TRIE_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_BITMAP_LC_TRIE_TAR         := $(CONFIG_PK_BITMAP_LC_TRIE_TAR)
PK_BITMAP_LC_TRIE_PACKAGE     :=
PK_BITMAP_LC_TRIE_CONFIG      := $(CONFIG_PK_BITMAP_LC_TRIE_CONFIG)
SUB_TARGET                  += $(PK_BITMAP_LC_TRIE_DIR)/build

PK_BITMAP_LC_TRIE_sh = $(CONFIG_SHELL) $(PK_BITMAP_LC_TRIE_SCRIPTS) \
                 $1X \
                 $(PK_BITMAP_LC_TRIE_NAME)X \
                 $(PK_BITMAP_LC_TRIE_VERSION)X \
                 $(PK_BITMAP_LC_TRIE_SITE)X \
                 $(PK_BITMAP_LC_TRIE_GITHUB)X \
                 $(PK_BITMAP_LC_TRIE_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_BITMAP_LC_TRIE_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_BITMAP_LC_TRIE_SUBNAME)X \
                 $(CONFIG_PK_BITMAP_LC_TRIE_CONFIG)X \
                 $(CONFIG_PK_BITMAP_LC_TRIE_LIBPATH)X \
                 $(CONFIG_PK_BITMAP_LC_TRIE_CPPFLAGS)X \
                 $(CONFIG_PK_BITMAP_LC_TRIE_DPKCONFIG)X \
                 $(CONFIG_PK_BITMAP_LC_TRIE_CFLAGS)X \
                 $(CONFIG_PK_BITMAP_LC_TRIE_LDFLAGS)X \
                 $(CONFIG_PK_BITMAP_LC_TRIE_CXXFLAGS)X \
                 $(CONFIG_PK_BITMAP_LC_TRIE_ASFLAGS)X \
                 $(PK_BITMAP_LC_TRIE_BSBIT)X \
                 $(PK_BITMAP_LC_TRIE_BUILDARCH)X \
		 $(PK_BITMAP_LC_TRIE_CSRCFILE)X \
                 $(CONFIG_PK_BITMAP_LC_TRIE_SRCFILE)X \
                 $(CONFIG_PK_BITMAP_LC_TRIE_CSRCFILE)

$(PK_BITMAP_LC_TRIE_DIR)/build: FORCE
	$(Q)$(call PK_BITMAP_LC_TRIE_sh,$(srctree))
