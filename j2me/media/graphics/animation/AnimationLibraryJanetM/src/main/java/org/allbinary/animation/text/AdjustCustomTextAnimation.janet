# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.animation.text

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ./CustomTextAnimation :as CustomTextAnimation)

# Java class AdjustCustomTextAnimation
(var jproto nil)
(var jnew_5 nil)
(var jm_getDx nil)
(var jm_setDx nil)
(var jm_getDy nil)
(var jm_setDy nil)
(var jm_paintXY nil)

    
(set jnew_5 (fn jnew_5 [_text _fontSize _dx _dy _animationBehavior]
    (var this (table/setproto @{:jclass "AdjustCustomTextAnimation" :f_dx 0 :f_dy 0} jproto))
    
    
        (JR/superInit this (CustomTextAnimation/jnew_3 _text _fontSize _animationBehavior))
        (set (this :f_dx) _dx)
        (set (this :f_dy) _dy)
    this))
    
(set jm_getDx (fn jm_getDx [this]
    (label jreturn
        (return jreturn (this :f_dx)))))
    
(set jm_setDx (fn jm_setDx [this _dx]
        (set (this :f_dx) _dx)))
    
(set jm_getDy (fn jm_getDy [this]
    (label jreturn
        (return jreturn (this :f_dy)))))
    
(set jm_setDy (fn jm_setDy [this _dy]
        (set (this :f_dy) _dy)))
    
(set jm_paintXY (fn jm_paintXY [this _graphics _x _y]
        ((get CustomTextAnimation/jproto :jm_paintXY) this _graphics (JR/i32 (+ _x (this :f_dx))) (JR/i32 (+ _y (this :f_dy))))))

(set jproto (table/setproto @{:jm_getDx jm_getDx :jm_setDx jm_setDx :jm_getDy jm_getDy :jm_setDy jm_setDy :jm_paintXY jm_paintXY} CustomTextAnimation/jproto))


