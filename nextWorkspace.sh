#!/bin/bash

##
## Script that moves to the next workspace after the active one
##

# get current workspace
workspace=$(wmctrl -d | awk '{ if ($2 == "'*'") print $0}' | cut -d ' ' -f1)

# increment workspace
((workspace++))

# move to next workspace
wmctrl -s $workspace
