##############################################################################
# Filename: .bashrc #
# Maintainer: Michael J. Smalley <michaeljsmalley@gmail.com> #
# URL: http://github.com/michaeljsmalley/dotfiles #
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
export PS1="\[\e[01;31m\]\u\[\e[0m\]\[\e[00;37m\]@@\[\e[0m\]\[\e[01;37m\]\h\[\e[0m\]\[\e[00;37m\][\w]>\[\e[0m\]"







##############################################################################
# 02. Aliases 																 #
##############################################################################

# Enable colours in "ls" command output
alias ls="ls -Glah"



##############################################################################
# 03. Theme/Colours															 #
##############################################################################

#CLI colours
export CLICOLOR=1

#Set 'ls' colours
expor LSCOLORS=Gxfxcxdxbxegedabagacad