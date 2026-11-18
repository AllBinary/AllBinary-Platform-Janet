# Generated Code Do Not Modify
# package org.allbinary.animation

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ./IndexedAnimation :as IndexedAnimation)

# Java class FillAnimation
(var jproto nil)
(var jnew_4 nil)
(var jm_setBasicColorP nil)
(var jm_changeBasicColor nil)
(var jm_setAlpha nil)
(var jm_setScale nil)
(var jm_setMaxScale nil)
(var jm_updateModifiers nil)
(var jm_paint nil)

    
(set jnew_4 (fn jnew_4 [_pixelBuffer _width _height _animationBehavior]
    (var this (table/setproto @{:jclass "FillAnimation" :f_pixelBuffer nil :f_width 0 :f_height 0} jproto))
    
    
    
        (JR/superInit this (IndexedAnimation/jnew_1 _animationBehavior))
        (set (this :f_width) 100)
        (set (this :f_height) 100)
        (set (this :f_pixelBuffer) _pixelBuffer)
    this))
    
(set jm_setBasicColorP (fn jm_setBasicColorP [this _basicColor]
        (var _changed false)
        (if (or (nil? (:jm_getBasicColorP this)) (not= (JR/className (:jm_getBasicColorP this)) (:jm_intValue _basicColor)))
            (do
            (set _changed true)))
        ((get IndexedAnimation/jproto :jm_setBasicColorP) this _basicColor)
        (if _changed
            (do
            (:jm_updateModifiers this)))))
    
(set jm_changeBasicColor (fn jm_changeBasicColor [this _basicColor]
        (var _changed false)
        (if (or (nil? (:jm_getChangeBasicColor this)) (not= (JR/className (:jm_getChangeBasicColor this)) (:jm_intValue _basicColor)))
            (do
            (set _changed true)))
        ((get IndexedAnimation/jproto :jm_changeBasicColor) this _basicColor)
        (if _changed
            (do
            (:jm_updateModifiers this)))))
    
(set jm_setAlpha (fn jm_setAlpha [this _alpha]
        (var _changed false)
        (if (not= (this :f_alphaP) _alpha)
            (do
            (set _changed true)))
        ((get IndexedAnimation/jproto :jm_setAlpha) this _alpha)
        (if _changed
            (do
            (:jm_updateModifiers this)))))
    
(set jm_setScale (fn jm_setScale [this _scaleX _scaleY]
    nil))
    
(set jm_setMaxScale (fn jm_setMaxScale [this _maxScaleX _maxScaleY]
    nil))
    
(set jm_updateModifiers (fn jm_updateModifiers [this]
    nil))
    
(set jm_paint (fn jm_paint [this _g]
        (:jm_drawRGB _g (this :f_pixelBuffer) 0 (this :f_width) 0 0 (this :f_width) (this :f_height) true)))

(set jproto (table/setproto @{:jm_setBasicColorP jm_setBasicColorP :jm_changeBasicColor jm_changeBasicColor :jm_setAlpha jm_setAlpha :jm_setScale jm_setScale :jm_setMaxScale jm_setMaxScale :jm_updateModifiers jm_updateModifiers :jm_paint jm_paint} IndexedAnimation/jproto))


