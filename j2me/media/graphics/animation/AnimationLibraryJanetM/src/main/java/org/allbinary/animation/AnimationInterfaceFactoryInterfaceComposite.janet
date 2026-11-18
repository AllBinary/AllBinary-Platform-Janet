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
# package org.allbinary.animation

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- NullAnimationFactory/jm_getFactoryInstance [& args] (JR/call jfile "./NullAnimationFactory" "jm_getFactoryInstance" args))

# Java class AnimationInterfaceFactoryInterfaceComposite
(var jproto nil)
(var jnew_1 nil)
(var jm_getInstance nil)
(var jm_getAnimationInterfaceFactoryInterfaceArray nil)
(var jm_setInitialScale nil)

    
(set jnew_1 (fn jnew_1 [_basicAnimationInterfaceFactoryInterfaceArray]
    (var this (table/setproto @{:jclass "AnimationInterfaceFactoryInterfaceComposite" :f_animationInterfaceFactoryInterfaceArray nil} jproto))
    
        (set (this :f_animationInterfaceFactoryInterfaceArray) _basicAnimationInterfaceFactoryInterfaceArray)
    this))
    
(set jm_getInstance (fn jm_getInstance [this _instanceId]
    (label jreturn
        (return jreturn (JR/className (NullAnimationFactory/jm_getFactoryInstance))))))
    
(set jm_getAnimationInterfaceFactoryInterfaceArray (fn jm_getAnimationInterfaceFactoryInterfaceArray [this]
    (label jreturn
        (return jreturn (this :f_animationInterfaceFactoryInterfaceArray)))))
    
(set jm_setInitialScale (fn jm_setInitialScale [this _scaleProperties]
    nil))

(set jproto @{:jm_getInstance jm_getInstance :jm_getAnimationInterfaceFactoryInterfaceArray jm_getAnimationInterfaceFactoryInterfaceArray :jm_setInitialScale jm_setInitialScale})


