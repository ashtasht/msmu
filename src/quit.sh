#!/bin/bash

D=$(cat $HOME/.cache/msmu/D)
P=$(cat $HOME/.cache/msmu/P)

kill $P
umount /tmp/msmu.*/f
ls $D/f/
sleep 2
rm -rf $HOME/.cache/msmu/*
rm -rf $D
rm -rf $P
