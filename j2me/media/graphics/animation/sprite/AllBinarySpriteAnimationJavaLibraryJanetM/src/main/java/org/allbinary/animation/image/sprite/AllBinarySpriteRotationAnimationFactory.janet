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
(defn- AnimationBehaviorFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/animation/AnimationBehaviorFactory" "jm_getInstance" args))
(import ../../../../../org/allbinary/animation/image/BaseImageAnimationFactory :as BaseImageAnimationFactory)
(defn- AnimationFactorySpriteScaleUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/image/sprite/AnimationFactorySpriteScaleUtil" "jm_getInstance" args))
(defn- ForcedLogUtil/jm_log [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/ForcedLogUtil" "jm_log" args))
(defn- PrimitiveIntUtil/jm_getArrayInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/math/PrimitiveIntUtil" "jm_getArrayInstance" args))
(defn- AllBinarySpriteRotationAnimation/jnew_3 [& args] (JR/call jfile "./AllBinarySpriteRotationAnimation" "jnew_3" args))
(defn- AllBinaryAdjustedSpriteRotationAnimation/jnew_5 [& args] (JR/call jfile "./AllBinaryAdjustedSpriteRotationAnimation" "jnew_5" args))

# Java class AllBinarySpriteRotationAnimationFactory
(var jproto nil)
(var jnew_7 nil)
(var jm_createWHDY nil)
(var jm_createWH nil)
(var jm_createDXY nil)
(var jm_createDXYQ nil)
(var jm_createQ nil)
(var jm_createWHF nil)
(var jm_init nil)
(var jm_initWH nil)
(var jm_getInstance nil)
(var jm_getInstanceAnimation nil)

    
(set jm_createWHDY (fn jm_createWHDY [_image _dx _dy _animationBehaviorFactory]
    (label jreturn
        (var _spriteRotationAnimationFactory (jnew_7 _image (PrimitiveIntUtil/jm_getArrayInstance) (brshift (:jm_getHeight _image) 2) (brshift (:jm_getHeight _image) 2) 0 0 _animationBehaviorFactory))
        (:jm_initWH _spriteRotationAnimationFactory _dx _dy)
        (return jreturn _spriteRotationAnimationFactory))))
    
(set jm_createWH (fn jm_createWH [_image _animationBehaviorFactory]
    (label jreturn
        (return jreturn (jm_createWHDY _image 0 0 _animationBehaviorFactory)))))
    
(set jm_createDXY (fn jm_createDXY [_image _dx _dy _animationBehaviorFactory]
    (label jreturn
        (var _spriteRotationAnimationFactory (jnew_7 _image (PrimitiveIntUtil/jm_getArrayInstance) (:jm_getHeight _image) (:jm_getHeight _image) 0 0 _animationBehaviorFactory))
        (:jm_init _spriteRotationAnimationFactory _dx _dy)
        (return jreturn _spriteRotationAnimationFactory))))
    
(set jm_createDXYQ (fn jm_createDXYQ [_image _dx _dy _animationBehaviorFactory]
    (label jreturn
        (var _spriteRotationAnimationFactory (jnew_7 _image (PrimitiveIntUtil/jm_getArrayInstance) (brshift (:jm_getHeight _image) 2) (brshift (:jm_getHeight _image) 2) 0 0 _animationBehaviorFactory))
        (:jm_init _spriteRotationAnimationFactory _dx _dy)
        (return jreturn _spriteRotationAnimationFactory))))
    
(set jm_createQ (fn jm_createQ [_image _animationBehaviorFactory]
    (label jreturn
        (return jreturn (jnew_7 _image (PrimitiveIntUtil/jm_getArrayInstance) (brshift (:jm_getHeight _image) 2) (brshift (:jm_getHeight _image) 2) 0 0 _animationBehaviorFactory)))))
    
(set jm_createWHF (fn jm_createWHF [_image _animationBehaviorFactory]
    (label jreturn
        (return jreturn (jnew_7 _image (PrimitiveIntUtil/jm_getArrayInstance) (:jm_getHeight _image) (:jm_getHeight _image) 0 0 _animationBehaviorFactory)))))
    
(set jnew_7 (fn jnew_7 [_image _sequenceArray _width _height _dx _dy _animationBehaviorFactory]
    (var this (table/setproto @{:jclass "AllBinarySpriteRotationAnimationFactory" :f_animationFactorySpriteScaleUtil nil} jproto))
    (put this :f_animationFactorySpriteScaleUtil (AnimationFactorySpriteScaleUtil/jm_getInstance))
        (JR/superInit this (BaseImageAnimationFactory/jnew_7 _image _sequenceArray _width _height _dx _dy _animationBehaviorFactory))
        (if (= _animationBehaviorFactory (AnimationBehaviorFactory/jm_getInstance))
            (do
            (ForcedLogUtil/jm_log "Using default AnimationBehaviorFactory with IndexedAnimationFactory" this)))
    this))
    
(set jm_init (fn jm_init [this _dx _dy]
        (set ((this :f_animationFactoryInitializationVisitor) :f_dx) _dx)
        (set ((this :f_animationFactoryInitializationVisitor) :f_dy) _dy)))
    
(set jm_initWH (fn jm_initWH [this _dx _dy]
        (:jm_init this _dx _dy)
        (set ((this :f_animationFactoryInitializationVisitor) :f_dx) (JR/i32 (+ ((this :f_animationFactoryInitializationVisitor) :f_dx) (JR/idiv (JR/i32 (- ((this :f_animationFactoryInitializationVisitor) :f_width))) 5))))
        (set ((this :f_animationFactoryInitializationVisitor) :f_dy) (JR/i32 (+ ((this :f_animationFactoryInitializationVisitor) :f_dy) (JR/idiv (JR/i32 (- ((this :f_animationFactoryInitializationVisitor) :f_height))) 5))))))
    
(set jm_getInstance (fn jm_getInstance [this _instanceId]
    (label jreturn
        (var _sprite (:jm_createImage (this :f_animationFactorySpriteScaleUtil) (:jm_getImage this) ((this :f_animationFactoryInitializationVisitor) :f_width) ((this :f_animationFactoryInitializationVisitor) :f_height) ((this :f_scaleProperties) :f_scaleWidth) ((this :f_scaleProperties) :f_scaleHeight)))
        (if (or (not= ((this :f_animationFactoryInitializationVisitor) :f_dx) 0) (not= ((this :f_animationFactoryInitializationVisitor) :f_dy) 0))
            (do
            (return jreturn (AllBinaryAdjustedSpriteRotationAnimation/jnew_5 _sprite (:jm_getImage this) ((this :f_animationFactoryInitializationVisitor) :f_dx) ((this :f_animationFactoryInitializationVisitor) :f_dy) (:jm_getOrCreateInstance (this :f_animationBehaviorFactory)))))
            (do
            (return jreturn (AllBinarySpriteRotationAnimation/jnew_3 _sprite (:jm_getImage this) (:jm_getOrCreateInstance (this :f_animationBehaviorFactory)))))))))
    
(set jm_getInstanceAnimation (fn jm_getInstanceAnimation [this _animationInterface]
    (label jreturn
        (return jreturn (:jm_getInstance this 0)))))

(set jproto (table/setproto @{:jm_init jm_init :jm_initWH jm_initWH :jm_getInstance jm_getInstance :jm_getInstanceAnimation jm_getInstanceAnimation} BaseImageAnimationFactory/jproto))


