#!/usr/bin/sh

# while true; do
  # echo  
  # echo 
  # echo 
  # echo 
  # echo 
  # echo 
  # echo 
  # echo 
  # echo 
  # echo 
  # echo 
  # echo 
  # echo 
  # echo 
  # echo 
  # echo 
  # echo 
  # echo 
  # echo 
  # echo 

  # sleep 30 &
  # wait
# done

if (($(ps -aux | grep [p]icom | wc -l) > 0))
then
  polybar-msg hook blur-toggle 1
  pkill -9 picom
  notify-send -u low 'picom' "Blur Disabled"
else
  polybar-msg hook blur-toggle 2
  picom -b --config=/home/gideon/.config/picom/picom.conf --experimental-backends --backend glx --blur-method dual_kawase &
  notify-send -u low 'picom' "Blur Enabled"
fi
