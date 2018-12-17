#!/bin/bash

##
## Script that maximises the active window
##

# maximise active window
wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz
