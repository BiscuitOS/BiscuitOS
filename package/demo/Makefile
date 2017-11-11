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

DEMO_CC      = $(CC)
DEMO_CFLAGS  = $(CFLAGS)

quiet_cmd_$(DEMO_CMD) = CC      $(DEMO_NAME)
      cmd_$(DEMO_CMD) = $(DEMO_CC) $(DEMO_CFLAGS) \
                        $(PACKAGE_DIR)/$(DEMO_NAME)/$(DEMO_SOURCE) \
                        -o $(STAGING_DIR)/binutils/$(DEMO_NAME)

$(PACKAGE_DIR)/$(DEMO_NAME): FORCE
	$(call if_changed,$(DEMO_CMD))

