#!/bin/sh
COLOR=$($HOME/dotfiles/dotfiles/scripts/rgbtofloat.sh 4)
TIME=$(rofi -dmenu -p "Seconds to Record")
giph -c $COLOR -y -f 30 -s -l -t $TIME -d 3 ~/Photos/screenshots/$(date +%s).gif
