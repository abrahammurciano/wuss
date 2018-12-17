#!/bin/bash

##
## Script that adds the fullscreen status to the active window
##

# make active window fullscreen
wmctrl -r :ACTIVE: -b add,fullscreen
