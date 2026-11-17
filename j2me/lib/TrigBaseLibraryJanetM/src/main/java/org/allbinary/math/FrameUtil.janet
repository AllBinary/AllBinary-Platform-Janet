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
(defn- AngleFactory/jm_getInstance [& args] (JR/call jfile "./AngleFactory" "jm_getInstance" args))

# Java class FrameUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getFrameForAngle nil)
(var jm_getFrameAngle nil)
(var jm_adjustAngleToFrameAngle nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "FrameUtil"} jproto))
    this))
    
(set jm_getFrameForAngle (fn jm_getFrameForAngle [this _angle _angleIncrement]
    (label jreturn
        (return jreturn (JR/idiv (:jm_adjustAngleToFrameAngle this _angle) _angleIncrement)))))
    
(set jm_getFrameAngle (fn jm_getFrameAngle [this _frame _angleIncrement]
    (label jreturn
        (var _frameAngle (JR/i32 (- (JR/i32 (* _angleIncrement _frame)) 90)))
        (return jreturn (:jm_adjustAngleToFrameAngle this _frameAngle)))))
    
(set jm_adjustAngleToFrameAngle (fn jm_adjustAngleToFrameAngle [this _currentAngle]
    (var _currentAngle _currentAngle)
    (label jreturn
        (var _angleFactory (AngleFactory/jm_getInstance))
        (if (> _currentAngle 359)
            (do
            (set _currentAngle (JR/i32 (- _currentAngle (_angleFactory :f_TOTAL_ANGLE))))
            (do
                (while (> _currentAngle 359)
                    (do
                (set _currentAngle (JR/i32 (- _currentAngle (_angleFactory :f_TOTAL_ANGLE)))))))))
        (if (< _currentAngle 0)
            (do
            (set _currentAngle (JR/i32 (+ _currentAngle (_angleFactory :f_TOTAL_ANGLE))))
            (do
                (while (< _currentAngle 0)
                    (do
                (set _currentAngle (JR/i32 (+ _currentAngle (_angleFactory :f_TOTAL_ANGLE)))))))))
        (return jreturn _currentAngle))))

(set jproto @{:jm_getFrameForAngle jm_getFrameForAngle :jm_getFrameAngle jm_getFrameAngle :jm_adjustAngleToFrameAngle jm_adjustAngleToFrameAngle})


