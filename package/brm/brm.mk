################################################################################
#
# brm
#
################################################################################

BRM_VERSION = v0.1-alpha
BRM_SITE = package/brm/src
BRM_SITE_METHOD = local

define BRM_INSTALL_TARGET_CMDS
	cp $(@D)/preinit $(TARGET_DIR)/sbin
	mkdir -p $(TARGET_DIR)/sbin/brm
	install $(@D)/brm $(TARGET_DIR)/sbin/brm
endef

$(eval $(generic-package))
