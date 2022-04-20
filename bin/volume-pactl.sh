#!/usr/bin/env bash

vol=$(pamixer --get-volume)
volume=$(pamixer --get-volume-human)
is_muted=$(pamixer --get-mute)

if [[ $is_muted = 'true' ]]; then
    icon='ﱝ'
elif [[ $vol -lt 30 ]]; then
    icon='奄'
elif [[ $vol -lt 70 ]]; then
    icon='奔'
else
    icon='墳'
fi

echo "$icon $volume"
