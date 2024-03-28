#!/bin/bash
#/usr/lib/notification-daemon-1.0/notification-daemon &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
#~/.screenlayout/monitors.sh

# LogitechG213 Keyboard LEDs
#g213-led -a ffffff

# These lines of code set random wallpapers
# from the defined directory. Change the `wallpapers` variable
# to the desired location.

wallpapers=(/home/alcestide/Documents/Wallpapers/*)
wal -i ${wallpapers[$(( $RANDOM % ${#wallpapers[@]}))]}
#wal -i /home/alcestide/Documents/Wallpapers/deer.jpg
#feh --bg-scale /home/alcestide/Documents/Wallpapers/pureblack.png &

dunst &
volumeicon &
nm-applet &
blueman-applet &
picom &
emacs --daemon &
redshift-gtk -l 41.902782:12.496366 &
flameshot &
ferdium &
