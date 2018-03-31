#!/bin/sh

# Place in /usr/bin
# Use xrandr to increase or decrease screen brightness:
# "./brightness.sh - eDP-1" --> Decrease brightness
# "./brightness.sh + eDP-1" --> Increase brightness
#
CURRBRIGHT=$(xrandr --current --verbose | grep -m 1 'Brightness:' | cut -f2- -d:)

if [ "$1" = "+" ] && [ $(echo "$CURRBRIGHT < 1" | bc) -eq 1 ]
then
xrandr --output $2 --brightness $(echo "$CURRBRIGHT + 0.1" | bc)
elif [ "$1" = "-" ] && [ $(echo "$CURRBRIGHT > 0" | bc) -eq 1 ]
then
xrandr --output $2 --brightness $(echo "$CURRBRIGHT - 0.1" | bc)
fi

# TODO: Set keyboard bindings
