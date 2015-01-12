#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# switch Esc with Caps_Lock under x.
xmodmap -e "clear lock"
xmodmap -e "keycode 9 = Caps_Lock"
xmodmap -e "keycode 66 = Escape"
xmodmap -e "add Lock = Caps_Lock"

PS1='[\u@\h \W]\$ '

[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases

# virtualenvwrapper
export WORKON_HOME=~/.virtualenvs
export PROJECT_HOME=~/Projects
source /usr/bin/virtualenvwrapper.sh

