#!/bin/bash

##
## Script that moves to the previous workspace before the active one
##

# get current workspace
workspace=$(wmctrl -d | awk '{ if ($2 == "'*'") print $0}' | cut -d ' ' -f1)

# decrement workspace
((workspace--))

# move to previous workspace
wmctrl -s $workspace
