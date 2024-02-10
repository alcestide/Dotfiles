#!/bin/bash
/usr/lib/notification-daemon-1.0/notification-daemon &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
#~/.screenlayout/monitors.sh

# These two lines of code set random wallpapers
# from the defined directory. Change the `wallpapers` variable
# to the desired location.

wallpapers=(/home/alcestide/Documents/Wallpapers/*)
wal -i ${wallpapers[$(( $RANDOM % ${#wallpapers[@]}))]}

# Specific wallpaper

#wal -i "/mnt/hdd3/Media/Wallpapers/1680294372554987.jpg" &
#wal -i "/home/alcestide/Documents/Wallpapers/1680294372554987.jpg" &

# Systray & Miscellaneous

dunst &
volumeicon &
#nicotine -s &
# steam -silent &
nm-applet &
blueman-applet &
picom &
#emacs --daemon &
redshift-gtk -l 41.902782:12.496366 &
flameshot &
ferdium &

#sh /home/alcestide/Documents/Scripts/random_wal.sh
