#!/bin/bash

# config="$HOME/.config/dunst/dunst-dark"
# config="$HOME/.config/dunst/dunst-dark2"
config="$HOME/.config/dunst/dunst-wal"
pkill dunst

dunst -config $config&

