#!/bin/sh
#~/polybar-collection/launch.sh
/usr/lib/polkit-kde-authentication-agent-1 &
nm-applet &
blueman-applet &
picom &
redshift-gtk
emacs --daemon &
flameshot &
bitwarden &
#~/.screenlayout/monitors.sh
feh --bg-fill --randomize /mnt/hdd3/Media/Wallpapers/*
dunst -config ~/.config/dunst/dunstrc &
