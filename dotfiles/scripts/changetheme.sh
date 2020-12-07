#!/bin/sh

WALLPAPERDIR=$HOME/Photos/wallpapers
THEMESDIR=/usr/lib/python3.8/site-packages/pywal/colorschemes/

METHOD=$(yad --list --radiolist --column "" --column "Choice" TRUE "Picture" FALSE "Colorscheme + Picture")

# If we want to choose a picture and colorscheme separately
if [ "$METHOD" == "TRUE|Colorscheme + Picture|" ]; then
  cd $WALLPAPERDIR
  FILENAME=$(yad --title="Select Wallpaper" --file --add-preview --large-preview)
  cd $THEMESDIR
  THEME=$(ls dark light | rofi -dmenu | cut -f1 -d".")
  alacritty -e chameleon.py -t $THEME
  feh --bg-scale $FILENAME
# If we want to base our colorscheme from pic
elif [ "$METHOD" == "TRUE|Picture|" ]; then
  cd $WALLPAPERDIR
  FILENAME=$(yad --title="Select Wallpaper" --file --add-preview --large-preview)
  alacritty -e chameleon.py -i $FILENAME
fi
