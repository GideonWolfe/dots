#!/bin/sh

rofi -dmenu | xargs urxvt -e termdown --exec-cmd "if [ '{0}' == '1' ]; then dunstify 'Timer Complete'; espeak 'timer done' ; fi"

