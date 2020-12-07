#!/bin/sh
COLOR=$($HOME/dotfiles/dotfiles/scripts/rgbtofloat.sh 4)
TIME=$(rofi -dmenu -p "Seconds to Record")
giph -c $COLOR -y -s -t $TIME --format webm | curl -F "file=@-" 0x0.st | xclip -selection clipboard
