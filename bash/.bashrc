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

# Set a (not yet) fancy prompt
PS1='[\u@\h \W]\$ '

# Environment variables
export VISUAL=vim
export GOPATH=~/Development/go

# Alias definitions
alias ls='ls --color=auto'
alias grep='grep --color=auto'

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi
