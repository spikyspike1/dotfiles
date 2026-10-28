#!/bin/bash

if ! updates=$(checkupdates 2> /dev/null | wc -l ); then
	updates=0
fi
echo "$updates updates available"
dunstify -a System -t 3000 "$updates updates available."
