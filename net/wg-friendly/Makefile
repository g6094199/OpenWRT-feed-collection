include $(TOPDIR)/rules.mk

# Name und Version
PKG_NAME:=wg-friendly
PKG_VERSION:=1.0.0
PKG_RELEASE:=1
PKG_MAINTAINER:=Dein Name <deine@email.de>
PKG_LICENSE:=GPL-2.0-or-later

include $(INCLUDE_DIR)/package.mk

# Definition des Pakets für menuconfig und apk
define Package/wg-friendly
  SECTION:=net
  CATEGORY:=Network
  TITLE:=WireGuard Friendly Names (ucode)
  URL:=https://github.com
  DEPENDS:=+ucode +ucode-mod-uci +ucode-mod-fs +wireguard-tools
endef

# apk info
define Package/wg-friendly/description
  This script add the wiregurad friendly user names from the network config
  to a wg output imitation
endef

# script only, no compile needed
define Build/Compile
	true
endef

# where the script will be located
define Package/wg-friendly/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) ./files/wg-friendly.uc $(1)/usr/bin/wg-friendly
endef

$(eval $(call BuildPackage,wg-friendly))
