#!/bin/bash

old="$(xrandr --verbose | grep -m 1 -i brightness | cut -f2 -d ' ')"

#new=$(($old+0.2))
new=$(echo "$old - 0.1" | bc)
if (( $(echo "$old > 0.2" | bc -l) )); then
        xrandr --output eDP1 --brightness $new
fi
