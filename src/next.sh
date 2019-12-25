#!/bin/bash

D=$(cat $HOME/.cache/msmu/D)
P=$(cat $HOME/.cache/msmu/P)

echo playlist-next | socat - $D/mpvsocket
