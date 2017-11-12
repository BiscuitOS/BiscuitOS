#################################################
#
# OBJDUMP
#
#############################################3###
OBJDUMP_NAME    = objdump
OBJDUMP_VERSION = 0.1
OBJDUMP_SOURCE  = objdump-$(OBJDUMP_VERSION).c
OBJDUMP_SITE    = 
OBJDUMP_CMD     = $(OBJDUMP_NAME)_$(OBJDUMP_VERSION)
SUB_TARGET   += $(PACKAGE_DIR)/$(OBJDUMP_NAME)

INSTALL_DIR  = $(STAGING_DIR)/rootfs/bin/
objdump_install_dir = $(Q)mkdir -p $(INSTALL_DIR)

OBJDUMP_CC      = $(CC)
OBJDUMP_CFLAGS  = $(CFLAGS)

quiet_cmd_$(OBJDUMP_CMD) = CC      $(OBJDUMP_NAME)
      cmd_$(OBJDUMP_CMD) = $(OBJDUMP_CC) $(OBJDUMP_CFLAGS) \
                        $(PACKAGE_DIR)/$(OBJDUMP_NAME)/$(OBJDUMP_SOURCE) \
                        -o $(INSTALL_DIR)/$(OBJDUMP_NAME)

$(PACKAGE_DIR)/$(OBJDUMP_NAME): FORCE
	$(call objdump_install_dir)
	$(call if_changed,$(OBJDUMP_CMD))

