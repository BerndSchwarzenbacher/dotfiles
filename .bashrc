# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# solarized theme
eval `dircolors $HOME/.color/dircolors-solarized/dircolors.256dark`

# virtualenvwrapper (Python)
export WORKON_HOME=$HOME/Envs
export PROJECT_HOME=$HOME/Projects
source /usr/bin/virtualenvwrapper.sh

# For netgen
export NETGENDIR=/opt/netgen/bin
export PATH=$PATH:/opt/netgen/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:.:/opt/netgen/lib:/lib64/tcl8.5/Togl1.7

export PATH=$PATH:$HOME/.local/bin:$HOME/bin:$HOME/.cabal/bin

# Vi settings
set -o vi
if [ -e /usr/bin/vimx ];
  then alias vim='/usr/bin/vimx';
fi

# aliases
alias google-chrome="google-chrome -incognito"
alias lt="ls -lh"

