# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
(defn- AnimationBehaviorFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/animation/AnimationBehaviorFactory" "jm_getInstance" args))
(defn- OpenGLUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/opengles/OpenGLUtil" "jm_getInstance" args))
(defn- PrimitiveIntUtil/jm_getArrayInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/math/PrimitiveIntUtil" "jm_getArrayInstance" args))
(import ./BaseImageAnimationFactory :as BaseImageAnimationFactory)
(defn- ImageAnimation/jnew_2 [& args] (JR/call jfile "./ImageAnimation" "jnew_2" args))
(defn- AdjustedImageAnimation/jnew_4 [& args] (JR/call jfile "./AdjustedImageAnimation" "jnew_4" args))

# Java class ImageAnimationFactory
(var jproto nil)
(var jnew_6 nil)
(var jm_createFactory nil)
(var jm_getInstance nil)

    
(set jm_createFactory (fn jm_createFactory [_image]
    (label jreturn
        (return jreturn (jnew_6 _image (:jm_getWidth _image) (:jm_getHeight _image) 0 0 (AnimationBehaviorFactory/jm_getInstance))))))
    
(set jnew_6 (fn jnew_6 [_image _width _height _dx _dy _animationBehaviorFactory]
    (var this (table/setproto @{:jclass "ImageAnimationFactory"} jproto))
        (JR/superInit this (BaseImageAnimationFactory/jnew_7 _image (PrimitiveIntUtil/jm_getArrayInstance) _width _height _dx _dy _animationBehaviorFactory))
    this))
    
(set jm_getInstance (fn jm_getInstance [this _instanceId]
    (label jreturn
        (var _scaledImage (JR/className (this :f_animationFactoryImageScaleUtil)))
        (var _openGLUtil (OpenGLUtil/jm_getInstance))
        (set _scaledImage (:jm_addImage _openGLUtil _scaledImage))
        (if (or (not= ((this :f_animationFactoryInitializationVisitor) :f_dx) 0) (not= ((this :f_animationFactoryInitializationVisitor) :f_dy) 0))
            (do
            (JR/className (this :f_animationFactoryImageScaleUtil))
            (return jreturn (AdjustedImageAnimation/jnew_4 _scaledImage ((this :f_animationFactoryInitializationVisitor) :f_dx) ((this :f_animationFactoryInitializationVisitor) :f_dy) (:jm_getOrCreateInstance (this :f_animationBehaviorFactory)))))
            (do
            (return jreturn (ImageAnimation/jnew_2 _scaledImage (:jm_getOrCreateInstance (this :f_animationBehaviorFactory)))))))))

(set jproto (table/setproto @{:jm_getInstance jm_getInstance} BaseImageAnimationFactory/jproto))


