#!/bin/bash
STATE="$HOME/.cache/waybar-media-hidetitle"

artist=$(playerctl metadata artist 2>/dev/null)
title=$(playerctl metadata title 2>/dev/null)

[ -z "$artist" ] && [ -z "$title" ] && exit 0

if [ -f "$STATE" ]; then
    echo "$artist"
else
    echo "$artist - $title"
fi
