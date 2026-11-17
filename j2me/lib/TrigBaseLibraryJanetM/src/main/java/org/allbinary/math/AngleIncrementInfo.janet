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
(defn- SmallIntegerSingletonFactory/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(import ../../../java/lang/Integer :as Integer)
(defn- AngleFactory/jm_getInstance [& args] (JR/call jfile "./AngleFactory" "jm_getInstance" args))
(defn- FrameUtil/jm_getInstance [& args] (JR/call jfile "./FrameUtil" "jm_getInstance" args))

# Java class AngleIncrementInfo
(var jproto nil)
(var jcell_INCREMENT :jnone)
(var jstatic_INCREMENT nil)
(var jnew_1 nil)
(var jm_getFrameAngle nil)
(var jm_getAngleIncrement nil)
(var jm_toString nil)
(var jm_getClosestGeneralDirection nil)

(set jstatic_INCREMENT (fn jstatic_INCREMENT []
  (when (= jcell_INCREMENT :jnone) (set jcell_INCREMENT "Inc: "))
  jcell_INCREMENT))

    
(set jnew_1 (fn jnew_1 [_angleIncrement]
    (var this (table/setproto @{:jclass "AngleIncrementInfo" :f_angleIncrement 0 :f_DOWN_FRAME nil :f_UP_FRAME nil :f_LEFT_FRAME nil :f_RIGHT_FRAME nil :f_frameUtil nil} jproto))
    
    
    
    
    
    (put this :f_frameUtil (FrameUtil/jm_getInstance))
        (set (this :f_angleIncrement) _angleIncrement)
        (var _angleFactory (AngleFactory/jm_getInstance))
        (var _smallIntegerSingletonFactory (SmallIntegerSingletonFactory/jm_getInstance))
        (set (this :f_DOWN_FRAME) (:jm_getAt _smallIntegerSingletonFactory (JR/idiv (JR/className (_angleFactory :f_DOWN)) (this :f_angleIncrement))))
        (set (this :f_UP_FRAME) (:jm_getAt _smallIntegerSingletonFactory (JR/className (_angleFactory :f_UP))))
        (set (this :f_LEFT_FRAME) (:jm_getAt _smallIntegerSingletonFactory (JR/idiv (JR/className (_angleFactory :f_LEFT)) (this :f_angleIncrement))))
        (set (this :f_RIGHT_FRAME) (:jm_getAt _smallIntegerSingletonFactory (JR/idiv (JR/className (_angleFactory :f_RIGHT)) (this :f_angleIncrement))))
    this))
    
(set jm_getFrameAngle (fn jm_getFrameAngle [this _frame]
    (label jreturn
        (return jreturn (:jm_getFrameAngle (this :f_frameUtil) _frame (this :f_angleIncrement))))))
    
(set jm_getAngleIncrement (fn jm_getAngleIncrement [this]
    (label jreturn
        (return jreturn (this :f_angleIncrement)))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (return jreturn (:jm_toString (:jm_appendshort (:jm_append (StringMaker/jnew_0) (jstatic_INCREMENT)) (this :f_angleIncrement)))))))
    
(set jm_getClosestGeneralDirection (fn jm_getClosestGeneralDirection [this _angle]
    (label jreturn
        (var _closestDirection (:jm_getAt (SmallIntegerSingletonFactory/jm_getInstance) 360))
        (if (< (JR/i32 (- (:jm_intValue (this :f_UP_FRAME)) _angle)) (JR/i32 (- (:jm_intValue _closestDirection) _angle)))
            (do
            (set _closestDirection (this :f_UP_FRAME))))
        (if (< (JR/i32 (- (:jm_intValue (this :f_DOWN_FRAME)) _angle)) (JR/i32 (- (:jm_intValue _closestDirection) _angle)))
            (do
            (set _closestDirection (this :f_DOWN_FRAME))))
        (if (< (JR/i32 (- (:jm_intValue (this :f_LEFT_FRAME)) _angle)) (JR/i32 (- (:jm_intValue _closestDirection) _angle)))
            (do
            (set _closestDirection (this :f_LEFT_FRAME))))
        (if (< (JR/i32 (- (:jm_intValue (this :f_RIGHT_FRAME)) _angle)) (JR/i32 (- (:jm_intValue _closestDirection) _angle)))
            (do
            (set _closestDirection (this :f_RIGHT_FRAME))))
        (return jreturn (:jm_intValue _closestDirection)))))

(set jproto @{:jm_getFrameAngle jm_getFrameAngle :jm_getAngleIncrement jm_getAngleIncrement :jm_toString jm_toString :jm_getClosestGeneralDirection jm_getClosestGeneralDirection})


