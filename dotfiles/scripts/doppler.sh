#!/bin/sh
mpv --stream-buffer-size=2m --loop-file=inf --wid=$(xdotool getactivewindow) "https://radar.weather.gov/lite/N0R/ATX_loop.gif"
