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
(defn- AnimationBehaviorFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/animation/AnimationBehaviorFactory" "jm_getInstance" args))
(defn- GameConfigurationCentral/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/GameConfigurationCentral" "jm_getInstance" args))
(defn- PrimitiveIntUtil/jm_getArrayInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/math/PrimitiveIntUtil" "jm_getArrayInstance" args))
(defn- AngleFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/math/AngleFactory" "jm_getInstance" args))
(defn- AngleInfo/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/math/AngleInfo" "jm_getInstance" args))
(defn- ImageToRotationImageArrayUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/media/image/ImageToRotationImageArrayUtil" "jm_getInstance" args))
(import ./BaseImageAnimationFactory :as BaseImageAnimationFactory)
(defn- ImageArrayRotationAnimation/jnew_4 [& args] (JR/call jfile "./ImageArrayRotationAnimation" "jnew_4" args))
(defn- AdjustedImageArrayRotationAnimation/jnew_6 [& args] (JR/call jfile "./AdjustedImageArrayRotationAnimation" "jnew_6" args))

# Java class AllBinaryArrayImageRotationAnimationFactory
(var jproto nil)
(var jnew_5 nil)
(var jm_createFactory nil)
(var jm_createFactoryA nil)
(var jm_init nil)
(var jm_initDXY nil)
(var jm_getInstance nil)
(var jm_setImageArray nil)
(var jm_getAngleIncrement nil)

    
(set jm_createFactory (fn jm_createFactory [_image _dx _dy]
    (label jreturn
        (var _arrayImageRotationAnimationFactory (jnew_5 _image (:jm_getWidth _image) (:jm_getHeight _image) (JR/idiv ((AngleFactory/jm_getInstance) :f_TOTAL_ANGLE) (:jm_getGameControlFidelity (GameConfigurationCentral/jm_getInstance))) (AnimationBehaviorFactory/jm_getInstance)))
        (:jm_initDXY _arrayImageRotationAnimationFactory _dx _dy)
        (return jreturn _arrayImageRotationAnimationFactory))))
    
(set jm_createFactoryA (fn jm_createFactoryA [_image _dx _dy _angleIncrement]
    (label jreturn
        (var _arrayImageRotationAnimationFactory (jnew_5 _image (:jm_getWidth _image) (:jm_getHeight _image) _angleIncrement (AnimationBehaviorFactory/jm_getInstance)))
        (:jm_initDXY _arrayImageRotationAnimationFactory _dx _dy)
        (return jreturn _arrayImageRotationAnimationFactory))))
    
(set jnew_5 (fn jnew_5 [_image _width _height _angleIncrement _animationBehaviorFactory]
    (var this (table/setproto @{:jclass "AllBinaryArrayImageRotationAnimationFactory" :f_imageArray nil :f_angleIncrement 0} jproto))
    (put this :f_imageArray (NullImage/jstatic_NULL_IMAGE_ARRAY))
    
        (JR/superInit this (BaseImageAnimationFactory/jnew_7 _image (PrimitiveIntUtil/jm_getArrayInstance) _width _height 0 0 _animationBehaviorFactory))
        (set (this :f_angleIncrement) _angleIncrement)
        (:jm_init this)
    this))
    
(set jm_init (fn jm_init [this]
        (:jm_setImageArray this (:jm_generate (ImageToRotationImageArrayUtil/jm_getInstance) (:jm_getImage this) (:jm_getAngleIncrement this) ((AngleFactory/jm_getInstance) :f_TOTAL_ANGLE)))))
    
(set jm_initDXY (fn jm_initDXY [this _dx _dy]
        (set ((this :f_animationFactoryInitializationVisitor) :f_dx) _dx)
        (set ((this :f_animationFactoryInitializationVisitor) :f_dy) _dy)
        (set ((this :f_animationFactoryInitializationVisitor) :f_originalDx) _dx)
        (set ((this :f_animationFactoryInitializationVisitor) :f_originalDy) _dy)))
    
(set jm_getInstance (fn jm_getInstance [this _instanceId]
    (label jreturn
        (var _scaledImageArray (array/new-filled (length (this :f_imageArray)) nil))
        (var _size (length _scaledImageArray))
        (var _image (:jm_getImage this))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set (_scaledImageArray _index) (JR/className (this :f_animationFactoryImageScaleUtil))))
                (do (set _index (JR/i32 (+ _index 1))))))
        (if (or (not= ((this :f_animationFactoryInitializationVisitor) :f_dx) 0) (not= ((this :f_animationFactoryInitializationVisitor) :f_dy) 0))
            (do
            (JR/className (this :f_animationFactoryImageScaleUtil))
            (return jreturn (AdjustedImageArrayRotationAnimation/jnew_6 _scaledImageArray (AngleInfo/jm_getInstance (JR/i16 (:jm_getAngleIncrement this))) ((AngleFactory/jm_getInstance) :f_TOTAL_ANGLE) ((this :f_animationFactoryInitializationVisitor) :f_dx) ((this :f_animationFactoryInitializationVisitor) :f_dy) (:jm_getOrCreateInstance (this :f_animationBehaviorFactory)))))
            (do
            (return jreturn (ImageArrayRotationAnimation/jnew_4 _scaledImageArray (AngleInfo/jm_getInstance (JR/i16 (:jm_getAngleIncrement this))) ((AngleFactory/jm_getInstance) :f_TOTAL_ANGLE) (:jm_getOrCreateInstance (this :f_animationBehaviorFactory)))))))))
    
(set jm_setImageArray (fn jm_setImageArray [this _imageArray]
        (set (this :f_imageArray) _imageArray)))
    
(set jm_getAngleIncrement (fn jm_getAngleIncrement [this]
    (label jreturn
        (return jreturn (this :f_angleIncrement)))))

(set jproto (table/setproto @{:jm_init jm_init :jm_initDXY jm_initDXY :jm_getInstance jm_getInstance :jm_setImageArray jm_setImageArray :jm_getAngleIncrement jm_getAngleIncrement} BaseImageAnimationFactory/jproto))


