#################################################
#
# GNU_BASH
#
#############################################3###
GNU_BASH_NAME    = bash
GNU_BASH_VERSION = 0.1
GNU_BASH_SOURCE  = bash-$(GNU_BASH_VERSION).c
GNU_BASH_SITE    = 
GNU_BASH_CMD     = $(GNU_BASH_NAME)_$(GNU_BASH_VERSION)
SUB_TARGET   += $(PACKAGE_DIR)/$(GNU_BASH_NAME)

INSTALL_DIR  = $(STAGING_DIR)/rootfs/bin/
GNU_BASH_install_dir = $(Q)mkdir -p $(INSTALL_DIR)

GNU_BASH_CC      = $(CC)
GNU_BASH_CFLAGS  = $(CFLAGS) -m32

quiet_cmd_$(GNU_BASH_CMD) = CC      $(GNU_BASH_NAME)
      cmd_$(GNU_BASH_CMD) = cp -rfa $(PACKAGE_DIR)/$(GNU_BASH_NAME)/bash \
                          $(INSTALL_DIR)/sh

$(PACKAGE_DIR)/$(GNU_BASH_NAME): FORCE
	$(call GNU_BASH_install_dir)
	$(call if_changed,$(GNU_BASH_CMD))

