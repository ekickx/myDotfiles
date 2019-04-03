#!/bin/bash
CRITICAL_PERCENTAGE=15
LOW_PERCENTAGE=25

while true
do
 BATTINFO=`acpi -b`
	if [[ `echo $BATTINFO | grep Discharging` && `echo $BATTINFO | cut -c 25-26 ` -lt $LOW_PERCENTAGE ]]
	then
		notify-send "Warning" "Your PC is running on Low Power"
	fi
if [[ `echo $BATTINFO | grep Discharging` && `echo $BATTINFO | cut -c 25-26 ` -lt $CRITICAL_PERCENTAGE ]]
  then
    systemctl suspend
fi
  if [[ `echo $BATTINFO | grep Full` ]]
  then
    notify-send "Your Power is Full"
  fi
sleep 270
done
