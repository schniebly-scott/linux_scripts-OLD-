#!/bin/bash

old="$(xrandr --verbose | grep -m 1 -i brightness | cut -f2 -d ' ')"

#new=$(($old+0.2))
new=$(echo "$old + 0.1" | bc)

if (( $(echo "$old < 1.0" | bc -l) )); then
	xrandr --output eDP-1 --brightness $new
fi
