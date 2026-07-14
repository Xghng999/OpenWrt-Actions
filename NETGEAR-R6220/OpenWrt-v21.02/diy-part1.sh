#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
# sed -i 's/^#\(.*smpackage\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

# 即使你使用的是官方 OpenWrt 源码，也可以通过这种方式拉取 ImmortalWrt 的插件
# echo 'src-git homeproxy https://github.com/immortalwrt/homeproxy.git' >>feeds.conf.default

# 3. (可选) 添加其他常用的依赖源，确保编译不报错
# sed -i '$a src-git smpackage https://github.com/kenzok8/small-package' feeds.conf.default

# 注释掉默认的packages源
sed -i 's/^\(.*packages\)/#&/' feeds.conf.default

# 添加修改的packages源
# sed -i '$a src-git packages https://github.com/lxhao61/openwrt-packages.git;19.07' feeds.conf.default
sed -i '$a src-git packages https://github.com/immortalwrt/packages.git;openwrt-21.02' feeds.conf.default
