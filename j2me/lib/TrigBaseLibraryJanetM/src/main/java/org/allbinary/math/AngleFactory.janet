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
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- CommonPhoneStrings/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonPhoneStrings" "jm_getInstance" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- Angle/jnew_1 [& args] (JR/call jfile "./Angle" "jnew_1" args))
(defn- NamedAngle/jnew_2 [& args] (JR/call jfile "./NamedAngle" "jnew_2" args))
(defn- FrameUtil/jm_getInstance [& args] (JR/call jfile "./FrameUtil" "jm_getInstance" args))

# Java class AngleFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getAt nil)
(var jm_getClosestDirection nil)
(var jm_getGeneralDirection nil)
(var jm_main nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "AngleFactory" :f_logUtil nil :f_TOTAL_ANGLE 0 :f_QUARTER_TOTAL_ANGLE 0 :f_angleArray nil :f_NEGATIVE_ONE 0 :f_NOT_ANGLE nil :f_DOWN nil :f_UP nil :f_LEFT nil :f_RIGHT nil :f_frameUtil nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_TOTAL_ANGLE 360)
    (put this :f_QUARTER_TOTAL_ANGLE 90)
    (put this :f_angleArray (array/new-filled (this :f_TOTAL_ANGLE) nil))
    (put this :f_NEGATIVE_ONE (JR/i16 (JR/i32 (- 1))))
    (put this :f_NOT_ANGLE (NamedAngle/jnew_2 (this :f_NEGATIVE_ONE) ((CommonStrings/jm_getInstance) :f_EMPTY)))
    
    
    
    
    (put this :f_frameUtil (FrameUtil/jm_getInstance))
        (var _commonPhoneStrings (CommonPhoneStrings/jm_getInstance))
        (var _total (JR/i16 (length (this :f_angleArray))))
        (set (this :f_UP) (NamedAngle/jnew_2 (JR/i16 0) (_commonPhoneStrings :f_UP)))
        (set ((this :f_angleArray) 0) (this :f_UP))
        (do
            (var _index 1)
            (while (< _index 90)
                (do
            (set ((this :f_angleArray) _index) (Angle/jnew_1 (JR/i16 _index))))
                (do (set _index (JR/i32 (+ _index 1))))))
        (set (this :f_RIGHT) (NamedAngle/jnew_2 (JR/i16 90) (_commonPhoneStrings :f_RIGHT)))
        (set ((this :f_angleArray) 90) (this :f_RIGHT))
        (do
            (var _index 91)
            (while (< _index 180)
                (do
            (set ((this :f_angleArray) _index) (Angle/jnew_1 (JR/i16 _index))))
                (do (set _index (JR/i32 (+ _index 1))))))
        (set (this :f_DOWN) (NamedAngle/jnew_2 (JR/i16 180) (_commonPhoneStrings :f_DOWN)))
        (set ((this :f_angleArray) 180) (this :f_DOWN))
        (do
            (var _index 181)
            (while (< _index 270)
                (do
            (set ((this :f_angleArray) _index) (Angle/jnew_1 (JR/i16 _index))))
                (do (set _index (JR/i32 (+ _index 1))))))
        (set (this :f_LEFT) (NamedAngle/jnew_2 (JR/i16 270) (_commonPhoneStrings :f_LEFT)))
        (set ((this :f_angleArray) 270) (this :f_LEFT))
        (do
            (var _index 271)
            (while (< _index _total)
                (do
            (set ((this :f_angleArray) _index) (Angle/jnew_1 (JR/i16 _index))))
                (do (set _index (JR/i32 (+ _index 1))))))
    this))
    
(set jm_getAt (fn jm_getAt [this _index]
    (label jreturn
        (var _adjustedIndex (:jm_adjustAngleToFrameAngle (this :f_frameUtil) _index))
        (return jreturn ((this :f_angleArray) _adjustedIndex)))))
    
(set jm_getClosestDirection (fn jm_getClosestDirection [this _angle]
    (label jreturn
        (if (or (and (>= _angle 315) (< _angle 360)) (and (>= _angle 0) (< _angle 45)))
            (do
            (return jreturn (this :f_UP)))
            (if (and (>= _angle 45) (< _angle 135))
            (do
            (return jreturn (this :f_RIGHT)))
            (if (and (>= _angle 135) (< _angle 225))
            (do
            (return jreturn (this :f_DOWN)))
            (if (and (>= _angle 225) (< _angle 315))
            (do
            (return jreturn (this :f_LEFT)))))))
        (error (JR/newException "RuntimeException")))))
    
(set jm_getGeneralDirection (fn jm_getGeneralDirection [this]
    (label jreturn
        (return jreturn (this :f_NOT_ANGLE)))))
    
(set jm_main (fn jm_main [_args]
        (var _stringMaker (StringMaker/jnew_0))
        (var _angleFactory (jm_getInstance))
        (do
            (var _index 0)
            (while (< _index 360)
                (do
            (:jm_append (:jm_appendshort (:jm_append (:jm_appendint _stringMaker _index) ((CommonSeps/jm_getInstance) :f_FORWARD_SLASH)) (JR/i16 (:jm_getValue (:jm_getClosestDirection _angleFactory _index)))) ((CommonSeps/jm_getInstance) :f_NEW_LINE)))
                (do (set _index (JR/i32 (+ _index 1))))))
        (:jm_putF (LogUtil/jm_getInstance) (:jm_toString _stringMaker) "main" "main")))

(set jproto @{:jm_getAt jm_getAt :jm_getClosestDirection jm_getClosestDirection :jm_getGeneralDirection jm_getGeneralDirection})


