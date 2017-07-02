#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# rust
PATH="$PATH":$HOME/.cargo/bin

source $HOME/.asdf/asdf.sh

exec fish
