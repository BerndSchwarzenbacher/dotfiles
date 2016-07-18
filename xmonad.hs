import XMonad
import XMonad.Util.EZConfig(additionalKeys)
import XMonad.Config.Desktop

baseConfig = desktopConfig

main = xmonad $ baseConfig
    { modMask = mod4Mask
    , terminal = "urxvt"
    }
    `additionalKeys`
    [ ((mod4Mask, xK_p), spawn "dmenu_recent_aliases")
    ]

