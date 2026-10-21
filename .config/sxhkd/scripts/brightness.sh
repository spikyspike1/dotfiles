#!/bin/bash

brightnessctl set "$1"
brightness=$(brightnessctl -m | awk -F, '{gsub(/%/, "", $4); print $4}')
dunstify -a "System" -r 9993 -t 2000 -h int:value:"$brightness" \
    "Current screen brightness:" "${brightness}%"
