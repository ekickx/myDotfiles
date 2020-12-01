#!/bin/bash
if  ps -u rafif | grep quodlibet -q 
then
	quodlibet --play-pause

else
	quodlibet --run --hide-window --stop --play
fi