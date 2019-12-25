#!/bin/bash

D=$(cat $HOME/.cache/msmu/D)
P=$(cat $HOME/.cache/msmu/P)

if [[ $# -eq 1 ]]; then
  F=$(find $D -iname "*$1*" -type f | sort -R | head -n 1)
  basename "$F" -s >> $HOME/.cache/msmu/Q
  cat $HOME/.cache/msmu/Q
  sha1sum "$F" & > /dev/null # Make HTTPDirFS cache the file
  while [ -d "/proc/$P" ]; do
    sleep 1
  done
  echo ashtsahtasht
  echo $(head -n1 $HOME/.cache/msmu/Q)
  ./play.sh "$(head -n1 $HOME/.cache/msmu/Q)"
  echo "$(tail -n +2 $HOME/.cache/msmu/Q)" > $HOME/.cache/msmu/Q
else
  echo "Please specify the song"
fi
