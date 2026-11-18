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
(defn- GameTickTimeDelayHelperFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/time/GameTickTimeDelayHelperFactory" "jm_getInstance" args))
(defn- TimeDelayHelper/jnew_1 [& args] (JR/call jfile "../../../../org/allbinary/time/TimeDelayHelper" "jnew_1" args))
(import ./BasicConstantVelocityMovement :as BasicConstantVelocityMovement)

# Java class DelayedConstantVelocityMovement
(var jproto nil)
(var jnew_2 nil)
(var jm_init nil)
(var jm_process nil)

    
(set jnew_2 (fn jnew_2 [_basicDecimal _velocityProperties]
    (var this (table/setproto @{:jclass "DelayedConstantVelocityMovement" :f_timeDelayHelper nil} jproto))
    (put this :f_timeDelayHelper (TimeDelayHelper/jnew_1 60))
        (JR/superInit this (BasicConstantVelocityMovement/jnew_2 _basicDecimal _velocityProperties))
    this))
    
(set jm_init (fn jm_init [this _speedBasicDecimal _angle _otherAngle]
    nil))
    
(set jm_process (fn jm_process [this _layer]
        (if (:jm_isTime (this :f_timeDelayHelper) ((GameTickTimeDelayHelperFactory/jm_getInstance) :f_startTime))
            (do
            ((get BasicConstantVelocityMovement/jproto :jm_process) this _layer)))))

(set jproto (table/setproto @{:jm_init jm_init :jm_process jm_process} BasicConstantVelocityMovement/jproto))


