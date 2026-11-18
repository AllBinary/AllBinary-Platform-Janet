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
# package org.allbinary.animation

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ./VectorAnimation :as VectorAnimation)

# Java class AdjustedVectorAnimation
(var jproto nil)
(var jnew_5 nil)
(var jm_paintXY nil)

    
(set jnew_5 (fn jnew_5 [_currentPoints _basicColor _dx _dy _animationBehavior]
    (var this (table/setproto @{:jclass "AdjustedVectorAnimation" :f_dx 0 :f_dy 0} jproto))
    
    
        (JR/superInit this (VectorAnimation/jnew_3 _currentPoints _basicColor _animationBehavior))
        (set (this :f_dx) _dx)
        (set (this :f_dy) _dy)
    this))
    
(set jm_paintXY (fn jm_paintXY [this _graphics _x _y]
        ((get VectorAnimation/jproto :jm_paintXY) this _graphics (JR/i32 (+ _x (this :f_dx))) (JR/i32 (+ _y (this :f_dy))))))

(set jproto (table/setproto @{:jm_paintXY jm_paintXY} VectorAnimation/jproto))


