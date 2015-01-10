# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

# switch Esc with Caps_Lock under x.
xmodmap -e "clear lock"
xmodmap -e "keycode 9 = Caps_Lock"
xmodmap -e "keycode 66 = Escape"
xmodmap -e "add Lock = Caps_Lock"


