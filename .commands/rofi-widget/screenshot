#!/bin/bash

dmenu(){
  choice=$(echo -e " Save\n Copy\n Cancel" | rofi \
    -dmenu -width 30 -lines 4 -p "Do")
  case "$choice" in
    " Save") mv "${NAME}" "${DIR}/"; notify-send " Screnshot Taken" ;;
    " Copy")  xclip -selection clipboard -t image/png -i "$NAME"; notify-send " Screnshot Coppied" ;;
    " Cancel") notify-send " Screnshot not Taken" ;;
  esac
}

# Init Var
DIR="${HOME}/Pictures/Screenshots"
DATE="$(date +%Y-%m-%d-%H-%M-%S)"
NAME="/tmp/${DATE}_screenshot.png"

# Check if the dir to store the screenshots exists, else create it:
if [ ! -d "${DIR}" ]; then mkdir -p "${DIR}"; fi

# Screenshot the entire screen
if [ "$1" = "scr" ]; then maim "${NAME}"; fi

# Screenshot the selected area/window
if [ "$1" = "area" ]; then maim -s "${NAME}"; fi

if [[ $# = 0 ]]; then
    # Display a warning if no area defined
    echo "No screenshot area has been specified. Screenshot not taken."
fi
dmenu&
source ~/.commands/rofi-widget/find-rofi # Find rofi id
transset -i $win_id 1
