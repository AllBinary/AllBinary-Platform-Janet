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
(defn- AngleFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/math/AngleFactory" "jm_getInstance" args))
(defn- AngleInfo/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/math/AngleInfo" "jm_getInstance" args))
(import ./BaseImageAnimationFactory :as BaseImageAnimationFactory)
(defn- ImageBaseRotationAnimation/jnew_4 [& args] (JR/call jfile "./ImageBaseRotationAnimation" "jnew_4" args))
(defn- AdjustedImageBaseRotationAnimation/jnew_6 [& args] (JR/call jfile "./AdjustedImageBaseRotationAnimation" "jnew_6" args))

# Java class ImageRotationAnimationFactory
(var jproto nil)
(var jnew_7 nil)
(var jm_getInstance nil)
(var jm_getAngleIncrementP nil)

    
(set jnew_7 (fn jnew_7 [_image _width _height _dx _dy _angleIncrement _animationBehaviorFactory]
    (var this (table/setproto @{:jclass "ImageRotationAnimationFactory" :f_angleIncrement 0} jproto))
    
        (JR/superInit this (BaseImageAnimationFactory/jnew_7 _image (PrimitiveIntUtil/jm_getArrayInstance) _width _height 0 0 _animationBehaviorFactory))
        (set (this :f_angleIncrement) _angleIncrement)
        (set ((this :f_animationFactoryInitializationVisitor) :f_dx) _dx)
        (set ((this :f_animationFactoryInitializationVisitor) :f_dy) _dy)
    this))
    
(set jm_getInstance (fn jm_getInstance [this _instanceId]
    (label jreturn
        (if (or (not= ((this :f_animationFactoryInitializationVisitor) :f_dx) 0) (not= ((this :f_animationFactoryInitializationVisitor) :f_dy) 0))
            (do
            (JR/className (this :f_animationFactoryImageScaleUtil))
            (return jreturn (AdjustedImageBaseRotationAnimation/jnew_6 (:jm_getImage this) (AngleInfo/jm_getInstance (this :f_angleIncrement)) ((AngleFactory/jm_getInstance) :f_TOTAL_ANGLE) ((this :f_animationFactoryInitializationVisitor) :f_dx) ((this :f_animationFactoryInitializationVisitor) :f_dy) (:jm_getOrCreateInstance (this :f_animationBehaviorFactory)))))
            (do
            (return jreturn (ImageBaseRotationAnimation/jnew_4 (:jm_getImage this) (AngleInfo/jm_getInstance (this :f_angleIncrement)) ((AngleFactory/jm_getInstance) :f_TOTAL_ANGLE) (:jm_getOrCreateInstance (this :f_animationBehaviorFactory)))))))))
    
(set jm_getAngleIncrementP (fn jm_getAngleIncrementP [this]
    (label jreturn
        (return jreturn (this :f_angleIncrement)))))

(set jproto (table/setproto @{:jm_getInstance jm_getInstance :jm_getAngleIncrementP jm_getAngleIncrementP} BaseImageAnimationFactory/jproto))


