#!/bin/bash

eval $(xdotool getdisplaygeometry --shell)
WINW=802
WINH=458
panelSize=$(xfconf-query -c xfce4-panel -p /panels/panel-1 -lv | grep size | grep -o '[0-9]*' | tail -1)

PosX=$((WIDTH/2 - WINW/2))
PosY=$((HEIGHT/2 - panelSize - WINH/2))

xdotool getactivewindow windowmove "$PosX" "$PosY" windowsize "$WINW" "$WINH"
