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
(defn- BasicVelocityProperties/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/game/physics/velocity/BasicVelocityProperties" "jnew_0" args))
(defn- BasicDecimal/jstatic_ZERO_BIGDECIMAL [& args] (JR/call jfile "../../../../org/allbinary/logic/math/BasicDecimal" "jstatic_ZERO_BIGDECIMAL" args))
(import ./BasicConstantVelocityMovement :as BasicConstantVelocityMovement)

# Java class NoBasicConstantVelocityMovement
(var jproto nil)
(var jnew_0 nil)
(var jm_process nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "NoBasicConstantVelocityMovement"} jproto))
        (JR/superInit this (BasicConstantVelocityMovement/jnew_2 (BasicDecimal/jstatic_ZERO_BIGDECIMAL) (BasicVelocityProperties/jnew_0)))
    this))
    
(set jm_process (fn jm_process [this _layer]
    nil))

(set jproto (table/setproto @{:jm_process jm_process} BasicConstantVelocityMovement/jproto))


