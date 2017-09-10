#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

source $HOME/.asdf/asdf.sh
# rust
PATH="$PATH":$HOME/.cargo/bin

# go
GOPATH=$HOME/go
PATH="$PATH":$GOPATH/bin

# node
PATH="$PATH":`yarn global bin`

case $- in
	*i*) exec fish;;
	  *) return;;
esac
