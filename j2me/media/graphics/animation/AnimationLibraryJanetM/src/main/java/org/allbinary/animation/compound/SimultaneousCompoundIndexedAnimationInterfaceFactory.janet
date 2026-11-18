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
# package org.allbinary.animation.compound

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ./CompoundAnimationInterfaceFactory :as CompoundAnimationInterfaceFactory)
(defn- SimultaneousCompoundIndexedAnimation/jnew_2 [& args] (JR/call jfile "./SimultaneousCompoundIndexedAnimation" "jnew_2" args))

# Java class SimultaneousCompoundIndexedAnimationInterfaceFactory
(var jproto nil)
(var jnew_2 nil)
(var jm_createArray nil)
(var jm_createAnimation nil)

    
(set jnew_2 (fn jnew_2 [_basicAnimationInterfaceFactoryInterfaceArray _animationBehaviorFactory]
    (var this (table/setproto @{:jclass "SimultaneousCompoundIndexedAnimationInterfaceFactory"} jproto))
        (JR/superInit this (CompoundAnimationInterfaceFactory/jnew_2 _basicAnimationInterfaceFactoryInterfaceArray _animationBehaviorFactory))
    this))
    
(set jm_createArray (fn jm_createArray [this _size]
    (label jreturn
        (return jreturn (array/new-filled _size nil)))))
    
(set jm_createAnimation (fn jm_createAnimation [this _animationArray]
    (label jreturn
        (return jreturn (SimultaneousCompoundIndexedAnimation/jnew_2 _animationArray (:jm_getOrCreateInstance (this :f_animationBehaviorFactory)))))))

(set jproto (table/setproto @{:jm_createArray jm_createArray :jm_createAnimation jm_createAnimation} CompoundAnimationInterfaceFactory/jproto))


