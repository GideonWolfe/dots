#!/usr/bin/env bash
# Print a progress bar for the song currently playing in cmus

# Progress bar length
# Default length is 50, but overridden by $1
length=${1:-"50"}

# Parse cmus status message, extracting seconds played and total seconds
cmusstatus=$(cmus-remote -Q)
duration=$(echo "$cmusstatus" | grep duration | cut -d' ' -f2)
position=$(echo "$cmusstatus" | grep position | cut -d' ' -f2)

# Exit if both variables are empty, i.e. if cmus isn't running
[[ -z "$duration" ]] && [[ -z "$position" ]] && exit 1

# Calculate how many progress bar characters have passed
past=$(printf "%d * %d / %d\n" $length $position $duration | bc -l | cut -d'.' -f1)

# Set past to 0 if empty because bc writes '.25' instead of '0.25', so
# if the percentage is between 0 and 1, we end up with an empty string
# when applying the above 'floor function'
[[ -z "$past" ]] && past=0

exec progress $past $length
