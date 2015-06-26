#
# ~/.bash_profile
#

eval $(keychain --eval --agents ssh -Q --quiet id_rsa)
dropbox-cli start
startx

[[ -f ~/.bashrc ]] && . ~/.bashrc


