#!/bin/bash

/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
#~/.screenlayout/monitors.sh

# These two lines of code set random wallpapers
# from the defined directory. Change the `wallpapers` variable
# to the desired location.

wallpapers=(/mnt/hdd3/Media/Wallpapers/*)
#wal -i ${wallpapers[$(( $RANDOM % ${#wallpapers[@]}))]}

# Specific wallpaper

#wal -i "/mnt/hdd3/Media/Wallpapers/1680294372554987.jpg" &
wal -i "/home/alcestide/Documents/Wallpapers/1680294372554987.jpg" &

# Systray & Miscellaneous

volumeicon &
nm-applet &
blueman-applet &
picom &
redshift-gtk &
emacs --daemon &
#bitwarden-desktop &
flameshot &
python -m vorta --daemonize &
