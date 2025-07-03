
ITEM_TRACKER_VERSION = 1.1

ITEM_TRACKER_SITE_METHOD = local
ITEM_TRACKER_SITE = $(BR2_EXTERNAL_ITEMTRACKER_PATH)/package/item-tracker/src

define ITEM_TRACKER_INSTALL_TARGET_CMDS
#	$(INSTALL) -m 0755 $(@D)/item-tracker $(TARGET_DIR)/usr/sbin
	$(INSTALL) -m 0755 $(ITEM_TRACKER_PKGDIR)/S80item-tracker $(TARGET_DIR)/etc/init.d
endef

$(eval $(generic-package))
