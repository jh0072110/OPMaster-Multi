#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
rm -rf feeds/luci/applications/luci-app-argon-config
rm -rf feeds/luci/applications/luci-app-openclash
rm -rf feeds/luci/applications/luci-app-passwall
rm -rf feeds/luci/applications/luci-app-openlist
rm -rf feeds/luci/applications/luci-app-ddns-go
rm -rf feeds/luci/applications/luci-app-homeproxy
rm -rf feeds/luci/themes/luci-theme-argon
rm -rf feeds/packages/net/mosdns
rm -rf feeds/packages/net/openlist
rm -rf feeds/packages/net/chinadns-ng
rm -rf feeds/packages/net/ddns-go
rm -rf feeds/packages/net/xray-core
rm -rf feeds/packages/net/sing-box
rm -rf feeds/packages/net/geoview
rm -rf feeds/packages/net/tcping
rm -rf feeds/packages/lang/golang
sed -i 's/192.168.1.1/10.10.10.1/g' package/base-files/files/bin/config_generate
git clone https://github.com/sbwml/packages_lang_golang -b 25.x feeds/packages/lang/golang
git clone https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon
git clone https://github.com/jerrykuku/luci-app-argon-config package/argon-config
git clone -b main https://github.com/xiaorouji/openwrt-passwall package/psw
git clone https://github.com/xiaorouji/openwrt-passwall-packages package/pswcore
