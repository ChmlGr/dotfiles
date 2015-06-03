##############################################################################
# Filename: .bashrc #
# Maintainer: Akshay Suthar <akshay.suthar@gmail.com> #
# URL: http://github.com/akshaysth/dotfiles #
# #
# #
# Sections: #
# 01. General ................. General Bash behavior #
# 02. Aliases ................. Aliases #
# 03. Theme/Colors ............ Colors, prompts, fonts, etc. #
##############################################################################

##############################################################################
# 01. General 																 #
##############################################################################

# Shell Prompt
export PS1="\[\e[00;31m\]\u\[\e[0m\]\[\e[00;37m\]@\[\e[0m\]\[\e[00;34m\]\h\[\e[0m\]:[\[\e[01;32m\]\w\[\e[0m\]] > "
source ~/dotfiles/shell_prompt.sh


export VAGRANT_CWD="$HOME/vagrant-setup"
if [ -f "${HOME}/.gpg-agent-info" ]; then
    . "${HOME}/.gpg-agent-info"
    export GPG_AGENT_INFO
    export SSH_AUTH_SOCK
fi


##############################################################################
# 02. Aliases 																 #
##############################################################################

# Enable colours in "ls" command output
alias ls="ls -GahX --color=auto --group-directories-first"
alias ll="ls -GlahX --color=auto --group-directories-first"
alias boxup="boxfs -f ~/.boxfs/conf"
alias pacs="pacaur -Ss"
alias paci="pacaur -S"
alias pacu="pacaur -Syyu"



##############################################################################
# 03. Theme/Colours															 #
##############################################################################

#CLI colours
export CLICOLOR=1
export MPD_HOST=/home/akshaysth/.mpd/socket
#Set 'ls' colours
eval $(dircolors -b $HOME/.dir_colors)

