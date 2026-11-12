#!/bin/bash
STATE="$HOME/.cache/waybar-media-hidetitle"

if [ -f "$STATE" ]; then
    rm "$STATE"
else
    touch "$STATE"
fi

pkill -RTMIN+8 waybar
