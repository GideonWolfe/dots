#!/bin/bash

# Takes in a color number, finds the color stored in (int, int, int) and converts it to (float, float, float)

COLORNUM=$1

# Find the color code corresponding to the desired color
INTCODE=$(cat $HOME/.cache/wal/wal_rgb_colors | grep color$COLORNUM | cut -d' ' -f2-) 

# Read these regular INT rgb values into an array
IFS=', ' read -r -a array <<< "$INTCODE"
INTONE="${array[0]}"
INTTWO="${array[1]}"
INTTHREE="${array[2]}"

# Calculate and format the RGB values into decimals
FLOATONE=$( echo "scale=2; $INTONE / 255" | bc -l | sed 's/^\./0./')
FLOATTWO=$( echo "scale=2; $INTTWO / 255" | bc -l | sed 's/^\./0./')
FLOATTHREE=$( echo "scale=2; $INTTHREE / 255" | bc -l | sed 's/^\./0./')
echo $FLOATONE,$FLOATTWO,$FLOATTHREE
