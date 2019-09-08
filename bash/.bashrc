#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# If running from tty1 start sway
if [ $(tty) = "/dev/tty1" ]; then
	sway
	exit 0
fi

# Set a fancy prompt
PS1='\n\[\e[32m\]\u@\h: \[\e[33m\]\w\[\e[0m\]\n\$ '
#PS1='[\u@\h \W]\$ '

# Better UX
source /usr/share/doc/pkgfile/command-not-found.bash
shopt -s autocd
shopt -s checkwinsize

# Environment variables
export GOPATH=~/Development/go
export npm_config_prefix=~/.node_modules
export PATH="$PATH:$GOPATH/bin:$HOME/.node_modules/bin"
export VISUAL=vim

# Alias definitions
alias ls='ls --color=auto'
alias grep='grep --color=auto'

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi
