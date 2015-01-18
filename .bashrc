#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases

export EDITOR=vim

# virtualenvwrapper
export WORKON_HOME=~/.virtualenvs
export PROJECT_HOME=~/Projects
source /usr/bin/virtualenvwrapper.sh

# Netgen
export NETGENDIR=/opt/netgen/bin
export NGLIBDIR=/opt/netgen/lib
export PATH=$NETGENDIR:$PATH
export LD_LIBRARY_PATH=$NGLIBDIR:.:$LD_LIBRARY_PATH

# Cabal
export PATH=$HOME/.cabal/bin:$PATH

