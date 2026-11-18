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
(defn- BasicColorFactory/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/graphics/color/BasicColorFactory" "jm_getInstance" args))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- VectorRotationAnimation/jnew_3 [& args] (JR/call jfile "./VectorRotationAnimation" "jnew_3" args))

# Java class VectorRotationAnimationInterfaceFactory
(var jproto nil)
(var jnew_3 nil)
(var jm_getInstance nil)
(var jm_setBasicColorP nil)
(var jm_getBasicColorP nil)
(var jm_setInitialScale nil)

    
(set jnew_3 (fn jnew_3 [_currentPoints _basicColor _animationBehaviorFactory]
    (var this (table/setproto @{:jclass "VectorRotationAnimationInterfaceFactory" :f_currentPoints nil :f_basicColor nil :f_animationBehaviorFactory nil} jproto))
    (put this :f_currentPoints ((NullUtil/jm_getInstance) :f_NULL_INT_ARRAY_ARRAY_ARRAY))
    (put this :f_basicColor ((BasicColorFactory/jm_getInstance) :f_WHITE))
    
        (set (this :f_currentPoints) _currentPoints)
        (:jm_setBasicColorP this _basicColor)
        (set (this :f_animationBehaviorFactory) _animationBehaviorFactory)
    this))
    
(set jm_getInstance (fn jm_getInstance [this _instanceId]
    (label jreturn
        (return jreturn (VectorRotationAnimation/jnew_3 (this :f_currentPoints) (:jm_getBasicColorP this) (:jm_getOrCreateInstance (this :f_animationBehaviorFactory)))))))
    
(set jm_setBasicColorP (fn jm_setBasicColorP [this _basicColor]
        (set (this :f_basicColor) _basicColor)))
    
(set jm_getBasicColorP (fn jm_getBasicColorP [this]
    (label jreturn
        (return jreturn (this :f_basicColor)))))
    
(set jm_setInitialScale (fn jm_setInitialScale [this _scaleProperties]
    nil))

(set jproto @{:jm_getInstance jm_getInstance :jm_setBasicColorP jm_setBasicColorP :jm_getBasicColorP jm_getBasicColorP :jm_setInitialScale jm_setInitialScale})


