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
(defn- GameConfigurationCentral/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/game/configuration/GameConfigurationCentral" "jm_getInstance" args))
(defn- AngleFactory/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/math/AngleFactory" "jm_getInstance" args))
(defn- AngleInfo/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/math/AngleInfo" "jm_getInstance" args))
(defn- NullRotationAnimation/jm_createTotalAngle [& args] (JR/call jfile "./NullRotationAnimation" "jm_createTotalAngle" args))
(defn- AnimationBehavior/jm_getInstance [& args] (JR/call jfile "./AnimationBehavior" "jm_getInstance" args))

# Java class RotationAnimationFactory
(var jproto nil)
(var jnew_2 nil)
(var jm_createFactory nil)
(var jm_getInstance nil)
(var jm_getInstanceAnimation nil)
(var jm_setInitialScale nil)

    
(set jm_createFactory (fn jm_createFactory []
    (label jreturn
        (var _totalAngle ((AngleFactory/jm_getInstance) :f_TOTAL_ANGLE))
        (return jreturn (jnew_2 _totalAngle (JR/i16 (JR/idiv _totalAngle (:jm_getGameControlFidelity (GameConfigurationCentral/jm_getInstance)))))))))
    
(set jnew_2 (fn jnew_2 [_totalAngle _angleIncrement]
    (var this (table/setproto @{:jclass "RotationAnimationFactory" :f_totalAngle 0 :f_angleIncrement 0} jproto))
    
    
        (set (this :f_totalAngle) _totalAngle)
        (set (this :f_angleIncrement) _angleIncrement)
    this))
    
(set jm_getInstance (fn jm_getInstance [this _instanceId]
    (label jreturn
        (return jreturn (NullRotationAnimation/jm_createTotalAngle (AngleInfo/jm_getInstance (this :f_angleIncrement)) (this :f_totalAngle) (AnimationBehavior/jm_getInstance))))))
    
(set jm_getInstanceAnimation (fn jm_getInstanceAnimation [this _animationInterface]
    (label jreturn
        (return jreturn (NullRotationAnimation/jm_createTotalAngle (AngleInfo/jm_getInstance (this :f_angleIncrement)) (this :f_totalAngle) (AnimationBehavior/jm_getInstance))))))
    
(set jm_setInitialScale (fn jm_setInitialScale [this _scaleProperties]
    nil))

(set jproto @{:jm_getInstance jm_getInstance :jm_getInstanceAnimation jm_getInstanceAnimation :jm_setInitialScale jm_setInitialScale})


