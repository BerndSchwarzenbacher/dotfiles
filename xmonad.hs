import XMonad
import XMonad.Util.EZConfig(additionalKeys)

main = xmonad $ defaultConfig
    { terminal = "urxvt"
    } `additionalKeys`
    [ ((mod1Mask, xK_p), spawn "dmenu_recent_aliases")
    ]

