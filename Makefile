include $(TOPDIR)/rules.mk

PKG_NAME:=mcast-allow-serval
PKG_VERSION:=1

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/mcast-allow-serval
  SECTION:=gluon
  CATEGORY:=Gluon
  TITLE:=Serval Mesh Multicast
  DEPENDS:=+gluon-core
endef

define Build/Prepare
        mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/mcast-allow-serval/install
        $(CP) ./files/* $(1)/
endef

$(eval $(call BuildPackage,mcast-allow-serval))

