#!/bin/bash
wget 'https://assets.meson.network:10443/static/terminal/v2.5.1/meson-linux-amd64.tar.gz'
tar -zxf meson-linux-amd64.tar.gz
cd ./meson-linux-amd64
echo "#token register and login in https://meson.network
token = $MESON_TOKEN

# server port DO NOT run in 80 or 443
# open this port on your firewall
# default 19091
port = $MESON_PORT

# space limit (Maximum allowable space for Terminal in GB. Less than the total disk. At least 40 GB)
spacelimit = $MESON_SPACELIMIT
" > $HOME/meson-linux-amd64/config.txt
$HOME/meson-linux-amd64/meson service-install
$HOME/meson-linux-amd64/meson