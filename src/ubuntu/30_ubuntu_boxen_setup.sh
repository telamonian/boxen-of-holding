#!/bin/bash
set -e
/usr/bin/sudo -E -p "need password for sudo:" /usr/bin/apt-get -y update
/usr/bin/sudo -E -p "need password for sudo:" /usr/bin/apt-get -y install git-core
/usr/bin/sudo -E -p "need password for sudo:" /bin/mkdir -p /opt/boxen
/usr/bin/sudo -E -p "need password for sudo:" /bin/chown "${USER}":${USER} /opt/boxen
git clone -b add-linux-support-dev https://github.com/telamonian/our-boxen.git /opt/boxen/repo
cd /opt/boxen/repo

set +e
script/bootstrap
#script/boxen --no-fde --debug
