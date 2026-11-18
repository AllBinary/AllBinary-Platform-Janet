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
(defn- AnimationBehaviorFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/animation/AnimationBehaviorFactory" "jm_getInstance" args))
(defn- ForcedLogUtil/jm_log [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/ForcedLogUtil" "jm_log" args))
(import ./CompoundAnimationInterfaceFactory :as CompoundAnimationInterfaceFactory)
(defn- CompoundRotationAnimation/jnew_2 [& args] (JR/call jfile "./CompoundRotationAnimation" "jnew_2" args))

# Java class CompoundRotationAnimationInterfaceFactory
(var jproto nil)
(var jnew_2 nil)
(var jm_createArray nil)
(var jm_createAnimation nil)

    
(set jnew_2 (fn jnew_2 [_basicAnimationInterfaceFactoryInterfaceArray _animationBehaviorFactory]
    (var this (table/setproto @{:jclass "CompoundRotationAnimationInterfaceFactory"} jproto))
        (JR/superInit this (CompoundAnimationInterfaceFactory/jnew_2 _basicAnimationInterfaceFactoryInterfaceArray _animationBehaviorFactory))
        (if (= _animationBehaviorFactory (AnimationBehaviorFactory/jm_getInstance))
            (do
            (ForcedLogUtil/jm_log "Using default AnimationBehaviorFactory with IndexedAnimationFactory" this)))
    this))
    
(set jm_createArray (fn jm_createArray [this _size]
    (label jreturn
        (return jreturn (array/new-filled _size nil)))))
    
(set jm_createAnimation (fn jm_createAnimation [this _animationInterfaceArray]
    (label jreturn
        (return jreturn (CompoundRotationAnimation/jnew_2 _animationInterfaceArray (:jm_getOrCreateInstance (this :f_animationBehaviorFactory)))))))

(set jproto (table/setproto @{:jm_createArray jm_createArray :jm_createAnimation jm_createAnimation} CompoundAnimationInterfaceFactory/jproto))


