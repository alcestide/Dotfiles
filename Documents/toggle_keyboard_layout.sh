#!/usr/bin/zsh

layout=$(setxkbmap -query | grep layout | awk '{print $2}')

if [ "$layout" = "us" ]; then
  setxkbmap it
elif [ "$layout" = "it" ]; then
  setxkbmap ru
else
  setxkbmap us
fi
