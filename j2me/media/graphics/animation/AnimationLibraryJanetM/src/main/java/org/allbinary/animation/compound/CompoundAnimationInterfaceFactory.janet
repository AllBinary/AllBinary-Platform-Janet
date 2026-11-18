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
(defn- NullAnimationFactory/jm_getFactoryInstance [& args] (JR/call jfile "../../../../org/allbinary/animation/NullAnimationFactory" "jm_getFactoryInstance" args))

# Java class CompoundAnimationInterfaceFactory
(var jproto nil)
(var jnew_2 nil)
(var jm_getInstance nil)
(var jm_createArray nil)
(var jm_createAnimation nil)
(var jm_getBasicAnimationInterfaceFactoryInterfaceArray nil)
(var jm_setInitialScale nil)

    
(set jnew_2 (fn jnew_2 [_basicAnimationInterfaceFactoryInterfaceArray _animationBehaviorFactory]
    (var this (table/setproto @{:jclass "CompoundAnimationInterfaceFactory" :f_basicAnimationInterfaceFactoryInterfaceArrayP nil :f_animationBehaviorFactory nil} jproto))
    
    
        (set (this :f_basicAnimationInterfaceFactoryInterfaceArrayP) _basicAnimationInterfaceFactoryInterfaceArray)
        (set (this :f_animationBehaviorFactory) _animationBehaviorFactory)
    this))
    
(set jm_getInstance (fn jm_getInstance [this _instanceId]
    (label jreturn
        (var _size (length (this :f_basicAnimationInterfaceFactoryInterfaceArrayP)))
        (var _animationInterfaceArray (:jm_createArray this _size))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set (_animationInterfaceArray _index) (JR/className ((this :f_basicAnimationInterfaceFactoryInterfaceArrayP) _index))))
                (do (set _index (JR/i32 (+ _index 1))))))
        (return jreturn (:jm_createAnimation this _animationInterfaceArray)))))
    
(set jm_createArray (fn jm_createArray [this _size]
    (label jreturn
        (return jreturn ((NullAnimationFactory/jm_getFactoryInstance) :f_EMPTY_ARRAY)))))
    
(set jm_createAnimation (fn jm_createAnimation [this _animationInterfaceArray]
    (label jreturn
        (return jreturn (JR/className (NullAnimationFactory/jm_getFactoryInstance))))))
    
(set jm_getBasicAnimationInterfaceFactoryInterfaceArray (fn jm_getBasicAnimationInterfaceFactoryInterfaceArray [this]
    (label jreturn
        (return jreturn (this :f_basicAnimationInterfaceFactoryInterfaceArrayP)))))
    
(set jm_setInitialScale (fn jm_setInitialScale [this _scaleProperties]
        (var _size (length (this :f_basicAnimationInterfaceFactoryInterfaceArrayP)))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (JR/className ((this :f_basicAnimationInterfaceFactoryInterfaceArrayP) _index)))
                (do (set _index (JR/i32 (+ _index 1))))))))

(set jproto @{:jm_getInstance jm_getInstance :jm_createArray jm_createArray :jm_createAnimation jm_createAnimation :jm_getBasicAnimationInterfaceFactoryInterfaceArray jm_getBasicAnimationInterfaceFactoryInterfaceArray :jm_setInitialScale jm_setInitialScale})


