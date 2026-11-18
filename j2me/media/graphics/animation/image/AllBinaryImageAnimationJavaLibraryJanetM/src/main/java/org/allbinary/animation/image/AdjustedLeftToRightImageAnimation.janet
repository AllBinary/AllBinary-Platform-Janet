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
# package org.allbinary.animation.image

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ./LeftToRightImageAnimation :as LeftToRightImageAnimation)

# Java class AdjustedLeftToRightImageAnimation
(var jproto nil)
(var jnew_5 nil)
(var jm_init nil)
(var jm_paintXY nil)

    
(set jnew_5 (fn jnew_5 [_image _sequenceArray _dx _dy _animationBehavior]
    (var this (table/setproto @{:jclass "AdjustedLeftToRightImageAnimation" :f_dx 0 :f_dy 0} jproto))
    
    
        (JR/superInit this (LeftToRightImageAnimation/jnew_3 _image _sequenceArray _animationBehavior))
        (:jm_init this _dx _dy)
    this))
    
(set jm_init (fn jm_init [this _dx _dy]
        (set (this :f_dx) _dx)
        (set (this :f_dy) _dy)))
    
(set jm_paintXY (fn jm_paintXY [this _graphics _x _y]
        ((get LeftToRightImageAnimation/jproto :jm_paintXY) this _graphics (JR/i32 (+ _x (this :f_dx))) (JR/i32 (+ _y (this :f_dy))))))

(set jproto (table/setproto @{:jm_init jm_init :jm_paintXY jm_paintXY} LeftToRightImageAnimation/jproto))


