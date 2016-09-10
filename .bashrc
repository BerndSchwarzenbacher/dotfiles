#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS
shopt -s checkwinsize

# Netgen
export NETGENDIR="/home/bernd/projects/ng/netgen/bin"
export NGLIBDIR="/home/bernd/projects/ng/netgen/lib"
NETGENPY="$NGLIBDIR/python3.5/site-packages"
MERGEPY="/home/bernd/projects/ng/mri/merge"
export PATH="$NETGENDIR:$PATH"
export LD_LIBRARY_PATH="$NGLIBDIR:.:$LD_LIBRARY_PATH"
export PYTHONPATH="$PYTHONPATH:.:$NETGENPY:$MERGEPY"

# Netgen-MPI
#export NETGENDIR="/home/bernd/projects/ng/netgen-mpi/bin"
#export NGLIBDIR="/home/bernd/projects/ng/netgen-mpi/lib"
#NETGENPY="$NGLIBDIR/python3.5/site-packages"
#MERGEPY="/home/bernd/projects/ng/mri/merge"
#export PATH="$NETGENDIR:$PATH"
#export LD_LIBRARY_PATH="$NGLIBDIR:.:$LD_LIBRARY_PATH"
#export PYTHONPATH="$PYTHONPATH:.:$NETGENPY:$MERGEPY"

# pythonpath
export PYTHONUSERBASE="/home/bernd/.local"
export PYTHONPATH="$PYTHONUSERBASE:$PYTHONPATH"

# stack
eval "$(stack --bash-completion-script stack)"
export PATH="$HOME/.local/bin:$PATH"

# docker
. ~/.dotfiles/.docker-completion.sh

# z
[[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh

[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases
[[ -f /usr/share/git/completion/git-completion.bash ]] &&
  . /usr/share/git/completion/git-completion.bash

PS1="\[\e[1;32m\][\u@\h \W]\$\[\e[0m\] "

export EDITOR="vim"
export PAGER="less"
source /usr/lib/python3.5/site-packages/pyvenvwrapper/pyvenvwrapper_settings
source /usr/lib/python3.5/site-packages/pyvenvwrapper/pyvenvwrapper
