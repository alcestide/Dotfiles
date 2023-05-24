#!/bin/bash
wallpapers=(/mnt/hdd3/Media/Wallpapers/*)
wal -i ${wallpapers[$(( $RANDOM % ${#wallpapers[@]}))]}
### For QTile Only
qtile cmd-obj -o cmd -f reload_config
