#!/bin/bash

if ! updates=$(checkupdates 2> /dev/null | wc -l ); then
	updates=0
fi
echo "$updates updates available"
if [[ "$updates" -gt 30 && "$updates" -lt 50 ]]; then
	dunstify -a System -t 5000 "$updates updates available."
elif [[ "$updates" -eq 50 || "$updates" -gt 50 ]]; then
	dunstify -u critical -a System -t 10000 "$updates updates available! Please update."
fi
