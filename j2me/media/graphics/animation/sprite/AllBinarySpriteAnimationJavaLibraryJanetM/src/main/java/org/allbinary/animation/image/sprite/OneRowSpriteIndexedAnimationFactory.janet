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
(import ../../../../../org/allbinary/animation/image/BaseImageAnimationFactory :as BaseImageAnimationFactory)
(defn- BasicColorUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/color/BasicColorUtil" "jm_getInstance" args))
(defn- AnimationFactorySpriteScaleUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/image/sprite/AnimationFactorySpriteScaleUtil" "jm_getInstance" args))
(defn- PrimitiveIntUtil/jm_getArrayInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/math/PrimitiveIntUtil" "jm_getArrayInstance" args))
(defn- SpriteIndexedAnimation/jnew_4 [& args] (JR/call jfile "./SpriteIndexedAnimation" "jnew_4" args))
(defn- AdjustedSpriteIndexedAnimation/jnew_6 [& args] (JR/call jfile "./AdjustedSpriteIndexedAnimation" "jnew_6" args))

# Java class OneRowSpriteIndexedAnimationFactory
(var jproto nil)
(var jnew_7 nil)
(var jm_createFactoryDX nil)
(var jm_createFactoryDXY nil)
(var jm_createFactoryWH nil)
(var jm_createFactory nil)
(var jm_init nil)
(var jm_initW nil)
(var jm_getInstance nil)

    
(set jm_createFactoryDX (fn jm_createFactoryDX [_image _dx _animationBehaviorFactory]
    (label jreturn
        (var _oneRowSpriteIndexedAnimationFactory (jnew_7 _image (PrimitiveIntUtil/jm_getArrayInstance) (:jm_getHeight _image) (:jm_getHeight _image) 0 0 _animationBehaviorFactory))
        (:jm_initW _oneRowSpriteIndexedAnimationFactory _dx)
        (return jreturn _oneRowSpriteIndexedAnimationFactory))))
    
(set jm_createFactoryDXY (fn jm_createFactoryDXY [_image _dx _dy _animationBehaviorFactory]
    (label jreturn
        (var _oneRowSpriteIndexedAnimationFactory (jnew_7 _image (PrimitiveIntUtil/jm_getArrayInstance) (:jm_getHeight _image) (:jm_getHeight _image) 0 0 _animationBehaviorFactory))
        (:jm_init _oneRowSpriteIndexedAnimationFactory _dx _dy)
        (return jreturn _oneRowSpriteIndexedAnimationFactory))))
    
(set jm_createFactoryWH (fn jm_createFactoryWH [_image _width _height _animationBehaviorFactory]
    (label jreturn
        (return jreturn (jnew_7 _image (PrimitiveIntUtil/jm_getArrayInstance) _width _height 0 0 _animationBehaviorFactory)))))
    
(set jm_createFactory (fn jm_createFactory [_image _animationBehaviorFactory]
    (label jreturn
        (return jreturn (jnew_7 _image (PrimitiveIntUtil/jm_getArrayInstance) (:jm_getHeight _image) (:jm_getHeight _image) 0 0 _animationBehaviorFactory)))))
    
(set jnew_7 (fn jnew_7 [_image _sequenceArray _width _height _dx _dy _animationBehaviorFactory]
    (var this (table/setproto @{:jclass "OneRowSpriteIndexedAnimationFactory" :f_animationFactorySpriteScaleUtil nil} jproto))
    (put this :f_animationFactorySpriteScaleUtil (AnimationFactorySpriteScaleUtil/jm_getInstance))
        (JR/superInit this (BaseImageAnimationFactory/jnew_7 _image _sequenceArray _width _height _dx _dy _animationBehaviorFactory))
    this))
    
(set jm_init (fn jm_init [this _dx _dy]
        (set ((this :f_animationFactoryInitializationVisitor) :f_dx) _dx)
        (set ((this :f_animationFactoryInitializationVisitor) :f_dy) _dy)))
    
(set jm_initW (fn jm_initW [this _dx]
        (:jm_init this _dx 0)
        (set ((this :f_animationFactoryInitializationVisitor) :f_dx) (JR/i32 (+ ((this :f_animationFactoryInitializationVisitor) :f_dx) (JR/i32 (- (brshift ((this :f_animationFactoryInitializationVisitor) :f_width) 2))))))))
    
(set jm_getInstance (fn jm_getInstance [this _instanceId]
    (label jreturn
        (var _sprite (:jm_createImage (this :f_animationFactorySpriteScaleUtil) (:jm_getImage this) ((this :f_animationFactoryInitializationVisitor) :f_width) ((this :f_animationFactoryInitializationVisitor) :f_height) ((this :f_scaleProperties) :f_scaleWidth) ((this :f_scaleProperties) :f_scaleHeight)))
        (if (or (not= ((this :f_animationFactoryInitializationVisitor) :f_dx) 0) (not= ((this :f_animationFactoryInitializationVisitor) :f_dy) 0))
            (do
            (return jreturn (AdjustedSpriteIndexedAnimation/jnew_6 _sprite (:jm_getImage this) ((BasicColorUtil/jm_getInstance) :f_ZERO_ARRAY) ((this :f_animationFactoryInitializationVisitor) :f_dx) ((this :f_animationFactoryInitializationVisitor) :f_dy) (:jm_getOrCreateInstance (this :f_animationBehaviorFactory)))))
            (do
            (return jreturn (SpriteIndexedAnimation/jnew_4 _sprite (:jm_getImage this) ((BasicColorUtil/jm_getInstance) :f_ZERO_ARRAY) (:jm_getOrCreateInstance (this :f_animationBehaviorFactory)))))))))

(set jproto (table/setproto @{:jm_init jm_init :jm_initW jm_initW :jm_getInstance jm_getInstance} BaseImageAnimationFactory/jproto))


