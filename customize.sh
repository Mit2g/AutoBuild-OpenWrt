#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. Modify default IP
sed -i 's/192.168.1.1/192.168.49.1/g' openwrt/package/base-files/files/bin/config_generate

#2. Add apps
# 复杂的AdGuardHome的openwrt的luci界面
# git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/mine/luci-app-adguardhome

#OpenAppFilter
git clone https://github.com/destan19/OpenAppFilter.git package/mine/Appfilter

# passwall
mkdir package/mine/passwall && cd package/mine/passwall
git init && git remote add -f origin https://github.com/Mit2g/lienol-openwrt-package.git
git config core.sparsecheckout true
echo "lienol" >> .git/info/sparse-checkout #设置仅拉取app这个文件夹
git pull origin master
#https://github.com/Lienol/openwrt/tree/dev-19.07/package/diy

# HelloWorld
git clone https://github.com/fw876/helloworld.git package/mine/helloworld

# OpenClash
git clone https://github.com/vernesong/OpenClash.git package/mine/OpenClash

./scripts/feeds update -a
./scripts/feeds install -a
