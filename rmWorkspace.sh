#!/bin/bash

#Get current desktop
desktop=$(wmctrl -d | awk '{ if ($2 == "'*'") print $0}' | cut -d ' ' -f1)

#Get apps in current desktop and move them to desktop 0
wmctrl -l | awk -v desktop="$desktop" '{ if ($2 == desktop) {print $1}}' | xargs -I win wmctrl -ir win -t 0

#Get number of desktops
numDesktops=$(xprop -root | grep _NET_NUMBER_OF_DESKTOPS\( | awk '{print $3}')
[ "$numDesktops" == "" ] && numDesktops=1

#Get apps in all subsequent desktops and move them one back
for ((n=$desktop+1;n<$numDesktops;n++))
do
	echo $n
	#Get apps in current desktop and move them to previous desktop
	wmctrl -l | awk -v desktop="$n" '{ if ($2 == desktop) {print $1}}' | xargs -I win wmctrl -ir win -t $(($n-1))
done

#Get new number of desktops
((numDesktops=$numDesktops-1))

#Remove one desktop
wmctrl -n $numDesktops

#Go to desktop 0
wmctrl -s 0