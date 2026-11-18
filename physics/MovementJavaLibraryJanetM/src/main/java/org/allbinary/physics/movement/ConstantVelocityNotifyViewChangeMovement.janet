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
(defn- AxisMathVectorUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/math/vector/AxisMathVectorUtil" "jm_getInstance" args))
(defn- AngleFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/math/AngleFactory" "jm_getInstance" args))
(import ./Movement :as Movement)

# Java class ConstantVelocityNotifyViewChangeMovement
(var jproto nil)
(var jnew_0 nil)
(var jm_init nil)
(var jm_moveOutsideRadius nil)
(var jm_process nil)
(var jm_stop nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ConstantVelocityNotifyViewChangeMovement" :f_basicVelocityProperties nil :f_speedBasicDecimal nil :f_axisMathVectorUtil nil} jproto))
    
    
    (put this :f_axisMathVectorUtil (AxisMathVectorUtil/jm_getInstance))
    (JR/superInit this (Movement/jnew_0))
        (set (this :f_speedBasicDecimal) (BasicDecimal/jstatic_ZERO_BIGDECIMAL))
        (set (this :f_basicVelocityProperties) (BasicVelocityProperties/jnew_0))
    this))
    
(set jm_init (fn jm_init [this _speedBasicDecimal _angle _otherAngle]
        (set (this :f_speedBasicDecimal) _speedBasicDecimal)
        (var _angleFactory (AngleFactory/jm_getInstance))
        (:jm_setVelocityWithBigDecimal (this :f_basicVelocityProperties) _speedBasicDecimal (:jm_getAt _angleFactory _angle) (:jm_getAt _angleFactory _otherAngle))))
    
(set jm_moveOutsideRadius (fn jm_moveOutsideRadius [this _layer _radius _angle _otherAngle]
        (var _scaleFactorValue (:jm_getScaledFactorValue (this :f_speedBasicDecimal)))
        (var _xVector (JR/idiv (:jm_calculateX (this :f_axisMathVectorUtil) _radius _angle) _scaleFactorValue))
        (var _yVector (JR/idiv (:jm_calculateY (this :f_axisMathVectorUtil) _radius _angle) _scaleFactorValue))
        (var _zVector (JR/idiv (:jm_calculateZ (this :f_axisMathVectorUtil) _radius _otherAngle) _scaleFactorValue))
        (:jm_moveDXYZ _layer _xVector _yVector _zVector)))
    
(set jm_process (fn jm_process [this _layer]
        (var _x (JR/className (:jm_getVelocityXBasicDecimalP (this :f_basicVelocityProperties))))
        (var _y (JR/className (:jm_getVelocityYBasicDecimalP (this :f_basicVelocityProperties))))
        (var _z (JR/className (:jm_getVelocityZBasicDecimalP (this :f_basicVelocityProperties))))
        (:jm_moveDXYZ _layer _x _y _z)
        (if (or (or (not= _x 0) (not= _y 0)) (not= _z 0))
            (do
            (:jm_onViewPositionChangeEvent _layer)))))
    
(set jm_stop (fn jm_stop [this]
        (:jm_zero (this :f_basicVelocityProperties))))

(set jproto (table/setproto @{:jm_init jm_init :jm_moveOutsideRadius jm_moveOutsideRadius :jm_process jm_process :jm_stop jm_stop} Movement/jproto))


