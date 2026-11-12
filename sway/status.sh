#!/usr/bin/env bash

printf '{"version":1,"click_events":false}\n[\n'

while :; do
    root=$(df -hP / | awk 'NR==2 {print $4}')
    home=$(df -hP /home | awk 'NR==2 {print $4}')
    audio=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ 2>/dev/null)

    if [[ $audio == *MUTED* ]]; then
        volume="muted"
    elif [[ $audio =~ Volume:\ ([0-9.]+) ]]; then
        volume=$(awk -v v="${BASH_REMATCH[1]}" 'BEGIN {printf "%d%%", v * 100}')
    else
        volume="unavailable"
    fi

    printf '[{"full_text":"Root %s :: Home %s :: Vol: %s :: %s"},],\n' \
        "$root" "$home" "$volume" "$(date +'%d-%m-%Y %H:%M:%S')"
    sleep 1
done

