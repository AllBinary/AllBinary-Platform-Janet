# Generated Code Do Not Modify
# package org.allbinary.physics.movement

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- MathUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/math/MathUtil" "jm_getInstance" args))
(defn- ScaleFactorFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/math/ScaleFactorFactory" "jm_getInstance" args))
(import ./BasicConstantVelocityMovement :as BasicConstantVelocityMovement)

# Java class PreciseConstantVelocityMovement
(var jproto nil)
(var jnew_2 nil)
(var jm_init nil)
(var jm_process nil)

    
(set jnew_2 (fn jnew_2 [_basicDecimal _velocityProperties]
    (var this (table/setproto @{:jclass "PreciseConstantVelocityMovement" :f_accumulatedX 0 :f_accumulatedY 0 :f_accumulatedZ 0 :f_factorValue 0} jproto))
    
    
    
    (put this :f_factorValue ((ScaleFactorFactory/jm_getInstance) :f_DEFAULT_SCALE_VALUE))
        (JR/superInit this (BasicConstantVelocityMovement/jnew_2 _basicDecimal _velocityProperties))
    this))
    
(set jm_init (fn jm_init [this _speedBasicDecimal _angle _otherAngle]
    nil))
    
(set jm_process (fn jm_process [this _layer]
        (var _mathUtil (MathUtil/jm_getInstance))
        (var _velocityProperties (:jm_getVelocityProperties this))
        (set (this :f_accumulatedX) (JR/i32 (+ (this :f_accumulatedX) (JR/className (:jm_getVelocityXBasicDecimalP _velocityProperties)))))
        (set (this :f_accumulatedY) (JR/i32 (+ (this :f_accumulatedY) (JR/className (:jm_getVelocityYBasicDecimalP _velocityProperties)))))
        (set (this :f_accumulatedZ) (JR/i32 (+ (this :f_accumulatedZ) (JR/className (:jm_getVelocityZBasicDecimalP _velocityProperties)))))
        (:jm_moveDXYZ _layer (JR/idiv (this :f_accumulatedX) (this :f_factorValue)) (JR/idiv (this :f_accumulatedY) (this :f_factorValue)) (JR/idiv (this :f_accumulatedZ) (this :f_factorValue)))
        (if (> (:jm_abs _mathUtil (this :f_accumulatedX)) (this :f_factorValue))
            (do
            (set (this :f_accumulatedX) 0)))
        (if (> (:jm_abs _mathUtil (this :f_accumulatedY)) (this :f_factorValue))
            (do
            (set (this :f_accumulatedY) 0)))
        (if (> (:jm_abs _mathUtil (this :f_accumulatedZ)) (this :f_factorValue))
            (do
            (set (this :f_accumulatedZ) 0)))))

(set jproto (table/setproto @{:jm_init jm_init :jm_process jm_process} BasicConstantVelocityMovement/jproto))


