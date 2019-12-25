#!/bin/bash

D=$(cat $HOME/.cache/msmu/D)
P=$(cat $HOME/.cache/msmu/P)

if [[ $# -eq 1 ]]; then
  F=$(find $D -iname "*$1*" -type f | sort -R | head -n 1)
  if pgrep -x "gedit" > /dev/null; then
    echo loadfile $F append-play | socat - $D/mpvsocket
    ${(basename $F)%.*} >> $HOME/.cache/msmu/Q
    cat $HOME/.cache/msmu/Q
  else
    echo asthasht
    ./play.sh $1
  fi
else
  echo "Please specify the song"
fi
