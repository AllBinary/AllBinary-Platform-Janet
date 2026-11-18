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
(import ./ImageArrayBaseRotationAnimation :as ImageArrayBaseRotationAnimation)

# Java class ImageArrayRotationAnimation
(var jproto nil)
(var jnew_4 nil)
(var jm_createAnimation nil)
(var jm_initImageArray nil)
(var jm_setImageArray nil)

    
(set jm_createAnimation (fn jm_createAnimation [_anyType _animationBehavior]
    (label jreturn
        (var _imageRotationAnimationInfo _anyType)
        (return jreturn (jnew_4 (:jm_getImageArray _imageRotationAnimationInfo) (:jm_getAngleInfoP _imageRotationAnimationInfo) (:jm_getTotalAngle _imageRotationAnimationInfo) _animationBehavior)))))
    
(set jnew_4 (fn jnew_4 [_imageArray _angleInfo _totalAngle _animationBehavior]
    (var this (table/setproto @{:jclass "ImageArrayRotationAnimation" :f_expectedTotalFrames 0} jproto))
    
        (JR/superInit this (ImageArrayBaseRotationAnimation/jnew_3 _imageArray _angleInfo _animationBehavior))
        (:jm_initImageArray this _imageArray _angleInfo _totalAngle)
    this))
    
(set jm_initImageArray (fn jm_initImageArray [this _imageArray _angleInfo _totalAngle]
        (set (this :f_expectedTotalFrames) (JR/idiv _totalAngle (JR/className (:jm_getAngleIncrementInfo (this :f_angleInfo)))))
        (:jm_adjustAngle (this :f_angleInfo) 0)
        (if (not= (this :f_expectedTotalFrames) (:jm_getSize this))
            (do
            (error (JR/newException "Exception" "Wrong Number of Frames"))))))
    
(set jm_setImageArray (fn jm_setImageArray [this _imageArray]
        ((get ImageArrayBaseRotationAnimation/jproto :jm_setImageArray) this _imageArray)
        (:jm_adjustAngle (this :f_angleInfo) 0)))

(set jproto (table/setproto @{:jm_initImageArray jm_initImageArray :jm_setImageArray jm_setImageArray} ImageArrayBaseRotationAnimation/jproto))


