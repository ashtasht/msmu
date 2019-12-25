#!/bin/bash

D=$(cat $HOME/.cache/msmu/D)

echo '{ "command": ["cycle", "pause"] }' | socat - $D/mpvsocket
