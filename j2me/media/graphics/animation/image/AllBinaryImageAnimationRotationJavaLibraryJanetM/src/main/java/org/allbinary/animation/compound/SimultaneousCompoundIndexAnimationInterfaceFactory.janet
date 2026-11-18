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
(defn- SimultaneousCompoundIndexAnimation/jnew_2 [& args] (JR/call jfile "./SimultaneousCompoundIndexAnimation" "jnew_2" args))

# Java class SimultaneousCompoundIndexAnimationInterfaceFactory
(var jproto nil)
(var jnew_2 nil)
(var jm_getInstance nil)
(var jm_getOrCreate nil)
(var jm_getBasicAnimationInterfaceFactoryInterfaceArray nil)
(var jm_setInitialScale nil)

    
(set jnew_2 (fn jnew_2 [_basicAnimationInterfaceFactoryInterfaceArray _animationBehaviorFactory]
    (var this (table/setproto @{:jclass "SimultaneousCompoundIndexAnimationInterfaceFactory" :f_basicAnimationInterfaceFactoryInterfaceArray nil :f_animationBehaviorFactory nil} jproto))
    
    
        (set (this :f_basicAnimationInterfaceFactoryInterfaceArray) _basicAnimationInterfaceFactoryInterfaceArray)
        (set (this :f_animationBehaviorFactory) _animationBehaviorFactory)
    this))
    
(set jm_getInstance (fn jm_getInstance [this _instanceId]
    (label jreturn
        (var _size (length (this :f_basicAnimationInterfaceFactoryInterfaceArray)))
        (var _animationInterfaceArray (array/new-filled _size nil))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set (_animationInterfaceArray _index) (JR/className ((this :f_basicAnimationInterfaceFactoryInterfaceArray) _index))))
                (do (set _index (JR/i32 (+ _index 1))))))
        (return jreturn (:jm_getOrCreate this _animationInterfaceArray)))))
    
(set jm_getOrCreate (fn jm_getOrCreate [this _animationInterfaceArray]
    (label jreturn
        (return jreturn (SimultaneousCompoundIndexAnimation/jnew_2 _animationInterfaceArray (:jm_getOrCreateInstance (this :f_animationBehaviorFactory)))))))
    
(set jm_getBasicAnimationInterfaceFactoryInterfaceArray (fn jm_getBasicAnimationInterfaceFactoryInterfaceArray [this]
    (label jreturn
        (return jreturn (this :f_basicAnimationInterfaceFactoryInterfaceArray)))))
    
(set jm_setInitialScale (fn jm_setInitialScale [this _scaleProperties]
    nil))

(set jproto @{:jm_getInstance jm_getInstance :jm_getOrCreate jm_getOrCreate :jm_getBasicAnimationInterfaceFactoryInterfaceArray jm_getBasicAnimationInterfaceFactoryInterfaceArray :jm_setInitialScale jm_setInitialScale})


