#################################################
#
# demo
#
#############################################3###
DEMO_NAME    = demo
DEMO_VERSION = 0.1
DEMO_SOURCE  = demo-$(DEMO_VERSION).c
DEMO_SITE    = 
DEMO_CMD     = $(DEMO_NAME)_$(DEMO_VERSION)
SUB_TARGET   += $(PACKAGE_DIR)/$(DEMO_NAME)

INSTALL_DIR  = $(STAGING_DIR)/rootfs/bin/
demo_install_dir = $(Q)mkdir -p $(INSTALL_DIR)

DEMO_CC      = $(CC)
DEMO_CFLAGS  = $(CFLAGS) -m32

quiet_cmd_$(DEMO_CMD) = CC      $(DEMO_NAME)
      cmd_$(DEMO_CMD) = $(DEMO_CC) $(DEMO_CFLAGS) \
                        $(PACKAGE_DIR)/$(DEMO_NAME)/$(DEMO_SOURCE) \
                        -o $(INSTALL_DIR)/$(DEMO_NAME)

$(PACKAGE_DIR)/$(DEMO_NAME): FORCE
	$(call demo_install_dir)
	$(call if_changed,$(DEMO_CMD))

