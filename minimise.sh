#!/bin/bash

##
## Script that minimises the active window
##

# minimise active window
wmctrl -r :ACTIVE: -b remove,maximized_vert,maximized_horz
