import XMonad
import XMonad.Hooks.ManageDocks
import XMonad.Util.EZConfig(additionalKeys)
import XMonad.Config.Gnome

baseConfig = gnomeConfig

main = xmonad $ baseConfig
    { manageHook = composeAll
      [ (className =? "Toplevel") --> doFloat
      , (className =? "Vite")     --> doFloat
      ] <+> manageHook baseConfig
    , modMask = mod4Mask
    }
    `additionalKeys`
    [ ((mod4Mask, xK_p), spawn "dmenu_recent_aliases")
    ]
