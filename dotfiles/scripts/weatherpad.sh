#!/usr/bin/sh

i3-msg 'exec "urxvt -name test1"'
xdotool search --sync --classname "test1"
i3-msg 'split h'
i3-msg 'exec "urxvt -name test2"'
xdotool search --sync --classname "test2"
i3-msg 'focus parent'
i3-msg 'move scratchpad'
