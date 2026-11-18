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
(defn- BasicDecimal/jstatic_ZERO_BIGDECIMAL [& args] (JR/call jfile "../../../../org/allbinary/logic/math/BasicDecimal" "jstatic_ZERO_BIGDECIMAL" args))
(defn- AxisMathVectorUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/math/vector/AxisMathVectorUtil" "jm_getInstance" args))
(defn- AngleFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/math/AngleFactory" "jm_getInstance" args))
(import ./Movement :as Movement)

# Java class NoZBasicConstantVelocityMovement
(var jproto nil)
(var jnew_2 nil)
(var jm_init nil)
(var jm_moveOutsideRadius nil)
(var jm_process nil)
(var jm_toString nil)
(var jm_stop nil)
(var jm_getVelocityProperties nil)
(var jm_setVelocityProperties nil)
(var jm_setSpeedBasicDecimal nil)
(var jm_getSpeedBasicDecimal nil)

    
(set jnew_2 (fn jnew_2 [_basicDecimal _velocityProperties]
    (var this (table/setproto @{:jclass "NoZBasicConstantVelocityMovement" :f_velocityProperties nil :f_speedBasicDecimal nil :f_axisMathVectorUtil nil} jproto))
    
    (put this :f_speedBasicDecimal (BasicDecimal/jstatic_ZERO_BIGDECIMAL))
    (put this :f_axisMathVectorUtil (AxisMathVectorUtil/jm_getInstance))
    (JR/superInit this (Movement/jnew_0))
        (:jm_setSpeedBasicDecimal this _basicDecimal)
        (set (this :f_velocityProperties) _velocityProperties)
    this))
    
(set jm_init (fn jm_init [this _speedBasicDecimal _angle _otherAngle]
        (set (this :f_speedBasicDecimal) _speedBasicDecimal)
        (var _angleFactory (AngleFactory/jm_getInstance))
        (:jm_setVelocityWithBigDecimal (this :f_velocityProperties) _speedBasicDecimal (:jm_getAt _angleFactory _angle) (:jm_getAt _angleFactory _otherAngle))))
    
(set jm_moveOutsideRadius (fn jm_moveOutsideRadius [this _layer _radius _angle _otherAngle]
        (var _scaleFactorValue (:jm_getScaledFactorValue (this :f_speedBasicDecimal)))
        (var _xVector (JR/idiv (:jm_calculateX (this :f_axisMathVectorUtil) _radius _angle) _scaleFactorValue))
        (var _yVector (JR/idiv (:jm_calculateY (this :f_axisMathVectorUtil) _radius _angle) _scaleFactorValue))
        (:jm_moveDXYZ _layer _xVector _yVector 0)))
    
(set jm_process (fn jm_process [this _layer]
        (:jm_moveDXYZ _layer (JR/className (:jm_getVelocityXBasicDecimalP (this :f_velocityProperties))) (JR/className (:jm_getVelocityYBasicDecimalP (this :f_velocityProperties))) 0)))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (return jreturn (:jm_toString (this :f_velocityProperties))))))
    
(set jm_stop (fn jm_stop [this]
        (:jm_zero (this :f_velocityProperties))))
    
(set jm_getVelocityProperties (fn jm_getVelocityProperties [this]
    (label jreturn
        (return jreturn (this :f_velocityProperties)))))
    
(set jm_setVelocityProperties (fn jm_setVelocityProperties [this _velocityProperties]
        (set (this :f_velocityProperties) _velocityProperties)))
    
(set jm_setSpeedBasicDecimal (fn jm_setSpeedBasicDecimal [this _speedBasicDecimal]
        (set (this :f_speedBasicDecimal) _speedBasicDecimal)))
    
(set jm_getSpeedBasicDecimal (fn jm_getSpeedBasicDecimal [this]
    (label jreturn
        (return jreturn (this :f_speedBasicDecimal)))))

(set jproto (table/setproto @{:jm_init jm_init :jm_moveOutsideRadius jm_moveOutsideRadius :jm_process jm_process :jm_toString jm_toString :jm_stop jm_stop :jm_getVelocityProperties jm_getVelocityProperties :jm_setVelocityProperties jm_setVelocityProperties :jm_setSpeedBasicDecimal jm_setSpeedBasicDecimal :jm_getSpeedBasicDecimal jm_getSpeedBasicDecimal} Movement/jproto))


