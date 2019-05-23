#!/bin/bash

if [ "$1" == "-w" ]
then
  wal -e -t -i "$2"
  source ~/.commands/thegen/wallpaper # Set Wallpaper
fi

# Import wal colors scheme
FILE=~/.cache/wal/colors.sh
source $FILE

# Partial
term(){
  cd $ST
  dunstify -r 2594 "Compiling st" &
  make clean install
}
dmenu(){
  cd $DMENU
  dunstify -r 2594 "Compiling dmenu" &
  make clean install
}
tabbed(){
  cd $TABBED
  dunstify -r 2594 "Compiling tabbed" &
  make clean install
}
warnai(){
  warnai -w -g fantome -ob mek-oes -xf black-paha # Generate gtk, openbox, xfce theme with "warnai"
}
source ~/.commands/thegen/notify #import notify script
source ~/.commands/thegen/tint2rc #import tint2 panel script

notify&
bash ~/.cache/wal/telegram/wal-telegram # generate telegram theme
term
dmenu
tabbed
warnai
