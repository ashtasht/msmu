#!/bin/bash

D=$(cat $HOME/.cache/msmu/D)
P=$(cat $HOME/.cache/msmu/P)

if [[ $# -eq 1 ]]; then
  kill $P
  rm $D/mpvsocket
  F=$(find $D -iname "*$1*" -type f | sort -R | head -n 1)
  mpv --input-ipc-server=$D/mpvsocket --no-osc --geometry=200x200-50-50 --x11-name=msmu --force-window "$F" &
  echo $! > $HOME/.cache/msmu/P
  cat /dev/null > $HOME/.cache/msmu/Q
else
  echo "Please specify the song"
fi
