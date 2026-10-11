#!/bin/bash

read -r _ total used _ < <(free -m | awk '/^Mem:/ {print $1, $2, $3, $4}')
if (( used <= 2500 )); then
	color="#009933"
elif (( used <= 5000 )); then
	color="#00ff00"
elif (( used <= 6250 )); then
	color="#ffff00"
elif (( used <= 8000 )); then
	color="#ff8800"
elif (( used <= 10000 )); then
	color="#ff0000"
else
	color="#cc00cc"
fi
printf '%%{F%s}%%{F-}\n' "$color"
