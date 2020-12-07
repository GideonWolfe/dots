function fish_prompt --description 'Write out the prompt' 
	set -l last_status $status 
	if not set -q __fish_prompt_normal 
		set -g __fish_prompt_normal (set_color normal) 
	end 

	# PWD 
	set_color $fish_color_cwd 
	echo -n (prompt_pwd) 
	set_color normal 
	
	printf '%s ' (__fish_git_prompt) 
	if not test $last_status -eq 0 
		set_color red
  else
    set_color cyan
	end 


  # set_color cyan 
	echo -n 'λ ' 
	set_color normal 
end


#        _                       _      
# __   _(_)  _ __ ___   ___   __| | ___ 
# \ \ / / | | '_ ` _ \ / _ \ / _` |/ _ \
 # \ V /| | | | | | | | (_) | (_| |  __/
  # \_/ |_| |_| |_| |_|\___/ \__,_|\___|


function fish_mode_prompt --description 'Displays the current mode'
  # Do nothing if not in vi mode
  if test "$fish_key_bindings" = "fish_vi_key_bindings"
    bind -M insert jk "if commandline -P; commandline -f cancel; else; set fish_bind_mode default; commandline -f backward-char force-repaint; end"
    bind -M insert kj "if commandline -P; commandline -f cancel; else; set fish_bind_mode default; commandline -f backward-char force-repaint; end"
    switch $fish_bind_mode
      case default
        set_color --bold green
        echo 
        # echo  
        # echo 
        # ech 
        # echo 
      case insert
        set_color --bold cyan
        echo 
        # echo 
        # echo 
        # echo 
        # echo 
      case replace_one
        set_color --bold red
        echo 
        # echo 
      case visual
        set_color --bold magenta
        # echo 
        echo 
    end
    set_color normal
    printf " "
  end
end

