#!/bin/bash

##
## Script that moves the active window to a new workspace, and moves to that workspace
##

# get id of the new last workspace = old number of workspaces
lastWorkspace=$(xprop -root | grep _NET_NUMBER_OF_DESKTOPS\( | awk '{print $3}')
[ "$lastWorkspace" == "" ] && lastWorkspace=1

# get new number of workspaces
((nWorkspaces=$lastWorkspace+1))

# get current workspace
workspace=$(xprop -root | grep _NET_CURRENT_DESKTOP\( | awk '{print $3}')
[ "$workspace" == "" ] && workspace=0

# get number of windows in current workspace
numWinsInDesk=$(wmctrl -l | awk -v workspace=$workspace '{ if ($2 == dektop) print $0}' | wc -l)

# maximise active window
wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz

if (($numWinsInDesk > 1 || $workspace == 0)); then

	# create a new workspace
	wmctrl -n $nWorkspaces

	sleep 0.1

	# move active window to the new workspace
	wmctrl -r :ACTIVE: -t $lastWorkspace

	sleep 0.01

fi

sleep 0.01

# go to window's workspace
wmctrl -s $lastWorkspace
