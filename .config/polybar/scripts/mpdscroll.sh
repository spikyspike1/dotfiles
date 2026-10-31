#!/bin/bash

zscroll -l 20 \
        --delay 0.2 \
        --scroll-padding " / " \
        --match-command "`dirname $0`/mpdstatus.sh --status" \
        --match-text "Playing" "--scroll 1" \
        --match-text "Paused" "--scroll 1" \
        --update-check true "`dirname $0`/mpdstatus.sh" &

wait

