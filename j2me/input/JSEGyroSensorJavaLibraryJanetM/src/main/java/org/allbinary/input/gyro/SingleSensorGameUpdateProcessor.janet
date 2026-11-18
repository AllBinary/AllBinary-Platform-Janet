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
(import ./SensorGameUpdateProcessor :as SensorGameUpdateProcessor)
(defn- AccelerometerSensorUpdateProcessor/jnew_0 [& args] (JR/call jfile "./AccelerometerSensorUpdateProcessor" "jnew_0" args))
(defn- GyroSensorUpdateProcessor/jnew_0 [& args] (JR/call jfile "./GyroSensorUpdateProcessor" "jnew_0" args))

# Java class SingleSensorGameUpdateProcessor
(var jproto nil)
(var jnew_0 nil)
(var jm_process nil)
(var jm_sendNotifications nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "SingleSensorGameUpdateProcessor" :f_accelerometerSensorUpdateProcessor nil :f_gyroSensorUpdateProcessor nil} jproto))
    (put this :f_accelerometerSensorUpdateProcessor (AccelerometerSensorUpdateProcessor/jnew_0))
    (put this :f_gyroSensorUpdateProcessor (GyroSensorUpdateProcessor/jnew_0))
    (JR/superInit this (SensorGameUpdateProcessor/jnew_0))
    this))

    
(set jm_process (fn jm_process [this _anyType]
        (:jm_setNoSensors this)))
    
(set jm_sendNotifications (fn jm_sendNotifications [this _anyType]
    nil))

(set jproto (table/setproto @{:jm_process jm_process :jm_sendNotifications jm_sendNotifications} SensorGameUpdateProcessor/jproto))


