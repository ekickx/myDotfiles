#!/bin/bash

  eval $(xdotool getwindowfocus getwindowgeometry --shell)
  xdotool getwindowfocus windowmove $(( $X+$1-0 )) $(( $Y-64+$2 ))\
    windowsize $(( $WIDTH+$3 )) $(( $HEIGHT+$4 ))
