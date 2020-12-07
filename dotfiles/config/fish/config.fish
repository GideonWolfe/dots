# Source wal colors; still testing
# cat ~/.cache/wal/sequences

 # __  __       _         ____       _   _   _                 
# |  \/  | __ _(_)_ __   / ___|  ___| |_| |_(_)_ __   __ _ ___ 
# | |\/| |/ _` | | '_ \  \___ \ / _ \ __| __| | '_ \ / _` / __|
# | |  | | (_| | | | | |  ___) |  __/ |_| |_| | | | | (_| \__ \
# |_|  |_|\__,_|_|_| |_| |____/ \___|\__|\__|_|_| |_|\__, |___/

fish_vi_key_bindings

# Grab pywal colors
if status is-interactive
    cat ~/.cache/wal/sequences &
end


 # ____                            _   
# |  _ \ _ __ ___  _ __ ___  _ __ | |_ 
# | |_) | '__/ _ \| '_ ` _ \| '_ \| __|
# |  __/| | | (_) | | | | | | |_) | |_ 
# |_|   |_|  \___/|_| |_| |_| .__/ \__|
                          # |_|        
source $HOME/dotfiles/dotfiles/config/fish/functions/prompt.fish


# ______     _   _     
# | ___ \   | | | |    
# | |_/ /_ _| |_| |__  
# |  __/ _` | __| '_ \ 
# | | | (_| | |_| | | |
# \_|  \__,_|\__|_| |_|
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/bin/transmission:$PATH"



  # ___  _     _                    _       _   _                 
 # / _ \| |   | |                  (_)     | | (_)                
# / /_\ \ |__ | |__  _ __ _____   ___  __ _| |_ _  ___  _ __  ___ 
# |  _  | '_ \| '_ \| '__/ _ \ \ / / |/ _` | __| |/ _ \| '_ \/ __|
# | | | | |_) | |_) | | |  __/\ V /| | (_| | |_| | (_) | | | \__ \
# \_| |_/_.__/|_.__/|_|  \___| \_/ |_|\__,_|\__|_|\___/|_| |_|___/

abbr dotdrop 'dotdrop --cfg=/home/gideon/dotfiles/config.yaml'
abbr p 'python3'
abbr v 'nvim'
abbr ga 'git add' 
abbr gp 'git push' 
abbr dc 'docker-compose'




 # _____                                 
# |  ___|                                
# | |__ _ ____   __ __   ____ _ _ __ ___ 
# |  __| '_ \ \ / / \ \ / / _` | '__/ __|
# | |__| | | \ V /   \ V / (_| | |  \__ \
# \____/_| |_|\_/     \_/ \__,_|_|  |___/

set QT_AUTO_SCREEN_SCALE_FACTOR '0' # fix some QT scaling issues
set QT_QPA_PLATFORMTHEME 'qt5ct'
set QT_STYLE_OVERRIDE 'gtk2'
set GOPATH '/home/gideon/Programs/go' # to fix go putting main folder in ~
set EDITOR nvim
set PYTHONDONTWRITEBYTECODE 'yes' # Prevent creation of __pycache__ folders


# set COLOR0 (xrdb -query | grep "color0" | cut -f 2 | tail -1)
set COLOR1 (xrdb -query | grep "color1" | cut -f 2 | tail -1)
# set COLOR2 (xrdb -query | grep "color2" | cut -f 2 | tail -1)
# set COLOR3 (xrdb -query | grep "color3" | cut -f 2 | tail -1)
# set COLOR4 (xrdb -query | grep "color4" | cut -f 2 | tail -1)
# set COLOR5 (xrdb -query | grep "color5" | cut -f 2 | tail -1)
# set COLOR6 (xrdb -query | grep "color6" | cut -f 2 | tail -1)
# set COLOR7 (xrdb -query | grep "color7" | cut -f 2 | tail -1)
# set COLOR8 (xrdb -query | grep "color8" | cut -f 2 | tail -1)
# set COLOR9 (xrdb -query | grep "color9" | cut -f 2 | tail -1)
# set COLOR10 (xrdb -query | grep "color10" | cut -f 2 | tail -1)

 # _____                 _   _                 
# |  ___|   _ _ __   ___| |_(_) ___  _ __  ___ 
# | |_ | | | | '_ \ / __| __| |/ _ \| '_ \/ __|
# |  _|| |_| | | | | (__| |_| | (_) | | | \__ \
# |_|   \__,_|_| |_|\___|\__|_|\___/|_| |_|___/
source $HOME/dotfiles/dotfiles/config/fish/functions/functions.fish
source $HOME/.cache/wal/fzf.fish

#   ____             __ _
#  / ___|___  _ __  / _(_) __ _
# | |   / _ \| '_ \| |_| |/ _` |
# | |__| (_) | | | |  _| | (_| |
#  \____\___/|_| |_|_| |_|\__, |
#                         |___/
#  ____  _               _             _
# |  _ \(_)_ __ ___  ___| |_ ___  _ __(_) ___  ___
# | | | | | '__/ _ \/ __| __/ _ \| '__| |/ _ \/ __|
# | |_| | | | |  __/ (__| || (_) | |  | |  __/\__ \
# |____/|_|_|  \___|\___|\__\___/|_|  |_|\___||___/
#
set XDG_DATA_HOME "$HOME/.local/share"
set XDG_CACHE_HOME "$HOME/.cache"
set XDG_CONFIG_HOME "$HOME/.config"

# Other applications
set CARGO_HOME "$XDG_DATA_HOME/cargo" #rust
set GEM_PATH "$XDG_DATA_HOME/ruby/gems" #ruby
set GEM_HOME "$XDG_DATA_HOME/gem"
set GEM_SPEC_CACHE "$XDG_CACHE_HOME/gem"
