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

# Java class SimpleGravityVelocityMovement
(var jproto nil)
(var jnew_1 nil)
(var jm_process nil)

    
(set jnew_1 (fn jnew_1 [_speedBasicDecimal]
    (var this (table/setproto @{:jclass "SimpleGravityVelocityMovement" :f_gravityUtil nil} jproto))
    (put this :f_gravityUtil (GravityUtil/jm_getInstance))
        (JR/superInit this (BasicConstantVelocityMovement/jnew_2 _speedBasicDecimal (VelocityProperties/jnew_2 (:jm_getUnscaled _speedBasicDecimal) (:jm_getUnscaled _speedBasicDecimal))))
    this))
    
(set jm_process (fn jm_process [this _layer]
        (:jm_process (this :f_gravityUtil) (:jm_getVelocityProperties this) ((this :f_gravityUtil) :f_GAME_GRAVITY_VELOCITY))
        ((get BasicConstantVelocityMovement/jproto :jm_process) this _layer)))

(set jproto (table/setproto @{:jm_process jm_process} BasicConstantVelocityMovement/jproto))


