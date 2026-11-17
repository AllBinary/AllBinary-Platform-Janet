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
# package org.allbinary.math

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))
(defn- AngleIncrementInfoFactory/jm_getInstance [& args] (JR/call jfile "./AngleIncrementInfoFactory" "jm_getInstance" args))
(defn- FrameUtil/jm_getInstance [& args] (JR/call jfile "./FrameUtil" "jm_getInstance" args))

# Java class AngleInfo
(var jproto nil)
(var jcell_ANGLE :jnone)
(var jstatic_ANGLE nil)
(var jnew_1 nil)
(var jm_getInstance nil)
(var jm_adjustAngle nil)
(var jm_getAngle nil)
(var jm_setAngle nil)
(var jm_getAngleIncrementInfo nil)
(var jm_toString nil)

(set jstatic_ANGLE (fn jstatic_ANGLE []
  (when (= jcell_ANGLE :jnone) (set jcell_ANGLE "Angle: "))
  jcell_ANGLE))

    
(set jm_getInstance (fn jm_getInstance [_angleIncrement]
    (label jreturn
        (return jreturn (jnew_1 (:jm_getAt (AngleIncrementInfoFactory/jm_getInstance) _angleIncrement))))))
    
(set jnew_1 (fn jnew_1 [_angleIncrementInfo]
    (var this (table/setproto @{:jclass "AngleInfo" :f_angleIncrementInfo nil :f_angle 0 :f_frameUtil nil} jproto))
    
    (put this :f_angle 0)
    (put this :f_frameUtil (FrameUtil/jm_getInstance))
        (set (this :f_angleIncrementInfo) _angleIncrementInfo)
    this))
    
(set jm_adjustAngle (fn jm_adjustAngle [this _frame]
        (var _newAngle (JR/i32 (- (JR/i32 (* (:jm_getAngleIncrement (this :f_angleIncrementInfo)) _frame)) 90)))
        (:jm_setAngle this (JR/i16 (:jm_adjustAngleToFrameAngle (this :f_frameUtil) _newAngle)))))
    
(set jm_getAngle (fn jm_getAngle [this]
    (label jreturn
        (return jreturn (this :f_angle)))))
    
(set jm_setAngle (fn jm_setAngle [this _angle]
        (set (this :f_angle) _angle)))
    
(set jm_getAngleIncrementInfo (fn jm_getAngleIncrementInfo [this]
    (label jreturn
        (return jreturn (this :f_angleIncrementInfo)))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (var _stringBuffer (StringMaker/jnew_0))
        (:jm_append _stringBuffer (jstatic_ANGLE))
        (:jm_appendshort _stringBuffer (this :f_angle))
        (:jm_append _stringBuffer ((CommonSeps/jm_getInstance) :f_SPACE))
        (:jm_append _stringBuffer (:jm_toString_1 (StringUtil/jm_getInstance) (:jm_getAngleIncrementInfo this)))
        (return jreturn (:jm_toString _stringBuffer)))))

(set jproto @{:jm_adjustAngle jm_adjustAngle :jm_getAngle jm_getAngle :jm_setAngle jm_setAngle :jm_getAngleIncrementInfo jm_getAngleIncrementInfo :jm_toString jm_toString})


