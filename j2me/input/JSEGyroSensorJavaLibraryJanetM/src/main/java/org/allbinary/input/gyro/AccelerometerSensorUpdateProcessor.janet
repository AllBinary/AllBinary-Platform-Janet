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
(import ../../../../org/allbinary/canvas/Processor :as Processor)
(defn- Features/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/feature/Features" "jm_getInstance" args))
(defn- SensorFeatureFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/feature/SensorFeatureFactory" "jm_getInstance" args))
(defn- NoCompleteMotionGestureInputEventListener/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/input/motion/action/NoCompleteMotionGestureInputEventListener" "jm_getInstance" args))
(defn- SingleKeyPressGameKeyFromMotionGestureEventListener/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/game/input/motion/action/SingleKeyPressGameKeyFromMotionGestureEventListener" "jnew_0" args))
(defn- AccelerometerSensorFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/input/accelerometer/AccelerometerSensorFactory" "jm_getInstance" args))

# Java class AccelerometerSensorUpdateProcessor
(var jproto nil)
(var jnew_0 nil)
(var jm_process nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "AccelerometerSensorUpdateProcessor"} jproto))
    (JR/superInit this (Processor/jnew_0))
    this))

    
(set jm_process (fn jm_process [this]
        (var _sensorFeatureFactory (SensorFeatureFactory/jm_getInstance))
        (if (:jm_isFeature (Features/jm_getInstance) (_sensorFeatureFactory :f_ORIENTATION_SENSORS))
            (do
            (:jm_setCompleteMotionGestureInputEventListener (AccelerometerSensorFactory/jm_getInstance) (SingleKeyPressGameKeyFromMotionGestureEventListener/jnew_0)))
            (if (:jm_isFeature (Features/jm_getInstance) (_sensorFeatureFactory :f_SIMULATED_ORIENTATION_SENSORS))
            (do
            (:jm_setCompleteMotionGestureInputEventListener (AccelerometerSensorFactory/jm_getInstance) (SingleKeyPressGameKeyFromMotionGestureEventListener/jnew_0)))
            (if (:jm_isFeature (Features/jm_getInstance) (_sensorFeatureFactory :f_NO_ORIENTATION))
            (do
            (:jm_setCompleteMotionGestureInputEventListener (AccelerometerSensorFactory/jm_getInstance) (NoCompleteMotionGestureInputEventListener/jm_getInstance)))
            (do
            (error (JR/newException "Exception" "Sensor Feature Not Set"))))))))

(set jproto (table/setproto @{:jm_process jm_process} Processor/jproto))


