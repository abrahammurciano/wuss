# WUSS - Wmctrl Useful Shell Scripts
WUSS is a collection of scripts that make use of `wmctrl` to perform some useful actions such as move the active window to a new workspace, move to next or previous desktop, maximise or minimise windows, etc.

These scripts were designed to be assigned to touchpad gestures using [libinput-gestures](https://github.com/bulletmark/libinput-gestures). Feel free to use them for this purpose or any other purpose you deem fit.

## List of Scripts
#### Window Management

**desktop.sh** - This script will simply minimise all windows on the active workspace and show the desktop. (Similar to what Win+D does on Windows, or 5 finger pinch out on Mac OS)

**maximise.sh** - This script will simply maximise the active window.

**minimise.sh** - This script will simply minimise the active window.

**fullscreenOn.sh** - This script will make the active window fullscreen.

**fullscreenOff.sh** - This script will make the active window not fullscreen. If the window was previously maximised, it will return to being maximised; if it was minimised it will return to being minimised.

#### Workspace Management

**nextWorkspace.sh** - This script will move onto the next workspace after the active one. (Similar to swiping left with 4 fingers on Mac OS)

**prevWorkspace.sh** - This script will move onto the previous workspace before the active one. (Similar to swiping right with 4 fingers on Mac OS)

**toNewWorkspace.sh** - This script will create a new workspace (at the end of all other open workspaces), then move the active window to the new workspace and maximise it. Then it will move onto the new workspace. (Similar to clicking the green button on the top left corner of a Mac OS window)

**rmWorkspace.sh** - This script will remove the active workspace, moving all the windows which were on the active workspace to the first workspace. Then it will move onto the first workspace.
