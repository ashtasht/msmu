#!/bin/bash

D=$(mktemp -d /tmp/msmu.XXX)
mkdir $D/f
httpdirfs -f --cache --sonic-username amitg --sonic-password $(cat $HOME/Private/airsonic_pass) http://10.100.102.14:8080 $D/f & > /dev/null
sleep 1.5
[ -d $HOME/.cache/msmu/ ] || mkdir $HOME/.cache/msmu/
echo $D > $HOME/.cache/msmu/D
