#!/bin/bash
status() {
    # Volume %
    echo "V:"$(amixer sget Master | grep -o "[0-9]*%\|\[on\]\|\[off\]")

    # Battery %
    echo "B:"$(acpi -b | grep -o '[0-9]*%')

    # Date & time
    date '+%Y %a %d %b %I:%M%p'
    
}

while :; do
    xsetroot -name "$(status | tr '\n' ' ')"
    sleep 1m
done
