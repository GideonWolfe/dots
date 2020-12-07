#!/bin/sh

COLORSCRIPTSDIR=$HOME/Programs/color-scripts/color-scripts
CONFIGDIR=$HOME/dotfiles/dotfiles/config/


cat <<EOF | xmenu -i | sh &
 Applications
	 Firefox	firefox
	 Terminal	urxvt
	 Files	thunar
	
	 School
		 canvas-tui 		urxvt -e canvas-tui
		 Zotero 		zotero
		 CS
			145
				Notes		urxvt -e nvim $HOME/School/CS/145/notes.java
			241
				Notes		urxvt -e nvim $HOME/School/CS/241/notes
			247
				Notes		urxvt -e nvim $HOME/School/CS/247/notes
				Books
					Susheel's notes		zathura $HOME/School/CS/247/CSCI247_CourseNotes.pdf
					Intel manual		zathura $HOME/School/CS/247/intel.pdf
					C Programming Language		zathura $HOME/School/CS/247/the_c_programming_language_2.pdf
			301
				Notes		urxvt -e nvim $HOME/School/CS/301/notes
				Books
					Theory of Computation		zathura $HOME/School/CS/301/TheoryOfComputation.pdf
					Book of Proof		zathura $HOME/School/CS/301/Main.pdf
			305
				Notes		urxvt -e nvim $HOME/School/CS/305/notes.md
				Textbook		zathura $HOME/School/CS/305/textbook.pdf
			330
				Notes		urxvt -e nvim $HOME/School/CS/330/notes.md
			347
				Notes		urxvt -e nvim $HOME/School/CS/347/notes.md
				Textbook		zathura $HOME/School/CS/347/textbook.pdf
			367
				Notes		urxvt -e nvim $HOME/School/CS/367/notes.md
				Textbook		zathura $HOME/School/CS/367/textbook.pdf
			461
				Notes		urxvt -e nvim $HOME/School/CS/461/notes.md
				Textbook		zathura $HOME/School/CS/461/textbook.pdf
			474
				Notes		urxvt -e nvim $HOME/School/CS/474/notes.md
	 Comms
		Discord (GUI)		discord
		Discord (cordless)		urxvt -e cordless
		 Email (Neomutt)		urxvt -e neomutt
		 IRC (weechat)		urxvt -e weechat
		 SMS (kde-connect)		kdeconnect-sms --style gtk2
		 Slack 	slack
		 Signal (GUI)		signal-desktop
		 Telegram (GUI)		telegram-desktop
		 Telegram (nctelegram)		nctelegram
	 Finance
		 Crypto (TUI)		urxvt -e cointop
		 Stocks (TUI)		urxvt -e mop
		 Stonks (CLI)		urxvt -e mop
	 Utilities
		 Calculator (TUI)		urxvt -e qalq
		 Calculator (GUI)		qalculate-gtk
		 Calendar (khal)		urxvt -e khal interactive
		 Color Picker		gpick
		 Map (TUI)		urxvt -e mapscii
		 Timer		$HOME/dotfiles/dotfiles/scripts/timer.sh
		
		 System
			 Keyboard (Corsair)		ckb-next
			 Fonts 	yad --font
			 Symbols 	gucharmap
			 Smartphone (kdeconnect)		kdeconnect-app --style gtk2
			 Docker (lazydocker)		urxvt -e lazydocker
			 Kill Window	xkill
			 Screen Recording (OBS)		obs
			 Screenshot
				GUI	flameshot gui
				All Displays	flameshot screen -d 5000 -n 3 -p $HOME/Photos/screenshots
				Middle Display	flameshot screen -d 5000 -n 0 -p $HOME/Photos/screenshots
				Right Display	flameshot screen -d 5000 -n 1 -p $HOME/Photos/screenshots
				Left Display	flameshot screen -d 5000 -n 2 -p $HOME/Photos/screenshots
				Record GIF (upload)	urxvt -e $HOME/dotfiles/dotfiles/scripts/gifselectupload.sh
				Record GIF (save)	urxvt -e $HOME/dotfiles/dotfiles/scripts/gifselectsave.sh
		 Personal
			 Nextcloud		nextcloud --style gtk2
			 Passwords (keepassxc)		keepassxc --style gtk2
			 Keys (Seahorse)		seahorse
		 Theming
			Change Theme 	alacritty -e $HOME/dotfiles/dotfiles/scripts/changetheme.sh
			lxappearance 	lxappearance
			GTK (oomox) 	oomox-gui
			Qt (qt5ct) 	qt5ct --style gtk2
			WPGTK 	wpg
		 Monitors
			System (ytop)		urxvt -e ytop
			System (bashtop)		urxvt -e bashtop
			System (glances)		urxvt -e glances
			
			Disk Usage (GUI)		baobab
			Disk Usage (TUI)		urxvt -e ncdu
			IO (iotop)		urxvt -e iotop
			
			Kernel (kmon)		urxvt -e kmon
			Nvidia GPU (nvtop)		urxvt -e nvtop
			Power (powertop)		urxvt -e powertop
			
			DNS (dnstop)		urxvt -e powertop
			Network Usage (jnettop)		urxvt -e jnettop
			Network Load (nload)		urxvt -e nload
			Bandwidth (bmon)		urxvt -e bmon
			Media Server		urxvt -e jellyfinips.sh
		 Media
			 EasyTag		easytag
			 Image Editor		gimp
			 Video Editor		kdenlive
	 Entertainment
		 Media
			 Podcasts (castero)	castero
			 RSS (newsboat)	newsboat
			 Reddit (tuir)	tuir
			 Music (cmus)	cmus
			 Spotify (GUI)	spotify
			 Spotify (spotifytui)	spt
			Soulseek (Nicotine+)	nicotine
			Visualizers
				cava	urxvt -e cava
				glava bars	glava -m bars
				glava circle	glava -m circle
				glava graph	glava -m graph
				glava radial	glava -m radial
				glava wave	glava -m wave
		 Games
			 Steam	steam
			Itch	itch
			Lutris	lutris
			Tetris	tetris
			Solitaire	ttysolitaire
			Battleship	bs
			Minecraft	minecraft-launcher
			Dopewars	dopewars
		 Misc
			Color Scripts
				alpha	urxvt -e sh -c '$COLORSCRIPTSDIR/alpha; read'
				arch	urxvt -e sh -c '$COLORSCRIPTSDIR/arch; read'
				bars	urxvt -e sh -c '$COLORSCRIPTSDIR/bars; read'
				blocks2	urxvt -e sh -c '$COLORSCRIPTSDIR/blocks2; read'
				bloks	urxvt -e sh -c '$COLORSCRIPTSDIR/bloks; read'
				colorbars	urxvt -e sh -c '$COLORSCRIPTSDIR/colorbars; read'
				colortest	urxvt -e sh -c '$COLORSCRIPTSDIR/colortest; read'
				colortest-slim	urxvt -e sh -c '$COLORSCRIPTSDIR/colortest-slim; colortest'
				colorview	urxvt -e sh -c '$COLORSCRIPTSDIR/colorview; read'
				crunch	urxvt -e sh -c '$COLORSCRIPTSDIR/crunch; read'
				crunchbang	urxvt -e sh -c '$COLORSCRIPTSDIR/crunchbang; read'
				crunchbang-mini	urxvt -e sh -c '$COLORSCRIPTSDIR/crunchbang-mini; read'
				darthvader	urxvt -e sh -c '$COLORSCRIPTSDIR/darthvader; read'
				dna	urxvt -e sh -c '$COLORSCRIPTSDIR/dna; read'
				dotx	urxvt -e sh -c '$COLORSCRIPTSDIR/dna; read'
				elfman	urxvt -e sh -c '$COLORSCRIPTSDIR/elfman; read'
				faces	urxvt -e sh -c '$COLORSCRIPTSDIR/faces; read'
				fade	urxvt -e sh -c '$COLORSCRIPTSDIR/fade; read'
				ghosts	urxvt -e sh -c '$COLORSCRIPTSDIR/ghosts; read'
				guns	urxvt -e sh -c '$COLORSCRIPTSDIR/guns; read'
				hex	urxvt -e sh -c '$COLORSCRIPTSDIR/hex; read'
				hex-block	urxvt -e sh -c '$COLORSCRIPTSDIR/hex-block; read'
				illumina	urxvt -e sh -c '$COLORSCRIPTSDIR/illumina; read'
				jangofett	urxvt -e sh -c '$COLORSCRIPTSDIR/jangofett; read'
				monster	urxvt -e sh -c '$COLORSCRIPTSDIR/monster; read'
				mouseface	urxvt -e sh -c '$COLORSCRIPTSDIR/mouseface; read'
				pacman	urxvt -e sh -c '$COLORSCRIPTSDIR/pacman; read'
				panes	urxvt -e sh -c '$COLORSCRIPTSDIR/panes; read'
				pinguco	urxvt -e sh -c '$COLORSCRIPTSDIR/pinguco; read'
				pipes1	urxvt -e sh -c '$COLORSCRIPTSDIR/pipes1; read'
				pipes2	urxvt -e sh -c '$COLORSCRIPTSDIR/pipes2; read'
				pipes2-slim	urxvt -e sh -c '$COLORSCRIPTSDIR/pipes2-slim; read'
				pukeskull	urxvt -e sh -c '$COLORSCRIPTSDIR/pukeskull; read'
				rails	urxvt -e sh -c '$COLORSCRIPTSDIR/rails; read'
				rally-x	urxvt -e sh -c '$COLORSCRIPTSDIR/rally-x; read'
				rupees	urxvt -e sh -c '$COLORSCRIPTSDIR/rupees; read'
				space-invaders	urxvt -e sh -c '$COLORSCRIPTSDIR/space-invaders; read'
				spectrum	urxvt -e sh -c '$COLORSCRIPTSDIR/spectrum; read'
				square	urxvt -e sh -c '$COLORSCRIPTSDIR/square; read'
				tanks	urxvt -e sh -c '$COLORSCRIPTSDIR/tanks; read'
				thebat	urxvt -e sh -c '$COLORSCRIPTSDIR/thebat; read'
				thebat2	urxvt -e sh -c '$COLORSCRIPTSDIR/thebat2; read'
				tiefighter1-no-invo	urxvt -e sh -c '$COLORSCRIPTSDIR/tiefighter1-no-invo; read'
				tiefighter2	urxvt -e sh -c '$COLORSCRIPTSDIR/tiefighter2; read'
				zwaves	urxvt -e sh -c '$COLORSCRIPTSDIR/zwaves; read'
			pipes.sh	urxvt -e pipes.sh
			rain.sh	urxvt -e rain.sh
			unimatrix	urxvt -e unimatrix -l Gg
			asciiquarium	urxvt -e asciiquarium
			bonsai.sh	urxvt -e bonsai -l -i -T
			eDEX-UI		sh -c (cd $HOME/Programs/edex-ui/ ; npm start)
	 Science
		 Astronomy
			Celestia	celestia
		 Biology
			Pymol		fish -c pymol
		 Chemistry
			ptable	urxvt -e ptable
			chemtool	chemtool
		 Math
			Desmos	desmos
			Geogebra	geogebra
		Anki		anki
	 Development
		 IDEs
			Neovim	urxvt -e nvim
			VS Code	code
			Dr. Racket	drracket
		 Github (TUI)	urxvt -e github
		bitwise	bitwise
		Github Activity (TUI)	urxvt -e sh -c 'ghcal --no-ansi ; read'
		QDbusViewer	qdbusviewer --style gtk2	

 Configs
	 System
		 i3	urxvt -e nvim $CONFIGDIR/i3/config
		 Start Menu	urxvt -e nvim $HOME/dotfiles/dotfiles/scripts/xmenu.sh
		 Notifications	urxvt -e nvim $CONFIGDIR/wal/templates/dunstrc
		 Smartphone	kdeconnect-settings --style gtk2
		 Sound	pavucontrol
		 Shell
			fish
				config.fish	urxvt -e nvim $CONFIGDIR/fish/config.fish
				Web Config	fish -c fish_config
			bash	urxvt -e nvim $HOME/.bashrc
		 polybar
			config	urxvt -e nvim $CONFIGDIR/polybar/config
			launch.sh	urxvt -e nvim $CONFIGDIR/polybar/scripts/launch.sh
		 rofi
			config	urxvt -e nvim $CONFIGDIR/rofi/config
			template	urxvt -e nvim $CONFIGDIR/wal/templates/custom-rofi.rasi
		 Utilities
			 khard	urxvt -e nvim $CONFIGDIR/khard/khard.conf
			 khal	urxvt -e nvim $CONFIGDIR/khal/config
			 vdirsyncer	urxvt -e nvim $CONFIGDIR/vdirsyncer/config
		 .Xresources	urxvt -e nvim $HOME/.Xresources
	 User
		 Firefox
			index.html	urxvt -e nvim $CONFIGDIR/firefox/index.html
			style.css	urxvt -e nvim $CONFIGDIR/firefox/style.css
		ranger	urxvt -e nvim $CONFIGDIR/ranger/rc.conf
		newsboat	urxvt -e nvim $CONFIGDIR/newsboat/config
		neomutt
			neomuttrc	urxvt -e nvim $CONFIGDIR/neomutt/neomuttrc
			colors	urxvt -e nvim $CONFIGDIR/neomutt/colors
			settings	urxvt -e nvim $CONFIGDIR/neomutt/settings
			mappings	urxvt -e nvim $CONFIGDIR/neomutt/mappings
			mailcap	urxvt -e nvim $CONFIGDIR/neomutt/mailcap
		neovim
			coc-settings	urxvt -e nvim $HOME/.config/nvim/coc-settings.json
			functions	urxvt -e nvim $HOME/.config/nvim/configs/functions.vim
			main	urxvt -e nvim $HOME/.config/nvim/configs/main.vim
			mappings	urxvt -e nvim $HOME/.config/nvim/configs/mappings.vim
			plugin-settings	urxvt -e nvim $HOME/.config/nvim/configs/plugin-settings.vim
			plugins	urxvt -e nvim $HOME/.config/nvim/configs/plugin.vim
		neofetch	urxvt -e nvim $CONFIGDIR/neofetch/config.conf
		htop	urxvt -e nvim $CONFIGDIR/htop/htoprc
		s-tui	urxvt -e nvim $CONFIGDIR/s-tui/s-tui.conf
		spicetify	urxvt -e nvim $CONFIGDIR/spicetify/config.ini
		stonks	urxvt -e nvim $CONFIGDIR/stonks.yml
		
 System
	 Refresh i3		i3-msg restart
	 Refresh polybar		pkill -9 polybar ; $CONFIGDIR/polybar/scripts/launch.sh
	
	 Logout	i3-nagbar -t warning -m 'Do you really want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'
	 Shutdown		poweroff
	 Reboot			reboot
EOF
