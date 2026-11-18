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
(defn- VelocityProperties/jnew_2 [& args] (JR/call jfile "../../../../org/allbinary/game/physics/velocity/VelocityProperties" "jnew_2" args))
(import ./BasicConstantVelocityMovement :as BasicConstantVelocityMovement)

# Java class XYOscillateVelocityMovement
(var jproto nil)
(var jnew_3 nil)
(var jm_process nil)

    
(set jnew_3 (fn jnew_3 [_speedBasicDecimal _oscillateMin _oscillateMax]
    (var this (table/setproto @{:jclass "XYOscillateVelocityMovement" :f_oscillateMin 0 :f_oscillateMax 0 :f_oscillate 0 :f_oscillatePositive false} jproto))
    
    
    
    
        (JR/superInit this (BasicConstantVelocityMovement/jnew_2 _speedBasicDecimal (VelocityProperties/jnew_2 (:jm_getUnscaled _speedBasicDecimal) (:jm_getUnscaled _speedBasicDecimal))))
        (set (this :f_oscillateMin) _oscillateMin)
        (set (this :f_oscillateMax) _oscillateMax)
    this))
    
(set jm_process (fn jm_process [this _layer]
        ((get BasicConstantVelocityMovement/jproto :jm_process) this _layer)
        (if (< (this :f_oscillate) (this :f_oscillateMin))
            (do
            (set (this :f_oscillatePositive) true)
            (JR/className (JR/className (:jm_getVelocityProperties this))))
            (if (> (this :f_oscillate) (this :f_oscillateMax))
            (do
            (set (this :f_oscillatePositive) false)
            (JR/className (JR/className (:jm_getVelocityProperties this))))))
        (if (this :f_oscillatePositive)
            (do
            (set (this :f_oscillate) (JR/i32 (+ (this :f_oscillate) 1)))
            (JR/className (JR/className (:jm_getVelocityProperties this))))
            (do
            (set (this :f_oscillate) (JR/i32 (- (this :f_oscillate) 1)))
            (JR/className (JR/className (:jm_getVelocityProperties this)))))))

(set jproto (table/setproto @{:jm_process jm_process} BasicConstantVelocityMovement/jproto))


