#!/bin/bash

LC_ALL=C
usage=$(awk '/^cpu / {
    idle = $5
    total = 0
    for (i = 2; i <= NF; i++) total += $i
    print total, idle
}' /proc/stat)
read -r total idle <<< "$usage"
sleep 0.2
usage2=$(awk '/^cpu / {
    idle = $5
    total = 0
    for (i = 2; i <= NF; i++) total += $i
    print total, idle
}' /proc/stat)
read -r total2 idle2 <<< "$usage2"
dt=$((total2 - total))
di=$((idle2 - idle))
(( dt > 0 )) && cpu=$(( (dt - di) * 100 / dt )) || cpu=0
############################################################################
if (( cpu <= 15 )); then
	color="#009933"
elif (( cpu <= 30 )); then
	color="#00ff00"
elif (( cpu <= 53 )); then
	color="#ffff00"
elif (( cpu <= 80 )); then
	color="#ff8800"
elif (( cpu <= 94 )); then
	color="#ff0000"
else
	color="#ff00ff"
fi
printf '%%{F%s}%%{F-}\n' "$color"
