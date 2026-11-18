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
# package org.allbinary.animation.image.sprite

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- AndroidUtil/jm_isAndroid [& args] (JR/call jfile "../../../../../org/allbinary/AndroidUtil" "jm_isAndroid" args))
(import ../../../../../org/allbinary/animation/image/BaseImageAnimationFactory :as BaseImageAnimationFactory)
(defn- BasicColorUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/color/BasicColorUtil" "jm_getInstance" args))
(defn- AnimationFactorySpriteScaleUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/image/sprite/AnimationFactorySpriteScaleUtil" "jm_getInstance" args))
(defn- PrimitiveIntUtil/jm_getArrayInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/math/PrimitiveIntUtil" "jm_getArrayInstance" args))
(defn- SpriteIndexedAnimation/jnew_4 [& args] (JR/call jfile "./SpriteIndexedAnimation" "jnew_4" args))
(defn- AdjustedSpriteIndexedAnimation/jnew_6 [& args] (JR/call jfile "./AdjustedSpriteIndexedAnimation" "jnew_6" args))

# Java class SpriteIndexedAnimationFactory
(var jproto nil)
(var jnew_8 nil)
(var jm_createCWHDXY nil)
(var jm_createCWH nil)
(var jm_createWH nil)
(var jm_initHWH nil)
(var jm_getInstance nil)
(var jm_getInstanceAnimation nil)

    
(set jm_createCWHDXY (fn jm_createCWHDXY [_image _basicColorArray _width _height _dx _dy _animationBehaviorFactory]
    (label jreturn
        (return jreturn (jnew_8 _image _basicColorArray (PrimitiveIntUtil/jm_getArrayInstance) _width _height _dx _dy _animationBehaviorFactory)))))
    
(set jm_createCWH (fn jm_createCWH [_image _basicColorArray _width _height _animationBehaviorFactory]
    (label jreturn
        (var _spriteIndexedAnimationFactory (jnew_8 _image _basicColorArray (PrimitiveIntUtil/jm_getArrayInstance) _width _height 0 0 _animationBehaviorFactory))
        (:jm_initHWH _spriteIndexedAnimationFactory)
        (return jreturn _spriteIndexedAnimationFactory))))
    
(set jm_createWH (fn jm_createWH [_image _width _height _animationBehaviorFactory]
    (label jreturn
        (return jreturn (jnew_8 _image ((BasicColorUtil/jm_getInstance) :f_ZERO_ARRAY) (PrimitiveIntUtil/jm_getArrayInstance) _width _height 0 0 _animationBehaviorFactory)))))
    
(set jnew_8 (fn jnew_8 [_image _basicColorArray _sequenceArray _width _height _dx _dy _animationBehaviorFactory]
    (var this (table/setproto @{:jclass "SpriteIndexedAnimationFactory" :f_animationFactorySpriteScaleUtil nil :f_basicColorArray nil} jproto))
    (put this :f_animationFactorySpriteScaleUtil (AnimationFactorySpriteScaleUtil/jm_getInstance))
    (put this :f_basicColorArray ((BasicColorUtil/jm_getInstance) :f_ZERO_ARRAY))
        (JR/superInit this (BaseImageAnimationFactory/jnew_7 _image _sequenceArray _width _height _dx _dy _animationBehaviorFactory))
        (set (this :f_basicColorArray) _basicColorArray)
    this))
    
(set jm_initHWH (fn jm_initHWH [this]
        (set ((this :f_animationFactoryInitializationVisitor) :f_dx) (JR/i32 (- (brshift ((this :f_animationFactoryInitializationVisitor) :f_width) 2))))
        (set ((this :f_animationFactoryInitializationVisitor) :f_dy) (JR/i32 (- (brshift ((this :f_animationFactoryInitializationVisitor) :f_height) 2))))
        (if (AndroidUtil/jm_isAndroid)
            (do
            (set ((this :f_animationFactoryInitializationVisitor) :f_dx) (JR/i32 (+ ((this :f_animationFactoryInitializationVisitor) :f_dx) 3)))))))
    
(set jm_getInstance (fn jm_getInstance [this _instanceId]
    (label jreturn
        (var _sprite (:jm_createImage (this :f_animationFactorySpriteScaleUtil) (:jm_getImage this) ((this :f_animationFactoryInitializationVisitor) :f_width) ((this :f_animationFactoryInitializationVisitor) :f_height) ((this :f_scaleProperties) :f_scaleWidth) ((this :f_scaleProperties) :f_scaleHeight)))
        (if (or (not= ((this :f_animationFactoryInitializationVisitor) :f_dx) 0) (not= ((this :f_animationFactoryInitializationVisitor) :f_dy) 0))
            (do
            (return jreturn (AdjustedSpriteIndexedAnimation/jnew_6 _sprite (:jm_getImage this) (this :f_basicColorArray) ((this :f_animationFactoryInitializationVisitor) :f_dx) ((this :f_animationFactoryInitializationVisitor) :f_dy) (:jm_getOrCreateInstance (this :f_animationBehaviorFactory)))))
            (do
            (return jreturn (SpriteIndexedAnimation/jnew_4 _sprite (:jm_getImage this) (this :f_basicColorArray) (:jm_getOrCreateInstance (this :f_animationBehaviorFactory)))))))))
    
(set jm_getInstanceAnimation (fn jm_getInstanceAnimation [this _animationInterface]
    (label jreturn
        (return jreturn (:jm_getInstance this 0)))))

(set jproto (table/setproto @{:jm_initHWH jm_initHWH :jm_getInstance jm_getInstance :jm_getInstanceAnimation jm_getInstanceAnimation} BaseImageAnimationFactory/jproto))


