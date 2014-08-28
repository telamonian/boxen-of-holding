#!/bin/bash
set -e
/usr/bin/sudo -E -p "need password for sudo:" /bin/mkdir -p /opt/boxen
/usr/bin/sudo -E -p "need password for sudo:" /usr/sbin/chown "${USER}":staff /opt/boxen
touch /opt/boxen/.metadata_never_index
git clone -b add-linux-support-dev  https://github.com/telamonian/our-boxen.git /opt/boxen/repo
cd /opt/boxen/repo

set +e
script/boxen --no-fde --debug
