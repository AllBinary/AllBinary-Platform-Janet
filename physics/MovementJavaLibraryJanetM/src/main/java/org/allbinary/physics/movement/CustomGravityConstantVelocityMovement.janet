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
# package org.allbinary.physics.movement

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- GravityUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/physics/acceleration/GravityUtil" "jm_getInstance" args))
(defn- VelocityProperties/jnew_2 [& args] (JR/call jfile "../../../../org/allbinary/game/physics/velocity/VelocityProperties" "jnew_2" args))
(import ./BasicConstantVelocityMovement :as BasicConstantVelocityMovement)

# Java class CustomGravityConstantVelocityMovement
(var jproto nil)
(var jnew_2 nil)
(var jm_process nil)

    
(set jnew_2 (fn jnew_2 [_speedBasicDecimal _customGravity]
    (var this (table/setproto @{:jclass "CustomGravityConstantVelocityMovement" :f_customGravity 0 :f_gravityUtil nil} jproto))
    
    (put this :f_gravityUtil (GravityUtil/jm_getInstance))
        (JR/superInit this (BasicConstantVelocityMovement/jnew_2 _speedBasicDecimal (VelocityProperties/jnew_2 (:jm_getUnscaled _speedBasicDecimal) (:jm_getUnscaled _speedBasicDecimal))))
        (set (this :f_customGravity) _customGravity)
    this))
    
(set jm_process (fn jm_process [this _layer]
        ((get BasicConstantVelocityMovement/jproto :jm_process) this _layer)
        (:jm_process (this :f_gravityUtil) (:jm_getVelocityProperties this) (this :f_customGravity))
        (var _velocityProperties (:jm_getVelocityProperties this))
        (:jm_limitMaxYForwardVelocity _velocityProperties)))

(set jproto (table/setproto @{:jm_process jm_process} BasicConstantVelocityMovement/jproto))


