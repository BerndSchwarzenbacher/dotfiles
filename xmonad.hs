-- default desktop configuration for Fedora

import System.Posix.Env (getEnv)
import Data.Maybe (maybe)

import XMonad
import XMonad.Config.Desktop
import XMonad.Config.Gnome

main = do
     xmonad $ defaultConfig
        {
        terminal = "gnome-terminal"
        -- terminal = "gnome-terminal -e 'tmux -2'"
        }
