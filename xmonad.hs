import XMonad
import qualified XMonad.StackSet as W
import XMonad.Util.EZConfig(additionalKeys)
import XMonad.Config.Gnome

baseConfig = gnomeConfig

main = do
    xmonad $ gnomeConfig {
      modMask = mod4Mask
      } `additionalKeys` myKeys

myKeys =
    [
      ((mod4Mask, xK_p), spawn "dmenu_recent_aliases")
    ]
    ++
    [((m .|. mod4Mask, key), screenWorkspace sc >>= flip whenJust (windows . f))
        | (key, sc) <- zip [xK_w, xK_e, xK_r] [1,2,0] -- was [0..] *** change to match your screen order ***
        , (f, m) <- [(W.view, 0), (W.shift, shiftMask)]]
