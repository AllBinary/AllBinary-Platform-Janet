#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
# 
# By agreeing to this license you and any business entity you represent are
# legally bound to the AllBinary Open License Version 1 legal agreement.
# 
# You may obtain the AllBinary Open License Version 1 legal agreement from
# AllBinary or the root directory of AllBinary's AllBinary Platform repository.
# 
# Created By: Travis Berthelot
#  
# Generated Code Do Not Modify
# package org.allbinary.animation.vector

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../org/allbinary/animation/Animation :as Animation)

# Java class RectangleAdjustedAnimation
(var jproto nil)
(var jnew_5 nil)
(var jm_nextFrame nil)
(var jm_paintXY nil)
(var jm_setWidth nil)
(var jm_setHeight nil)
(var jm_setOffsetX nil)
(var jm_setOffsetY nil)
(var jm_getBasicColorP nil)
(var jm_setBasicColorP nil)

    
(set jnew_5 (fn jnew_5 [_width _height _offsetX _offsetY _basicColor]
    (var this (table/setproto @{:jclass "RectangleAdjustedAnimation" :f_width 0 :f_height 0 :f_offsetX 0 :f_offsetY 0} jproto))
    
    
    
    
    (JR/superInit this (Animation/jnew_0))
        (set (this :f_width) _width)
        (set (this :f_height) _height)
        (set (this :f_offsetX) _offsetX)
        (set (this :f_offsetY) _offsetY)
        (:jm_setBasicColorP this _basicColor)
    this))
    
(set jm_nextFrame (fn jm_nextFrame [this]
    nil))
    
(set jm_paintXY (fn jm_paintXY [this _graphics _x _y]
        (JR/className (this :f_basicSetColorUtil))
        (:jm_drawRect _graphics (JR/i32 (+ _x (this :f_offsetX))) (JR/i32 (+ _y (this :f_offsetY))) (this :f_width) (this :f_height))))
    
(set jm_setWidth (fn jm_setWidth [this _width]
        (set (this :f_width) _width)))
    
(set jm_setHeight (fn jm_setHeight [this _height]
        (set (this :f_height) _height)))
    
(set jm_setOffsetX (fn jm_setOffsetX [this _offsetX]
        (set (this :f_offsetX) _offsetX)))
    
(set jm_setOffsetY (fn jm_setOffsetY [this _offsetY]
        (set (this :f_offsetY) _offsetY)))
    
(set jm_getBasicColorP (fn jm_getBasicColorP [this]
    (label jreturn
        (return jreturn ((get Animation/jproto :jm_getBasicColorP) this)))))
    
(set jm_setBasicColorP (fn jm_setBasicColorP [this _basicColor]
        ((get Animation/jproto :jm_setBasicColorP) this _basicColor)))

(set jproto (table/setproto @{:jm_nextFrame jm_nextFrame :jm_paintXY jm_paintXY :jm_setWidth jm_setWidth :jm_setHeight jm_setHeight :jm_setOffsetX jm_setOffsetX :jm_setOffsetY jm_setOffsetY :jm_getBasicColorP jm_getBasicColorP :jm_setBasicColorP jm_setBasicColorP} Animation/jproto))


