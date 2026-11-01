#!/bin/bash

sleep_pid=0

layout=$(setxkbmap -query | grep layout | awk '{print $2}')

layout=$(setxkbmap -query | grep layout | awk '{print $2}')
    if [ "$layout" = "us" ]; then
        layout="pl"
    elif [ "$layout" = "pl" ]; then
        layout="us"
    fi
    if [ "$sleep_pid" -ne 0 ]; then
        kill $sleep_pid >/dev/null 2>&1
    fi
setxkbmap -layout $layout
