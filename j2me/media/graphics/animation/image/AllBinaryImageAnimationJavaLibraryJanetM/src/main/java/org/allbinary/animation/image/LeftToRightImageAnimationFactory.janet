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
(import ./BaseImageAnimationFactory :as BaseImageAnimationFactory)
(defn- LeftToRightImageAnimation/jnew_3 [& args] (JR/call jfile "./LeftToRightImageAnimation" "jnew_3" args))
(defn- AdjustedLeftToRightImageAnimation/jnew_5 [& args] (JR/call jfile "./AdjustedLeftToRightImageAnimation" "jnew_5" args))

# Java class LeftToRightImageAnimationFactory
(var jproto nil)
(var jnew_5 nil)
(var jm_getInstance nil)

    
(set jnew_5 (fn jnew_5 [_image _sequenceArray _dx _dy _animationBehaviorFactory]
    (var this (table/setproto @{:jclass "LeftToRightImageAnimationFactory"} jproto))
        (JR/superInit this (BaseImageAnimationFactory/jnew_7 _image _sequenceArray (:jm_getWidth _image) (:jm_getHeight _image) _dx _dy _animationBehaviorFactory))
    this))
    
(set jm_getInstance (fn jm_getInstance [this _instanceId]
    (label jreturn
        (var _scaledImage (JR/className (this :f_animationFactoryImageScaleUtil)))
        (if (or (not= ((this :f_animationFactoryInitializationVisitor) :f_dx) 0) (not= ((this :f_animationFactoryInitializationVisitor) :f_dy) 0))
            (do
            (JR/className (this :f_animationFactoryImageScaleUtil))
            (return jreturn (AdjustedLeftToRightImageAnimation/jnew_5 _scaledImage (:jm_getSequenceArray this) ((this :f_animationFactoryInitializationVisitor) :f_dx) ((this :f_animationFactoryInitializationVisitor) :f_dy) (:jm_getOrCreateInstance (this :f_animationBehaviorFactory)))))
            (do
            (return jreturn (LeftToRightImageAnimation/jnew_3 _scaledImage (:jm_getSequenceArray this) (:jm_getOrCreateInstance (this :f_animationBehaviorFactory)))))))))

(set jproto (table/setproto @{:jm_getInstance jm_getInstance} BaseImageAnimationFactory/jproto))


