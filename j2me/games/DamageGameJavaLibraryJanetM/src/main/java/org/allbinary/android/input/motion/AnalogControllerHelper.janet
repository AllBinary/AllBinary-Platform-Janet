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
# package org.allbinary.android.input.motion

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- TimeDelayHelper/jnew_1 [& args] (JR/call jfile "../../../../../org/allbinary/time/TimeDelayHelper" "jnew_1" args))
(defn- AnalogControllerConfigurationFactory/jm_getInstance [& args] (JR/call jfile "./AnalogControllerConfigurationFactory" "jm_getInstance" args))

# Java class AnalogControllerHelper
(var jproto nil)
(var jnew_1 nil)
(var jm_right nil)
(var jm_left nil)
(var jm_up nil)
(var jm_down nil)

    
(set jnew_1 (fn jnew_1 [_reduceTimeFactor]
    (var this (table/setproto @{:jclass "AnalogControllerHelper" :f_reduceTimeFactor 0 :f_SCALE_VALUE 0 :f_rightTimeElapsedHelper nil :f_leftTimeElapsedHelper nil :f_downTimeElapsedHelper nil :f_upTimeElapsedHelper nil} jproto))
    
    (put this :f_SCALE_VALUE ((AnalogControllerConfigurationFactory/jm_getInstance) :f_SCALE_VALUE))
    (put this :f_rightTimeElapsedHelper (TimeDelayHelper/jnew_1 0))
    (put this :f_leftTimeElapsedHelper (TimeDelayHelper/jnew_1 0))
    (put this :f_downTimeElapsedHelper (TimeDelayHelper/jnew_1 0))
    (put this :f_upTimeElapsedHelper (TimeDelayHelper/jnew_1 0))
        (set (this :f_reduceTimeFactor) _reduceTimeFactor)
    this))
    
(set jm_right (fn jm_right [this _collidableDestroyableDamageableLayer _xAnalogValue]
        (set ((this :f_rightTimeElapsedHelper) :f_delay) (brshift (JR/i32 (- (this :f_SCALE_VALUE) _xAnalogValue)) (this :f_reduceTimeFactor)))
        (if (:jm_isTimeTNT (this :f_rightTimeElapsedHelper))
            (do
            (:jm_right _collidableDestroyableDamageableLayer)))))
    
(set jm_left (fn jm_left [this _collidableDestroyableDamageableLayer _xAnalogValue]
        (set ((this :f_leftTimeElapsedHelper) :f_delay) (brshift (JR/i32 (+ (this :f_SCALE_VALUE) _xAnalogValue)) (this :f_reduceTimeFactor)))
        (if (:jm_isTimeTNT (this :f_leftTimeElapsedHelper))
            (do
            (:jm_left _collidableDestroyableDamageableLayer)))))
    
(set jm_up (fn jm_up [this _collidableDestroyableDamageableLayer _xAnalogValue]
        (set ((this :f_upTimeElapsedHelper) :f_delay) (brshift (JR/i32 (- (this :f_SCALE_VALUE) _xAnalogValue)) (this :f_reduceTimeFactor)))
        (if (:jm_isTimeTNT (this :f_upTimeElapsedHelper))
            (do
            (:jm_up _collidableDestroyableDamageableLayer)))))
    
(set jm_down (fn jm_down [this _collidableDestroyableDamageableLayer _xAnalogValue]
        (set ((this :f_downTimeElapsedHelper) :f_delay) (brshift (JR/i32 (+ (this :f_SCALE_VALUE) _xAnalogValue)) (this :f_reduceTimeFactor)))
        (if (:jm_isTimeTNT (this :f_downTimeElapsedHelper))
            (do
            (:jm_down _collidableDestroyableDamageableLayer)))))

(set jproto @{:jm_right jm_right :jm_left jm_left :jm_up jm_up :jm_down jm_down})


