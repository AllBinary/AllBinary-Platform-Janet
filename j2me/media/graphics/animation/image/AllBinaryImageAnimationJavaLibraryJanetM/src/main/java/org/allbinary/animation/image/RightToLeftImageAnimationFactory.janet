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
(defn- PrimitiveIntUtil/jm_getArrayInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/math/PrimitiveIntUtil" "jm_getArrayInstance" args))
(import ./BaseImageAnimationFactory :as BaseImageAnimationFactory)
(defn- RightToLeftImageAnimation/jnew_2 [& args] (JR/call jfile "./RightToLeftImageAnimation" "jnew_2" args))
(defn- AdjustedRightToLeftImageAnimation/jnew_4 [& args] (JR/call jfile "./AdjustedRightToLeftImageAnimation" "jnew_4" args))

# Java class RightToLeftImageAnimationFactory
(var jproto nil)
(var jnew_4 nil)
(var jm_getInstance nil)

    
(set jnew_4 (fn jnew_4 [_image _dx _dy _animationBehaviorFactory]
    (var this (table/setproto @{:jclass "RightToLeftImageAnimationFactory"} jproto))
        (JR/superInit this (BaseImageAnimationFactory/jnew_7 _image (PrimitiveIntUtil/jm_getArrayInstance) (:jm_getWidth _image) (:jm_getHeight _image) _dx _dy _animationBehaviorFactory))
    this))
    
(set jm_getInstance (fn jm_getInstance [this _instanceId]
    (label jreturn
        (var _scaledImage (JR/className (this :f_animationFactoryImageScaleUtil)))
        (if (or (not= ((this :f_animationFactoryInitializationVisitor) :f_dx) 0) (not= ((this :f_animationFactoryInitializationVisitor) :f_dy) 0))
            (do
            (JR/className (this :f_animationFactoryImageScaleUtil))
            (return jreturn (AdjustedRightToLeftImageAnimation/jnew_4 _scaledImage ((this :f_animationFactoryInitializationVisitor) :f_dx) ((this :f_animationFactoryInitializationVisitor) :f_dy) (:jm_getOrCreateInstance (this :f_animationBehaviorFactory)))))
            (do
            (return jreturn (RightToLeftImageAnimation/jnew_2 _scaledImage (:jm_getOrCreateInstance (this :f_animationBehaviorFactory)))))))))

(set jproto (table/setproto @{:jm_getInstance jm_getInstance} BaseImageAnimationFactory/jproto))


