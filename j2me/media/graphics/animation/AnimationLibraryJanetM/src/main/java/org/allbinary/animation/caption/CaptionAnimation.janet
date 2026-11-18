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
# package org.allbinary.animation.caption

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../org/allbinary/animation/Animation :as Animation)

# Java class CaptionAnimation
(var jproto nil)
(var jnew_6 nil)
(var jm_nextFrame nil)
(var jm_paintXY nil)
(var jm_paintThreedXYZ nil)

    
(set jnew_6 (fn jnew_6 [_animationInterface _overlayAnimationInterface _captionDx _captionDy _dx _dy]
    (var this (table/setproto @{:jclass "CaptionAnimation" :f_animationInterface nil :f_overlayAnimationInterface nil :f_captionDx 0 :f_captionDy 0 :f_dx 0 :f_dy 0} jproto))
    
    
    
    
    
    
    (JR/superInit this (Animation/jnew_0))
        (set (this :f_animationInterface) _animationInterface)
        (set (this :f_overlayAnimationInterface) _overlayAnimationInterface)
        (set (this :f_captionDx) _captionDx)
        (set (this :f_captionDy) _captionDy)
        (set (this :f_dx) _dx)
        (set (this :f_dy) _dy)
    this))
    
(set jm_nextFrame (fn jm_nextFrame [this]
    nil))
    
(set jm_paintXY (fn jm_paintXY [this _graphics _x _y]
        (:jm_paintXY (this :f_animationInterface) _graphics (JR/i32 (+ _x (this :f_captionDx))) (JR/i32 (+ _y (this :f_captionDy))))
        (:jm_paintXY (this :f_overlayAnimationInterface) _graphics (JR/i32 (+ (JR/i32 (+ _x (this :f_captionDx))) (this :f_dx))) (JR/i32 (+ (JR/i32 (+ _y (this :f_captionDy))) (this :f_dy))))))
    
(set jm_paintThreedXYZ (fn jm_paintThreedXYZ [this _graphics _x _y _z]
        (:jm_paintThreedXYZ (this :f_animationInterface) _graphics (JR/i32 (+ _x (this :f_captionDx))) (JR/i32 (+ _y (this :f_captionDy))) _z)
        (:jm_paintThreedXYZ (this :f_overlayAnimationInterface) _graphics (JR/i32 (+ (JR/i32 (+ _x (this :f_captionDx))) (this :f_dx))) (JR/i32 (+ (JR/i32 (+ _y (this :f_captionDy))) (this :f_dy))) _z)))

(set jproto (table/setproto @{:jm_nextFrame jm_nextFrame :jm_paintXY jm_paintXY :jm_paintThreedXYZ jm_paintThreedXYZ} Animation/jproto))


