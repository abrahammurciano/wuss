#!/bin/bash

##
## Script that removes the fullscreen status from the active window
##

# remove fullscreen from active window
wmctrl -r :ACTIVE: -b remove,fullscreen
