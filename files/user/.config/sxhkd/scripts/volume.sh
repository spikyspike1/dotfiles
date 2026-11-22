#!/bin/bash

pactl set-sink-volume 0 "$1"
volume=$(pamixer --get-volume)
if [ $volume -gt 100 ]; then
	pactl set-sink-volume 0 100%
fi
volume=$(pamixer --get-volume)
dunstify -a "System" -r 9993 -t 900 -h int:value:"$volume" \
    "Current volume:" "${volume}%"
