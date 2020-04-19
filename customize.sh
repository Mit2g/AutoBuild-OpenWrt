#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. Modify default IP
sed -i 's/192.168.1.1/192.168.5.1/g' openwrt/package/base-files/files/bin/config_generate
#2. Add apps
https://github.com/destan19/OpenAppFilter
https://github.com/Lienol/openwrt/tree/dev-19.07/package/diy
https://github.com/fw876/helloworld
./scripts/feeds update -a
./scripts/feeds install -a
