# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="akshaysth"

HISTFILE=~/.histfile
HISTSIZE=99999
SAVEHIST=5000
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git archlinux battery colorize vagrant wakeonlan ssh-agent rsync python npm)

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

conf() {
	case $1 in
		xmonad)		vim ~/.xmonad/xmonad.hs ;;
		bspwm)		vim ~/.config/bspwm/bspwmrc ;;
		sxhkd)		vim ~/.config/sxhkd/sxhkdrc ;;
		conky)		vim ~/.xmonad/.conky_dzen ;;
		homepage)	olddir=$(pwd) && cd ~/scripts/homepage.py && vim homepage.py && ./homepage.py; cd $olddir ;;
		menu)		vim ~/scripts/menu ;;
		mpd)		vim ~/.mpdconf ;;
		mutt)		vim ~/.muttrc;;
		ncmpcpp)	vim ~/.ncmpcpp/config ;;
		pacman)		svim /etc/pacman.conf ;;
		ranger)		vim ~/.config/ranger/rc.conf ;;
		rifle)		vim ~/.config/ranger/rifle.conf ;;
		tmux)		vim ~/.tmux.conf ;;
		vim)		vim ~/.vimrc ;;
		xinit)		vim ~/.xinitrc ;;
		xresources)	vim ~/.Xresources && xrdb ~/.Xresources ;;
		zathura)	vim ~/.config/zathura/zathurarc ;;
		theme2)		vim ~/.themes/FlatStudioCustom/gtk-2.0/gtkrc ;;
		theme3)		vim ~/.themes/FlatStudioCustom/gtk-3.0/gtk.css ;;
		gtk2)		vim ~/.gtkrc-2.0 ;;
		gtk3)		vim ~/.config/gtk-3.0/settings.ini ;;
		tint2)		vim ~/.config/tint2/xmonad.tint2rc ;;
		zsh)		vim ~/.zshrc && source ~/.zshrc ;;
		hosts)		sudoedit /etc/hosts ;;
		vhosts)		sudoedit /etc/httpd/conf/extra/httpd-vhosts.conf ;;
		httpd)		sudoedit /etc/httpd/conf/httpd.conf ;;
        offlineimap) vim ~/.offlineimaprc;;
        gpg)        vim ~/.gnupg/gpg.conf;;
        task)       vim ~/.taskrc;;
        newsbeuter) vim ~/.newsbeuter/urls;;
        compton)    vim ~/.compton.conf;;
        dunst)      vim ~/.config/dunst/dunstrc;;
        *)			echo "Unknown application: $1" ;;
	esac
}



alias ls="ls -ahX --color=auto --group-directories-first"
alias ll="ls -lahX --color=auto --group-directories-first"
alias boxup="boxfs -f ~/.boxfs/conf"
alias pacs="pacaur -Ss"
alias paci="pacaur -S"
alias pacu="pacaur -Syyu"
alias clock="tty-clock -C1 -c -s"



pathdirs=(
    ~/scripts
)
for dir in $pathdirs; do
    if [ -d $dir ]; then
        path+=$dir
    fi
done

export LSCOLORS=exfxcxdxbxegedabagacad
export MPD_HOST=/home/akshaysth/.mpd/socket

export TERM=xterm-256color
