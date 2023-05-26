#!/bin/bash
/usr/lib/polkit-kde-authentication-agent-1 &
~/.screenlayout/monitors.sh
~/Documents/random_wal.sh
nm-applet &
blueman-applet &
picom &
redshift-gtk &
emacs --daemon &
#bitwarden-desktop &
flameshot &
dunst -config ~/.config/dunst/dunstrc &
