#
# ~/.bashrc
#

# Netgen
#export NETGENDIR="/home/bernd/projects/ng/netgen/bin"
#export NGLIBDIR="/home/bernd/projects/ng/netgen/lib"
#NETGENPY="$NGLIBDIR/python3.5/site-packages"
#MERGEPY="/home/bernd/projects/ng/mri/merge"
#export PATH="$NETGENDIR:$PATH"
#export LD_LIBRARY_PATH="$NGLIBDIR:.:$LD_LIBRARY_PATH"
#export PYTHONPATH="$PYTHONPATH:.:$NETGENPY:$MERGEPY"

# Netgen-MPI
export NETGENDIR="/home/bernd/projects/ng/netgen-mpi/bin"
export NGLIBDIR="/home/bernd/projects/ng/netgen-mpi/lib"
NETGENPY="$NGLIBDIR/python3.5/site-packages"
MERGEPY="/home/bernd/projects/ng/mri/merge"
export PATH="$NETGENDIR:$PATH"
export LD_LIBRARY_PATH="$NGLIBDIR:.:$LD_LIBRARY_PATH"
export PYTHONPATH="$PYTHONPATH:.:$NETGENPY:$MERGEPY"

# ccache
export PATH="/usr/lib/ccache/bin/:$PATH"

# virtualenvwrapper
source virtualenvwrapper.sh
export WORKON_HOME=$HOME/.pyvenv
export PROJECT_HOME=$HOME/projects
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/bin/pyvenv
export VIRTUALENVWRAPPER_HOOK_DIR=$WORKON_HOME

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases
[[ -f /usr/share/git/completion/git-completion.bash ]] &&
  . /usr/share/git/completion/git-completion.bash

PS1='\[\e[1;32m\][\u@\h \W]\$\[\e[0m\] '

export EDITOR=vim
