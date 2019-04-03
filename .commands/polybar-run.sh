#!/bin/bash

pkill polybar


polybar --config=$HOME/.config/polybar/quintupule bar0 &
polybar --config=$HOME/.config/polybar/quintupule bar1 &
polybar --config=$HOME/.config/polybar/quintupule bar2 &
polybar --config=$HOME/.config/polybar/quintupule bar3 &
polybar --config=$HOME/.config/polybar/quintupule bar4 &
polybar --config=$HOME/.config/polybar/quintupule bar5 &
polybar --config=$HOME/.config/polybar/quintupule bar6 &
polybar --config=$HOME/.config/polybar/quintupule musicbar &
polybar --config=$HOME/.config/polybar/quintupule turnoff &

# polybar --config=$HOME/.config/polybar/retroGame bar0&

# polybar --config=$HOME/.config/polybar/grove top&

#polybar --config=$HOME/.config/polybar/curi miku&

