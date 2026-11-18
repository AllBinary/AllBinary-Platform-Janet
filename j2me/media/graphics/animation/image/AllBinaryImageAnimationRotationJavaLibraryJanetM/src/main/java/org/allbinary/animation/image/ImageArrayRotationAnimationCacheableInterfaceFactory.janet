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
(defn- AnimationBehavior/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/animation/AnimationBehavior" "jm_getInstance" args))
(defn- ImageArrayRotationAnimationCacheable/jnew_2 [& args] (JR/call jfile "./ImageArrayRotationAnimationCacheable" "jnew_2" args))

# Java class ImageArrayRotationAnimationCacheableInterfaceFactory
(var jproto nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ImageArrayRotationAnimationCacheableInterfaceFactory"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance [this _key]
    (label jreturn
        (return jreturn (ImageArrayRotationAnimationCacheable/jnew_2 _key (AnimationBehavior/jm_getInstance))))))

(set jproto @{:jm_getInstance jm_getInstance})


