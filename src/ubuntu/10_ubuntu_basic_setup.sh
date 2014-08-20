#!/bin/bash
set -e
ln -sf /media/sf_git  $HOME/git >/dev/null 2>&1
mkdir -p $HOME/src/boxen >/dev/null 2>&1
ln -sf $HOME/git/boxen_of_holding/puppet-* $HOME/src/boxen/ >/dev/null 2>&1
gconftool -t int --set /apps/gnome-terminal/profiles/Default/scrollback_lines 100000
gsettings set org.gnome.desktop.screensaver lock-enabled false
gsettings set org.gnome.desktop.session idle-delay 1200
gsettings set org.gnome.desktop.screensaver ubuntu-lock-on-suspend false
