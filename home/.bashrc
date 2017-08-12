#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# rust
PATH="$PATH":$HOME/.cargo/bin

# go
GOPATH=$HOME/go
PATH="$PATH":$GOPATH/bin

# node
PATH="$PATH":$HOME/.asdf/installs/nodejs/8.1.2/.npm/bin

source $HOME/.asdf/asdf.sh

case $- in
	*i*) exec fish;;
	  *) return;;
esac
