#!/bin/bash

function send_notification {
    brightness=`lux -G | grep -o [0-9]*`
    # Make the bar with the special character ─ (it's not dash -)
    # https://en.wikipedia.org/wiki/Box-drawing_character
    bar=$(seq -s "─" $(($brightness/ 4)) | sed 's/[0-9]//g')
    # Send the notification
    dunstify  -r 2593 -u normal "  $brightness $bar" 
 }

case $1 in
    up)
	# Set the volume on (if it was muted)
	# Up the volume (+ 5%)
	lux -a 6%> /dev/null
	send_notification
	;;
    down)
	lux -s 6%> /dev/null
	send_notification
	;;
esac
