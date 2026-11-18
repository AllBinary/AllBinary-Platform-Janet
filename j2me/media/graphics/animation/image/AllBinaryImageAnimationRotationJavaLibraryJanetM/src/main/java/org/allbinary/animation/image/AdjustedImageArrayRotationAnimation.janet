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
(import ./ImageArrayRotationAnimation :as ImageArrayRotationAnimation)

#TWB - Adjustments should be done in the resource creation and not at the animation level
# Java class AdjustedImageArrayRotationAnimation
(var jproto nil)
(var jnew_6 nil)
(var jm_createAdjustedImageArrayRotationAnimationInfo nil)
(var jm_createAnimation nil)
(var jm_init nil)
(var jm_paintXY nil)
(var jm_setDx nil)
(var jm_getDx nil)
(var jm_setDy nil)
(var jm_getDy nil)

    
(set jm_createAdjustedImageArrayRotationAnimationInfo (fn jm_createAdjustedImageArrayRotationAnimationInfo [_anyType _animationBehavior]
    (label jreturn
        (var _imageRotationAnimationInfo _anyType)
        (return jreturn (jnew_6 (:jm_getImageArray _imageRotationAnimationInfo) (:jm_getAngleInfoP _imageRotationAnimationInfo) (:jm_getTotalAngle _imageRotationAnimationInfo) (:jm_getDx _imageRotationAnimationInfo) (:jm_getDy _imageRotationAnimationInfo) _animationBehavior)))))
    
(set jm_createAnimation (fn jm_createAnimation [_imageArray _angleInfo _totalAngle _animationBehavior]
    (label jreturn
        (return jreturn (jnew_6 _imageArray _angleInfo _totalAngle (JR/i32 (- (brshift (JR/className (_imageArray 0)) 2))) (JR/i32 (- (brshift (JR/className (_imageArray 0)) 2))) _animationBehavior)))))
    
(set jnew_6 (fn jnew_6 [_imageArray _angleInfo _totalAngle _dx _dy _animationBehavior]
    (var this (table/setproto @{:jclass "AdjustedImageArrayRotationAnimation" :f_dx 0 :f_dy 0} jproto))
    
    
        (JR/superInit this (ImageArrayRotationAnimation/jnew_4 _imageArray _angleInfo _totalAngle _animationBehavior))
        (:jm_init this _dx _dy)
    this))
    
(set jm_init (fn jm_init [this _dx _dy]
        (:jm_setDx this _dx)
        (:jm_setDy this _dy)))
    
(set jm_paintXY (fn jm_paintXY [this _graphics _x _y]
        ((get ImageArrayRotationAnimation/jproto :jm_paintXY) this _graphics (JR/i32 (+ _x (this :f_dx))) (JR/i32 (+ _y (this :f_dy))))))
    
(set jm_setDx (fn jm_setDx [this _dx]
        (set (this :f_dx) _dx)))
    
(set jm_getDx (fn jm_getDx [this]
    (label jreturn
        (return jreturn (this :f_dx)))))
    
(set jm_setDy (fn jm_setDy [this _dy]
        (set (this :f_dy) _dy)))
    
(set jm_getDy (fn jm_getDy [this]
    (label jreturn
        (return jreturn (this :f_dy)))))

(set jproto (table/setproto @{:jm_init jm_init :jm_paintXY jm_paintXY :jm_setDx jm_setDx :jm_getDx jm_getDx :jm_setDy jm_setDy :jm_getDy jm_getDy} ImageArrayRotationAnimation/jproto))


