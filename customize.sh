#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. Modify default IP
sed -i 's/192.168.1.1/192.168.5.1/g' openwrt/package/base-files/files/bin/config_generate
#2. Switch default Language to Simple Chinese
option zh_cn '普通话 (Chinese)' openwrt/feeds/luci/modules/luci-base/root/etc/config/luci

