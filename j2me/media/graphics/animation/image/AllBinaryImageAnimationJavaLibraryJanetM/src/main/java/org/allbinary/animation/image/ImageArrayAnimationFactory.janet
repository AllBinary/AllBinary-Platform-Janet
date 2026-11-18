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
(defn- AnimationBehavior/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/animation/AnimationBehavior" "jm_getInstance" args))
(defn- ImageArrayAnimation/jnew_2 [& args] (JR/call jfile "./ImageArrayAnimation" "jnew_2" args))
(defn- AdjustedImageArrayAnimation/jnew_4 [& args] (JR/call jfile "./AdjustedImageArrayAnimation" "jnew_4" args))

# Java class ImageArrayAnimationFactory
(var jproto nil)
(var jnew_4 nil)
(var jm_getInstance nil)
(var jm_setInitialScale nil)

    
(set jnew_4 (fn jnew_4 [_imageArray _dx _dy _animationBehaviorFactory]
    (var this (table/setproto @{:jclass "ImageArrayAnimationFactory" :f_dx 0 :f_dy 0 :f_imageArray nil :f_animationBehaviorFactory nil} jproto))
    (put this :f_dx 0)
    (put this :f_dy 0)
    
    
        (set (this :f_imageArray) _imageArray)
        (set (this :f_animationBehaviorFactory) _animationBehaviorFactory)
        (set (this :f_dx) _dx)
        (set (this :f_dy) _dy)
    this))
    
(set jm_getInstance (fn jm_getInstance [this _instanceId]
    (label jreturn
        (if (or (not= (this :f_dx) 0) (not= (this :f_dy) 0))
            (do
            (return jreturn (AdjustedImageArrayAnimation/jnew_4 (this :f_imageArray) (this :f_dx) (this :f_dy) (:jm_getOrCreateInstance (this :f_animationBehaviorFactory)))))
            (do
            (return jreturn (ImageArrayAnimation/jnew_2 (this :f_imageArray) (AnimationBehavior/jm_getInstance))))))))
    
(set jm_setInitialScale (fn jm_setInitialScale [this _scaleProperties]
    nil))

(set jproto @{:jm_getInstance jm_getInstance :jm_setInitialScale jm_setInitialScale})


