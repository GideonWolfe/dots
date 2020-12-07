# |  ___|   _ _ __   ___| |_(_) ___  _ __  ___ 
# | |_ | | | | '_ \ / __| __| |/ _ \| '_ \/ __|
# |  _|| |_| | | | | (__| |_| | (_) | | | \__ \
# |_|   \__,_|_| |_|\___|\__|_|\___/|_| |_|___/

# takes a file and makes a copy called file.bak
function backup --argument filename
    cp $filename $filename.bak
end

# takes file.bak and makes it file, removing original if there
function restore --argument file
    mv $file (echo $file | sed s/.bak//)
end

 # vim for manpager
function vman
    man $argv | col -b | nvim --clean -c 'runtime! macros/less.vim' -c 'set ft=man ic' -
end

function clock
  peaclock --config-dir ~/.config/peaclock/ $argv
end

function z
  zathura $argv & disown
end

# Clean unzip: Creates a top level folder if a zip file doesn't have one
# This prevents the directory from being cluttered with unzipped files
function clean-unzip --argument zipfile
    if not test (echo $zipfile | string sub --start=-4) = .zip
        echo (status function): argument must be a zipfile
        return 1
    end

    if is-clean-zip $zipfile
        unzip $zipfile
    else
        set zipname (echo $zipfile | trim-right '.zip')
        mkdir $zipname || return 1
        unzip $zipfile -d $zipname
    end
end

# unzip-cd utilizes clean-unzip to unzip and cd into a zip file
function unzip-cd --argument zipfile
    clean-unzip $zipfile && cd (echo $zipfile | trim-right .zip)
end



# the equivilent of sudo !! in bash
function sdl -d "sudo the last command in history"
    eval command sudo $history[1]
end

# make tree use colors and put directories first
function tree
  command tree -C --dirsfirst $argv
end

# some grep enhancements
function cgrep
	grep --color=auto -i $argv
end
function lsgrep
	ls . | cgrep $argv
end

# better ls
function x
  command exa -la --color=always --group-directories-first $argv
end

# better journalctl
function jrnl
  command journalctl | lnav
end

# always ask when overwriting files with cp
function cp
  command cp -i $argv
end

# always ask when overwriting files with rm
function rm
  command rm -i $argv
end

# always make df human readable
function df
  command df -h
end

# always use base16 theme for bat
function bat
  command bat --theme base16 $argv
end
#
# always use base16 theme for bat
function c
  bat $argv
end

# put commit messages in quotes
function commit
  command git commit -m "$argv"
end


# Paste in french characters
function french
  command rofimoji --files $HOME/dotfiles/dotfiles/config/rofimoji/lists/french.csv
end

# Paste in french characters
function mathsymbols
  command rofimoji --files $HOME/dotfiles/dotfiles/config/rofimoji/lists/math.csv
end

 # _____      _                  _   
# | ____|_  _| |_ _ __ __ _  ___| |_ 
# |  _| \ \/ / __| '__/ _` |/ __| __|
# | |___ >  <| |_| | | (_| | (__| |_ 
# |_____/_/\_\\__|_|  \__,_|\___|\__|
# extract -r to remove archive after extraction
function extract -d "extract files from archives"
    # largely adapted from https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/extract/extract.plugin.zsh

    # no arguments, write usage
    if test (count $argv) -eq 0
        echo "Usage: extract [-option] [file ...]\n Options:\n -r, --remove    Remove archive after unpacking." >&2
        # exit 1 # this closes the terminal...
    end

    set remove_file 0
    if test $argv[1] = "-r"; or test $argv[1] = "--remove"
        set remove_file 1
        set --erase argv[1]
    end

    for i in $argv[1..-1]
        if test ! -f $i
            echo "extract: '$i' is not a valid file" >&2
            continue
        end

        set success 0
        set extension (string match -r ".*(\.[^\.]*)\$" $i)[2]
        switch $extension
            case '*.tar.gz' '*.tgz'
                tar xv; or tar zxvf "$i"
            case '*.tar.bz2' '*.tbz' '*.tbz2'
                tar xvjf "$i"
            case '*.tar.xz' '*.txz'
                tar --xz -xvf "$i"; or xzcat "$i" | tar xvf -
            case '*.tar.zma' '*.tlz'
                tar --lzma -xvf "$i"; or lzcat "$i" | tar xvf -
            case '*.tar'
                tar xvf "$i"
            case '*.gz'
                gunzip -k "$i"
            case '*.bz2'
                bunzip2 "$i"
            case '*.xz'
                unxz "$i"
            case '*.lzma'
                unlzma "$i"
            case '*.z'
                uncompress "$i"
            case '*.zip' '*.war' '*.jar' '*.sublime-package' '*.ipsw' '*.xpi' '*.apk' '*.aar' '*.whl'
                set extract_dir (string match -r "(.*)\.[^\.]*\$" $i)[2]
                unzip "$i" -d $extract_dir
            case '*.rar'
                unrar x -ad "$i"
            case '*.7z'
                7za x "$i"
            case '*'
                echo "extract: '$i' cannot be extracted" >&2
                set success 1
        end

        if test $success -eq 0; and test $remove_file -eq 1
            rm $i
        end
    end
end


