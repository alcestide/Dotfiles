#!/bin/bash
wallpapers=(/home/alcestide/Documents/Wallpapers/*)
wal -i ${wallpapers[$(( $RANDOM % ${#wallpapers[@]}))]}
### For QTile Only
qtile cmd-obj -o cmd -f reload_config

[ -f "$HOME/.cache/wal/colors.sh" ] && . "$HOME/.cache/wal/colors.sh

pidof dunst && killall dunst

dunst -lf  "${color0:-#ffffff}" \
      -lb  "${color1:-#eeeeee}" \
      -lfr "${color2:-#dddddd}" \
      -nf  "${color3:-#cccccc}" \
      -nb  "${color4:-#bbbbbb}" \
      -nfr "${color5:-#aaaaaa}" \
      -cf  "${color6:-#999999}" \
      -cb  "${color7:-#888888}" \
      -cfr "${color8:-#777777}" > /dev/null 2>&1 &
