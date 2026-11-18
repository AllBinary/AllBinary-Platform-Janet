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
(defn- BottomToTopImageAnimation/jnew_2 [& args] (JR/call jfile "./BottomToTopImageAnimation" "jnew_2" args))

# Java class BottomToTopImageAnimationFactory
(var jproto nil)
(var jnew_2 nil)
(var jm_getInstance nil)

    
(set jnew_2 (fn jnew_2 [_image _animationBehaviorFactory]
    (var this (table/setproto @{:jclass "BottomToTopImageAnimationFactory"} jproto))
        (JR/superInit this (BaseImageAnimationFactory/jnew_7 _image (PrimitiveIntUtil/jm_getArrayInstance) (:jm_getWidth _image) (:jm_getHeight _image) 0 0 _animationBehaviorFactory))
    this))
    
(set jm_getInstance (fn jm_getInstance [this _instanceId]
    (label jreturn
        (var _scaledImage (JR/className (this :f_animationFactoryImageScaleUtil)))
        (return jreturn (BottomToTopImageAnimation/jnew_2 _scaledImage (:jm_getOrCreateInstance (this :f_animationBehaviorFactory)))))))

(set jproto (table/setproto @{:jm_getInstance jm_getInstance} BaseImageAnimationFactory/jproto))


