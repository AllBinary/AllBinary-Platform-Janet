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
(import ./SpriteIndexedAnimation :as SpriteIndexedAnimation)

# Java class AdjustedSpriteIndexedAnimation
(var jproto nil)
(var jnew_6 nil)
(var jm_paintFrame nil)
(var jm_paintXY nil)
(var jm_paint nil)

    
(set jnew_6 (fn jnew_6 [_sprite _image _basicColorArray _dx _dy _animationBehavior]
    (var this (table/setproto @{:jclass "AdjustedSpriteIndexedAnimation" :f_dx 0 :f_dy 0} jproto))
    
    
        (JR/superInit this (SpriteIndexedAnimation/jnew_4 _sprite _image _basicColorArray _animationBehavior))
        (set (this :f_dx) _dx)
        (set (this :f_dy) _dy)
    this))
    
(set jm_paintFrame (fn jm_paintFrame [this _graphics _frame _x _y]
        (:jm_setFrame this _frame)
        (:jm_setPosition (this :f_sprite) (JR/i32 (+ _x (this :f_dx))) (JR/i32 (+ _y (this :f_dy))))
        ((get SpriteIndexedAnimation/jproto :jm_paint) this _graphics)))
    
(set jm_paintXY (fn jm_paintXY [this _g _x _y]
        (:jm_setPosition (this :f_sprite) (JR/i32 (+ _x (this :f_dx))) (JR/i32 (+ _y (this :f_dy))))
        ((get SpriteIndexedAnimation/jproto :jm_paint) this _g)))
    
(set jm_paint (fn jm_paint [this _g]
        (:jm_setPosition (this :f_sprite) (this :f_dx) (this :f_dy))
        ((get SpriteIndexedAnimation/jproto :jm_paint) this _g)))

(set jproto (table/setproto @{:jm_paintFrame jm_paintFrame :jm_paintXY jm_paintXY :jm_paint jm_paint} SpriteIndexedAnimation/jproto))


