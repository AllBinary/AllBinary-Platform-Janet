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
(import ../../../../org/allbinary/animation/SingletonAnimationInterfaceFactory :as SingletonAnimationInterfaceFactory)
(defn- ImageArrayAnimation/jnew_2 [& args] (JR/call jfile "./ImageArrayAnimation" "jnew_2" args))

# Java class ImageArraySingletonAnimationInterfaceFactory
(var jproto nil)
(var jnew_1 nil)

    
(set jnew_1 (fn jnew_1 [_imageArray]
    (var this (table/setproto @{:jclass "ImageArraySingletonAnimationInterfaceFactory"} jproto))
        (JR/superInit this (SingletonAnimationInterfaceFactory/jnew_1 (ImageArrayAnimation/jnew_2 _imageArray (AnimationBehavior/jm_getInstance))))
    this))

(set jproto (table/setproto @{} SingletonAnimationInterfaceFactory/jproto))


