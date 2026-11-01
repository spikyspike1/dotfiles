#!/bin/bash

BATTERY="/sys/class/power_supply/BAT0"
PREVIOUS=-1
while true; do
    LEVEL=$(cat "$BATTERY/capacity")
    if [ "$LEVEL" -ne "$PREVIOUS" ]; then
        if [ "$LEVEL" -le 10 ]; then
        	dunstify -a System -u critical "Battery is at $LEVEL%! Plug in the charger."
	fi
        PREVIOUS=$LEVEL
    fi
    sleep 15
done
