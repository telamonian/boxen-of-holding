#!/bin/bash
set -e
/usr/bin/sudo -E -p "need password for sudo:" /bin/mkdir -p /opt/boxen
/usr/bin/sudo -E -p "need password for sudo:" /bin/chown "${USER}":staff /opt/boxen
touch /opt/boxen/.metadata_never_index
git clone https://github.com/telamonian/boxen-linux.git /opt/boxen/repo
cd /opt/boxen/repo

set +e
script/boxen --no-fde --debug
