#!/bin/bash

source $HOME/.config/msmu/config

D=$(mktemp -d /tmp/msmu.XXX)
mkdir $D/f
httpdirfs -f --cache --sonic-username $USERNAME --sonic-password $PASSWORD $URL $D/f & > /dev/null
sleep 1.5
[ -d $HOME/.cache/msmu/ ] || mkdir $HOME/.cache/msmu/
echo $D > $HOME/.cache/msmu/D
