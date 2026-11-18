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
(defn- GameConfigurationCentral/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/GameConfigurationCentral" "jm_getInstance" args))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- AngleFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/math/AngleFactory" "jm_getInstance" args))
(defn- ImageToRotationImageArrayUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/media/image/ImageToRotationImageArrayUtil" "jm_getInstance" args))
(defn- ImageArrayRotationAnimationInfo/jnew_5 [& args] (JR/call jfile "./ImageArrayRotationAnimationInfo" "jnew_5" args))
(defn- AdjustedImageArrayRotationAnimation/jm_createAdjustedImageArrayRotationAnimationInfo [& args] (JR/call jfile "./AdjustedImageArrayRotationAnimation" "jm_createAdjustedImageArrayRotationAnimationInfo" args))

#TWB - Adjustments should be done in the resource creation and not at the animation level
# Java class PooledImageArrayRotationAnimationFactory
(var jproto nil)
(var jnew_7 nil)
(var jm_createFactory nil)
(var jm_createDXY nil)
(var jm_getInstance nil)
(var jm_setInitialScale nil)

    
(set jm_createFactory (fn jm_createFactory [_image _animationBehaviorFactory]
    (label jreturn
        (var _totalAngle ((AngleFactory/jm_getInstance) :f_TOTAL_ANGLE))
        (var _angleIncrement (JR/idiv _totalAngle (:jm_getGameControlFidelity (GameConfigurationCentral/jm_getInstance))))
        (return jreturn (jnew_7 _image (:jm_getWidth _image) (:jm_getHeight _image) (JR/i32 (- (brshift (:jm_getWidth _image) 2))) (JR/i32 (- (brshift (:jm_getHeight _image) 2))) _angleIncrement _animationBehaviorFactory)))))
    
(set jm_createDXY (fn jm_createDXY [_image _dx _dy _animationBehaviorFactory]
    (label jreturn
        (var _totalAngle ((AngleFactory/jm_getInstance) :f_TOTAL_ANGLE))
        (var _angleIncrement (JR/idiv _totalAngle (:jm_getGameControlFidelity (GameConfigurationCentral/jm_getInstance))))
        (return jreturn (jnew_7 _image (:jm_getWidth _image) (:jm_getHeight _image) _dx _dy _angleIncrement _animationBehaviorFactory)))))
    
(set jnew_7 (fn jnew_7 [_image _width _height _dx _dy _angleIncrement _animationBehaviorFactory]
    (var this (table/setproto @{:jclass "PooledImageArrayRotationAnimationFactory" :f_allBinaryImageRotationAnimationInfo nil :f_animationBehaviorFactory nil} jproto))
    (put this :f_allBinaryImageRotationAnimationInfo ((NullUtil/jm_getInstance) :f_NULL_OBJECT))
    
        (set (this :f_animationBehaviorFactory) _animationBehaviorFactory)
        (var _totalAngle ((AngleFactory/jm_getInstance) :f_TOTAL_ANGLE))
        (var _imageArray (:jm_generate (ImageToRotationImageArrayUtil/jm_getInstance) _image _angleIncrement _totalAngle))
        (set (this :f_allBinaryImageRotationAnimationInfo) (ImageArrayRotationAnimationInfo/jnew_5 _imageArray _angleIncrement _totalAngle _dx _dy))
    this))
    
(set jm_getInstance (fn jm_getInstance [this _instanceId]
    (label jreturn
        (return jreturn (AdjustedImageArrayRotationAnimation/jm_createAdjustedImageArrayRotationAnimationInfo (this :f_allBinaryImageRotationAnimationInfo) (:jm_getOrCreateInstance (this :f_animationBehaviorFactory)))))))
    
(set jm_setInitialScale (fn jm_setInitialScale [this _scaleProperties]
    nil))

(set jproto @{:jm_getInstance jm_getInstance :jm_setInitialScale jm_setInitialScale})


