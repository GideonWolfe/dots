#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done


LAPTOP=archmbp
# host=$(hostname)
host=$(hostnamectl | grep 'hostname' | awk '{print $2}')
if [ $host != $LAPTOP ]
then
  polybar left &
  polybar center &
  polybar right &
        
else
  polybar main &
fi

# Launch Polybar, using default config location ~/.config/polybar/config
# polybar left &
# polybar center &
# polybar right &

echo "Polybar launched..."
