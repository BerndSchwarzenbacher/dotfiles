#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases
[[ -f /usr/share/git/completion/git-completion.bash ]] &&
  . /usr/share/git/completion/git-completion.bash

PS1='\e[1;32m[\u@\h \W]\$ \e[m'

export EDITOR=vim

# Netgen
export NETGENDIR=/home/bernd/projects/ng/netgen/bin
export NGLIBDIR=/home/bernd/projects/ng/netgen/lib
export PATH=$NETGENDIR:$PATH
export LD_LIBRARY_PATH=$NGLIBDIR:.:$LD_LIBRARY_PATH
export PYTHONPATH=$PYTHONPATH:/home/bernd/projects/ng/netgen/lib/python3.4/site-packages

# Cabal
export PATH=$HOME/.cabal/bin:./.cabal-sandbox/bin:$PATH/

# ccache
export PATH="/usr/lib/ccache/bin/:$PATH"

