######################################
#
# base-file configure
#
######################################
BASE_FILE_NAME        := base-file
BASE_FILE_VERSION     := 0.1.1
BASE_FILE_SITE        :=
BASE_FILE_DIR         := $(srctree)/package/$(BASE_FILE_NAME)
BASE_FILE_SCRIPTS     := $(srctree)/scripts/package/base-file.sh
SUB_TARGET            += $(BASE_FILE_DIR)/build

run_base_file_sh = $(CONFIG_SHELL) $(BASE_FILE_SCRIPTS) \
                   $(srctree) $(BASE_FILE_VERSION) \
                   $(BASE_FILE_SITE) $1

$(BASE_FILE_DIR)/build:
	$(Q)$(call run_base_file_sh,make)
