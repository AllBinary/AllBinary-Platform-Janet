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
(defn- AnimationFactorySpriteScaleUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/image/sprite/AnimationFactorySpriteScaleUtil" "jm_getInstance" args))
(defn- PrimitiveIntUtil/jm_getArrayInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/math/PrimitiveIntUtil" "jm_getArrayInstance" args))
(defn- SpriteIndexedAnimation/jnew_4 [& args] (JR/call jfile "./SpriteIndexedAnimation" "jnew_4" args))

# Java class ColorCompositeSpriteIndexedAnimationFactory
(var jproto nil)
(var jnew_5 nil)
(var jm_getInstance nil)
(var jm_getInstanceAnimation nil)

    
(set jnew_5 (fn jnew_5 [_image _basicColorArray _width _height _animationBehaviorFactory]
    (var this (table/setproto @{:jclass "ColorCompositeSpriteIndexedAnimationFactory" :f_animationFactorySpriteScaleUtil nil :f_basicColorArray nil} jproto))
    (put this :f_animationFactorySpriteScaleUtil (AnimationFactorySpriteScaleUtil/jm_getInstance))
    
        (JR/superInit this (BaseImageAnimationFactory/jnew_7 _image (PrimitiveIntUtil/jm_getArrayInstance) _width _height 0 0 _animationBehaviorFactory))
        (set (this :f_basicColorArray) _basicColorArray)
    this))
    
(set jm_getInstance (fn jm_getInstance [this _instanceId]
    (label jreturn
        (var _sprite (:jm_createImage (this :f_animationFactorySpriteScaleUtil) (:jm_getImage this) ((this :f_animationFactoryInitializationVisitor) :f_width) ((this :f_animationFactoryInitializationVisitor) :f_height) ((this :f_scaleProperties) :f_scaleWidth) ((this :f_scaleProperties) :f_scaleHeight)))
        (return jreturn (SpriteIndexedAnimation/jnew_4 _sprite (:jm_getImage this) (this :f_basicColorArray) (:jm_getOrCreateInstance (this :f_animationBehaviorFactory)))))))
    
(set jm_getInstanceAnimation (fn jm_getInstanceAnimation [this _animationInterface]
    (label jreturn
        (return jreturn (:jm_getInstance this 0)))))

(set jproto (table/setproto @{:jm_getInstance jm_getInstance :jm_getInstanceAnimation jm_getInstanceAnimation} BaseImageAnimationFactory/jproto))


