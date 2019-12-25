#!/bin/bash

D=$(cat $HOME/.cache/msmu/D)

artist=$(echo '{ "command": ["get_property", "filtered-metadata"] }' | socat - $D/mpvsocket | jq ".data.Artist" | sed 's/\"//g')
album=$(echo '{ "command": ["get_property", "filtered-metadata"] }' | socat - $D/mpvsocket | jq ".data.Album" | sed 's/\"//g')
year=$(echo '{ "command": ["get_property", "filtered-metadata"] }' | socat - $D/mpvsocket | jq ".data.Date" | sed 's/\"//g')
song=$(echo '{ "command": ["get_property", "filtered-metadata"] }' | socat - $D/mpvsocket | jq ".data.Title" | sed 's/\"//g')

echo $artist - $album \($year\) - $song
