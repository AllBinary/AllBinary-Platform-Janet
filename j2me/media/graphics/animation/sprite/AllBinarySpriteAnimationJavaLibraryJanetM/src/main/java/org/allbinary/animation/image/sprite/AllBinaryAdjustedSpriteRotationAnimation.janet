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
# package org.allbinary.animation.image.sprite

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ./AllBinarySpriteRotationAnimation :as AllBinarySpriteRotationAnimation)

# Java class AllBinaryAdjustedSpriteRotationAnimation
(var jproto nil)
(var jnew_5 nil)
(var jm_paintXY nil)

    
(set jnew_5 (fn jnew_5 [_sprite _image _dx _dy _animationBehavior]
    (var this (table/setproto @{:jclass "AllBinaryAdjustedSpriteRotationAnimation" :f_dx 0 :f_dy 0} jproto))
    
    
        (JR/superInit this (AllBinarySpriteRotationAnimation/jnew_3 _sprite _image _animationBehavior))
        (set (this :f_dx) _dx)
        (set (this :f_dy) _dy)
    this))
    
(set jm_paintXY (fn jm_paintXY [this _g _x _y]
        (:jm_setPosition (this :f_sprite) (JR/i32 (+ _x (this :f_dx))) (JR/i32 (+ _y (this :f_dy))))
        (:jm_paint this _g)))

(set jproto (table/setproto @{:jm_paintXY jm_paintXY} AllBinarySpriteRotationAnimation/jproto))


