#!/bin/bash

D=$(cat $HOME/.cache/msmu/D)

case $1 in
  "artists")
    find $D/f/ -mindepth 1 -maxdepth 1 -type d -exec basename {} \; ;;
  "albums")
    if [[ $# = 2 ]]; then
      F=$(find $D/f/ -maxdepth 1 -iname "*$2*" -type d | sort -R | head -n 1)
      find "$F" -type d -exec basename {} \;
    else
      find $D/f/ -mindepth 2 -maxdepth 2 -type d -exec basename {} \;
    fi ;;
  "songs")
    if [[ $# = 2 ]]; then
      F=$(find $D/f/ -maxdepth 1 -iname "*$2*" -type d | sort -R | head -n 1)
      find "$F" -type f -exec basename {} \;
    else
      find $D/f/ -mindepth 3 -maxdepth 3 -type f -exec basename {} \;
    fi ;;
esac
