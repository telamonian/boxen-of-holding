#!/bin/bash

set -e
/usr/bin/sudo -E -p "need password for sudo:" launchctl unload -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist
set +e
