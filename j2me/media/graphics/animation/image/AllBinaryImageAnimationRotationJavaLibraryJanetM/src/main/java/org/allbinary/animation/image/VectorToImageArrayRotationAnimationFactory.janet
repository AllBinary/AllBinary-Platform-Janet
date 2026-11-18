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
(defn- NullImage/jstatic_NULL_IMAGE_ARRAY [& args] (JR/call jfile "../../../../javax/microedition/lcdui/NullImage" "jstatic_NULL_IMAGE_ARRAY" args))
(defn- VectorAnimation/jm_createVectorAnimation [& args] (JR/call jfile "../../../../org/allbinary/animation/VectorAnimation" "jm_createVectorAnimation" args))
(defn- GameConfigurationCentral/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/GameConfigurationCentral" "jm_getInstance" args))
(defn- AnimationFrameToImageUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/image/AnimationFrameToImageUtil" "jm_getInstance" args))
(defn- PrimitiveIntUtil/jm_getArrayInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/math/PrimitiveIntUtil" "jm_getArrayInstance" args))
(defn- AngleFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/math/AngleFactory" "jm_getInstance" args))
(defn- AngleInfo/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/math/AngleInfo" "jm_getInstance" args))
(defn- ImageToRotationImageArrayUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/media/image/ImageToRotationImageArrayUtil" "jm_getInstance" args))
(import ./BaseImageAnimationFactory :as BaseImageAnimationFactory)
(defn- AdjustedImageArrayRotationAnimation/jnew_6 [& args] (JR/call jfile "./AdjustedImageArrayRotationAnimation" "jnew_6" args))
(defn- AdjustedImageArrayRotationAnimation/jm_createAnimation [& args] (JR/call jfile "./AdjustedImageArrayRotationAnimation" "jm_createAnimation" args))

# Java class VectorToImageArrayRotationAnimationFactory
(var jproto nil)
(var jnew_3 nil)
(var jm_init nil)
(var jm_getInstance nil)
(var jm_getAngleIncrement nil)
(var jm_setInitialScale nil)

    
(set jnew_3 (fn jnew_3 [_vectorInfo _basicColor _animationBehaviorFactory]
    (var this (table/setproto @{:jclass "VectorToImageArrayRotationAnimationFactory" :f_imageArray nil :f_angleIncrement 0} jproto))
    (put this :f_imageArray (NullImage/jstatic_NULL_IMAGE_ARRAY))
    
        (JR/superInit this (BaseImageAnimationFactory/jnew_7 (:jm_getInstanceTranslate (AnimationFrameToImageUtil/jm_getInstance) (:jm_getWidth _vectorInfo) (:jm_getHeight _vectorInfo) (VectorAnimation/jm_createVectorAnimation (:jm_getPoints _vectorInfo) _basicColor (:jm_getOrCreateInstance _animationBehaviorFactory))) (PrimitiveIntUtil/jm_getArrayInstance) 0 0 0 0 _animationBehaviorFactory))
        (:jm_init this)
    this))
    
(set jm_init (fn jm_init [this]
        (var _angleFactory (AngleFactory/jm_getInstance))
        (set (this :f_angleIncrement) (JR/idiv (_angleFactory :f_TOTAL_ANGLE) (:jm_getGameControlFidelity (GameConfigurationCentral/jm_getInstance))))
        (set (this :f_imageArray) (:jm_generate (ImageToRotationImageArrayUtil/jm_getInstance) (:jm_getImage this) (:jm_getAngleIncrement this) (_angleFactory :f_TOTAL_ANGLE)))))
    
(set jm_getInstance (fn jm_getInstance [this _instanceId]
    (label jreturn
        (if (or (not= ((this :f_animationFactoryInitializationVisitor) :f_dx) 0) (not= ((this :f_animationFactoryInitializationVisitor) :f_dy) 0))
            (do
            (return jreturn (AdjustedImageArrayRotationAnimation/jnew_6 (this :f_imageArray) (AngleInfo/jm_getInstance (JR/i16 (:jm_getAngleIncrement this))) ((AngleFactory/jm_getInstance) :f_TOTAL_ANGLE) ((this :f_animationFactoryInitializationVisitor) :f_dx) ((this :f_animationFactoryInitializationVisitor) :f_dy) (:jm_getOrCreateInstance (this :f_animationBehaviorFactory)))))
            (do
            (return jreturn (AdjustedImageArrayRotationAnimation/jm_createAnimation (this :f_imageArray) (AngleInfo/jm_getInstance (JR/i16 (this :f_angleIncrement))) ((AngleFactory/jm_getInstance) :f_TOTAL_ANGLE) (:jm_getOrCreateInstance (this :f_animationBehaviorFactory)))))))))
    
(set jm_getAngleIncrement (fn jm_getAngleIncrement [this]
    (label jreturn
        (return jreturn (this :f_angleIncrement)))))
    
(set jm_setInitialScale (fn jm_setInitialScale [this _scaleProperties]
    nil))

(set jproto (table/setproto @{:jm_init jm_init :jm_getInstance jm_getInstance :jm_getAngleIncrement jm_getAngleIncrement :jm_setInitialScale jm_setInitialScale} BaseImageAnimationFactory/jproto))


