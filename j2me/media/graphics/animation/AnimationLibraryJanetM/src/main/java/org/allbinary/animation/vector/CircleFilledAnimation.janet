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

# Java class CircleFilledAnimation
(var jproto nil)
(var jnew_3 nil)
(var jm_nextFrame nil)
(var jm_paintXY nil)
(var jm_getBasicColorP nil)
(var jm_setBasicColorP nil)

    
(set jnew_3 (fn jnew_3 [_width _height _basicColor]
    (var this (table/setproto @{:jclass "CircleFilledAnimation" :f_width 0 :f_height 0} jproto))
    
    
        (JR/superInit this (Animation/jnew_0))
        (set (this :f_width) _width)
        (set (this :f_height) _height)
        (:jm_setBasicColorP this _basicColor)
    this))
    
(set jm_nextFrame (fn jm_nextFrame [this]
    nil))
    
(set jm_paintXY (fn jm_paintXY [this _graphics _x _y]
        (JR/className (this :f_basicSetColorUtil))
        (:jm_fillRect _graphics _x _y (this :f_width) (this :f_height))))
    
(set jm_getBasicColorP (fn jm_getBasicColorP [this]
    (label jreturn
        (return jreturn ((get Animation/jproto :jm_getBasicColorP) this)))))
    
(set jm_setBasicColorP (fn jm_setBasicColorP [this _basicColor]
        ((get Animation/jproto :jm_setBasicColorP) this _basicColor)))

(set jproto (table/setproto @{:jm_nextFrame jm_nextFrame :jm_paintXY jm_paintXY :jm_getBasicColorP jm_getBasicColorP :jm_setBasicColorP jm_setBasicColorP} Animation/jproto))


