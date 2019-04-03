#!/bin/bash
eval $(xdotool getmouselocation --shell)


xdotool mousemove $(( $X+$1 )) $(( $Y+$2)) click $3 2>/dev/null

