#!/bin/bash

zscroll --prefix " " -l 20 \
        --delay 0.2 \
        --scroll-padding " / " \
        --match-command "`dirname $0`/mpdstatus.sh --status" \
        --update-check true "`dirname $0`/mpdstatus.sh" &

wait
