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
# package org.allbinary.input.gyro

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- NoCompleteMotionGestureInputEventListener/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/input/motion/action/NoCompleteMotionGestureInputEventListener" "jm_getInstance" args))
(import ../../../../org/allbinary/input/AllBinarySensor :as AllBinarySensor)
(defn- PrimitiveFloatUtil/jm_getArrayInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/math/PrimitiveFloatUtil" "jm_getArrayInstance" args))

# Java class AllBinaryOrientationSensor
(var jproto nil)
(var jcell_NULL_ALLBINARY_ORIENTATION_SENSOR :jnone)
(var jstatic_NULL_ALLBINARY_ORIENTATION_SENSOR nil)
(var jsetstatic_NULL_ALLBINARY_ORIENTATION_SENSOR nil)
(var jnew_0 nil)
(var jm_setCompleteMotionGestureInputEventListener nil)
(var jm_getOrientation nil)

(set jstatic_NULL_ALLBINARY_ORIENTATION_SENSOR (fn jstatic_NULL_ALLBINARY_ORIENTATION_SENSOR []
  (when (= jcell_NULL_ALLBINARY_ORIENTATION_SENSOR :jnone) (set jcell_NULL_ALLBINARY_ORIENTATION_SENSOR (jnew_0)))
  jcell_NULL_ALLBINARY_ORIENTATION_SENSOR))
(set jsetstatic_NULL_ALLBINARY_ORIENTATION_SENSOR (fn jsetstatic_NULL_ALLBINARY_ORIENTATION_SENSOR [value] (set jcell_NULL_ALLBINARY_ORIENTATION_SENSOR value)))

    
(set jm_setCompleteMotionGestureInputEventListener (fn jm_setCompleteMotionGestureInputEventListener [this _completeMotionGestureInputEventListenerInterface]
        (set (this :f_listener) _completeMotionGestureInputEventListenerInterface)))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "AllBinaryOrientationSensor" :f_sensorDataFloatArray nil :f_listener nil} jproto))
    (put this :f_sensorDataFloatArray (PrimitiveFloatUtil/jm_getArrayInstance))
    (put this :f_listener (NoCompleteMotionGestureInputEventListener/jm_getInstance))
    (JR/superInit this (AllBinarySensor/jnew_0))
    this))
    
(set jm_getOrientation (fn jm_getOrientation [this]
        (error (JR/newException "Exception" ((this :f_commonStrings) :f_NOT_IMPLEMENTED)))))

(set jproto (table/setproto @{:jm_setCompleteMotionGestureInputEventListener jm_setCompleteMotionGestureInputEventListener :jm_getOrientation jm_getOrientation} AllBinarySensor/jproto))


