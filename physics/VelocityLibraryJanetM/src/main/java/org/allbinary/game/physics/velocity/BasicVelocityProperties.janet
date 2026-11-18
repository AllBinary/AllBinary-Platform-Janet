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
# package org.allbinary.game.physics.velocity

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- DirectionUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/direction/DirectionUtil" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- BasicDecimal/jnew_1 [& args] (JR/call jfile "../../../../../org/allbinary/logic/math/BasicDecimal" "jnew_1" args))
(defn- AxisMathVectorUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/math/vector/AxisMathVectorUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- PositionStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/math/PositionStrings" "jm_getInstance" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))

# Java class BasicVelocityProperties
(var jproto nil)
(var jnew_0 nil)
(var jm_zero nil)
(var jm_getVelocityXBasicDecimalP nil)
(var jm_getVelocityYBasicDecimalP nil)
(var jm_getVelocityZBasicDecimalP nil)
(var jm_setVelocityWithBigDecimalAndDirection nil)
(var jm_setVelocityWithDirection nil)
(var jm_addVelocityWithBigDecimalAndDirection nil)
(var jm_addVelocityWithDirection nil)
(var jm_setVelocityWithBigDecimal nil)
(var jm_addVelocityWithBigDecimal nil)
(var jm_setVelocity nil)
(var jm_addVelocity nil)
(var jm_setVelocityi nil)
(var jm_addVelocityi nil)
(var jm_toString nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "BasicVelocityProperties" :f_logUtil nil :f_velocityXBasicDecimal nil :f_velocityYBasicDecimal nil :f_velocityZBasicDecimal nil :f_axisMathVectorUtil nil :f_directionUtil nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    
    
    
    (put this :f_axisMathVectorUtil (AxisMathVectorUtil/jm_getInstance))
    (put this :f_directionUtil (DirectionUtil/jm_getInstance))
        (set (this :f_velocityXBasicDecimal) (BasicDecimal/jnew_1 0))
        (set (this :f_velocityYBasicDecimal) (BasicDecimal/jnew_1 0))
        (set (this :f_velocityZBasicDecimal) (BasicDecimal/jnew_1 0))
    this))
    
(set jm_zero (fn jm_zero [this]
        (:jm_setint (this :f_velocityXBasicDecimal) 0)
        (:jm_setint (this :f_velocityYBasicDecimal) 0)
        (:jm_setint (this :f_velocityZBasicDecimal) 0)))
    
(set jm_getVelocityXBasicDecimalP (fn jm_getVelocityXBasicDecimalP [this]
    (label jreturn
        (return jreturn (this :f_velocityXBasicDecimal)))))
    
(set jm_getVelocityYBasicDecimalP (fn jm_getVelocityYBasicDecimalP [this]
    (label jreturn
        (return jreturn (this :f_velocityYBasicDecimal)))))
    
(set jm_getVelocityZBasicDecimalP (fn jm_getVelocityZBasicDecimalP [this]
    (label jreturn
        (return jreturn (this :f_velocityZBasicDecimal)))))
    
(set jm_setVelocityWithBigDecimalAndDirection (fn jm_setVelocityWithBigDecimalAndDirection [this _magnitudeBasicDecimal _direction _otherDirection]
        (var _angle (:jm_getAngle (this :f_directionUtil) _direction))
        (var _otherAngle (:jm_getAngle (this :f_directionUtil) _otherDirection))
        (:jm_setVelocityWithBigDecimal this _magnitudeBasicDecimal _angle _otherAngle)))
    
(set jm_setVelocityWithDirection (fn jm_setVelocityWithDirection [this _magnitude _direction _otherDirection]
        (var _angle (:jm_getAngle (this :f_directionUtil) _direction))
        (var _otherAngle (:jm_getAngle (this :f_directionUtil) _otherDirection))
        (:jm_setVelocity this _magnitude _angle _otherAngle)))
    
(set jm_addVelocityWithBigDecimalAndDirection (fn jm_addVelocityWithBigDecimalAndDirection [this _magnitudeBasicDecimal _direction _otherDirection]
        (var _angle (:jm_getAngle (this :f_directionUtil) _direction))
        (var _otherAngle (:jm_getAngle (this :f_directionUtil) _otherDirection))
        (:jm_addVelocityWithBigDecimal this _magnitudeBasicDecimal _angle _otherAngle)))
    
(set jm_addVelocityWithDirection (fn jm_addVelocityWithDirection [this _magnitude _direction _otherDirection]
        (var _angle (:jm_getAngle (this :f_directionUtil) _direction))
        (var _otherAngle (:jm_getAngle (this :f_directionUtil) _otherDirection))
        (:jm_addVelocity this _magnitude _angle _otherAngle)))
    
(set jm_setVelocityWithBigDecimal (fn jm_setVelocityWithBigDecimal [this _magnitudeBasicDecimal _angle _otherAngle]
        (var _magnitude (:jm_getUnscaled _magnitudeBasicDecimal))
        (:jm_setVelocity this _magnitude _angle _otherAngle)))
    
(set jm_addVelocityWithBigDecimal (fn jm_addVelocityWithBigDecimal [this _magnitudeBasicDecimal _angle _otherAngle]
        (var _magnitude (:jm_getUnscaled _magnitudeBasicDecimal))
        (:jm_addVelocity this _magnitude _angle _otherAngle)))
    
(set jm_setVelocity (fn jm_setVelocity [this _magnitude _angle _otherAngle]
        (:jm_setVelocityi this _magnitude (:jm_getValue _angle) (:jm_getValue _otherAngle))))
    
(set jm_addVelocity (fn jm_addVelocity [this _magnitude _angle _otherAngle]
        (:jm_addVelocityi this _magnitude (:jm_getValue _angle) (:jm_getValue _otherAngle))))
    
(set jm_setVelocityi (fn jm_setVelocityi [this _magnitude _angle _otherAngle]
        (var _xVector (JR/idiv (:jm_calculateX (this :f_axisMathVectorUtil) _magnitude _angle) (:jm_getScaledFactorValue (this :f_velocityXBasicDecimal))))
        (var _yVector (JR/idiv (:jm_calculateY (this :f_axisMathVectorUtil) _magnitude _angle) (:jm_getScaledFactorValue (this :f_velocityYBasicDecimal))))
        (var _zVector (JR/idiv (:jm_calculateZ (this :f_axisMathVectorUtil) _magnitude _otherAngle) (:jm_getScaledFactorValue (this :f_velocityZBasicDecimal))))
        (:jm_setlong (this :f_velocityXBasicDecimal) _xVector)
        (:jm_setlong (this :f_velocityYBasicDecimal) _yVector)
        (:jm_setlong (this :f_velocityZBasicDecimal) _zVector)))
    
(set jm_addVelocityi (fn jm_addVelocityi [this _magnitude _angle _otherAngle]
        (var _xVector (JR/idiv (:jm_calculateX (this :f_axisMathVectorUtil) _magnitude _angle) (:jm_getScaledFactorValue (this :f_velocityXBasicDecimal))))
        (var _yVector (JR/idiv (:jm_calculateY (this :f_axisMathVectorUtil) _magnitude _angle) (:jm_getScaledFactorValue (this :f_velocityYBasicDecimal))))
        (var _zVector (JR/idiv (:jm_calculateZ (this :f_axisMathVectorUtil) _magnitude _otherAngle) (:jm_getScaledFactorValue (this :f_velocityZBasicDecimal))))
        (:jm_addlong (this :f_velocityXBasicDecimal) _xVector)
        (:jm_addlong (this :f_velocityYBasicDecimal) _yVector)
        (:jm_addlong (this :f_velocityZBasicDecimal) _zVector)))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (var _commonSeps (CommonSeps/jm_getInstance))
        (var _positionStrings (PositionStrings/jm_getInstance))
        (var _stringBuffer (StringMaker/jnew_0))
        (var _stringUtil (StringUtil/jm_getInstance))
        (:jm_append _stringBuffer "Velocity ")
        (:jm_append _stringBuffer (_positionStrings :f_X_LABEL))
        (:jm_append _stringBuffer (:jm_toString_1 _stringUtil (this :f_velocityXBasicDecimal)))
        (:jm_append _stringBuffer (_commonSeps :f_SPACE))
        (:jm_append _stringBuffer (_positionStrings :f_Y_LABEL))
        (:jm_append _stringBuffer (:jm_toString_1 _stringUtil (this :f_velocityYBasicDecimal)))
        (:jm_append _stringBuffer (_commonSeps :f_SPACE))
        (:jm_append _stringBuffer (_positionStrings :f_Z_LABEL))
        (:jm_append _stringBuffer (:jm_toString_1 _stringUtil (this :f_velocityZBasicDecimal)))
        (return jreturn (:jm_toString _stringBuffer)))))

(set jproto @{:jm_zero jm_zero :jm_getVelocityXBasicDecimalP jm_getVelocityXBasicDecimalP :jm_getVelocityYBasicDecimalP jm_getVelocityYBasicDecimalP :jm_getVelocityZBasicDecimalP jm_getVelocityZBasicDecimalP :jm_setVelocityWithBigDecimalAndDirection jm_setVelocityWithBigDecimalAndDirection :jm_setVelocityWithDirection jm_setVelocityWithDirection :jm_addVelocityWithBigDecimalAndDirection jm_addVelocityWithBigDecimalAndDirection :jm_addVelocityWithDirection jm_addVelocityWithDirection :jm_setVelocityWithBigDecimal jm_setVelocityWithBigDecimal :jm_addVelocityWithBigDecimal jm_addVelocityWithBigDecimal :jm_setVelocity jm_setVelocity :jm_addVelocity jm_addVelocity :jm_setVelocityi jm_setVelocityi :jm_addVelocityi jm_addVelocityi :jm_toString jm_toString})


