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
(import ./BaseImageAnimationFactory :as BaseImageAnimationFactory)
(defn- TopToBottomImageAnimation/jnew_3 [& args] (JR/call jfile "./TopToBottomImageAnimation" "jnew_3" args))

# Java class TopToBottomImageAnimationFactory
(var jproto nil)
(var jnew_3 nil)
(var jm_getInstance nil)

    
(set jnew_3 (fn jnew_3 [_image _sequenceArray _animationBehaviorFactory]
    (var this (table/setproto @{:jclass "TopToBottomImageAnimationFactory"} jproto))
        (JR/superInit this (BaseImageAnimationFactory/jnew_7 _image _sequenceArray (:jm_getWidth _image) (:jm_getHeight _image) 0 0 _animationBehaviorFactory))
    this))
    
(set jm_getInstance (fn jm_getInstance [this _instanceId]
    (label jreturn
        (var _scaledImage (JR/className (this :f_animationFactoryImageScaleUtil)))
        (return jreturn (TopToBottomImageAnimation/jnew_3 _scaledImage (:jm_getSequenceArray this) (:jm_getOrCreateInstance (this :f_animationBehaviorFactory)))))))

(set jproto (table/setproto @{:jm_getInstance jm_getInstance} BaseImageAnimationFactory/jproto))


