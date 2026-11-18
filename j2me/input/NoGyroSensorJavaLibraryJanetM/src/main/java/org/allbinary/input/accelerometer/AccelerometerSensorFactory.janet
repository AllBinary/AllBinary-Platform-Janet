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
# package org.allbinary.input.accelerometer

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- Features/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/feature/Features" "jm_getInstance" args))
(defn- SensorFeatureFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/feature/SensorFeatureFactory" "jm_getInstance" args))
(defn- AllBinaryOrientationSensor/jstatic_NULL_ALLBINARY_ORIENTATION_SENSOR [& args] (JR/call jfile "../../../../org/allbinary/input/gyro/AllBinaryOrientationSensor" "jstatic_NULL_ALLBINARY_ORIENTATION_SENSOR" args))
(defn- NoAccelerometerSensor/jnew_0 [& args] (JR/call jfile "./NoAccelerometerSensor" "jnew_0" args))

# Java class AccelerometerSensorFactory
(var jproto nil)
(var jcell_allBinaryAccelerometerSensor :jnone)
(var jstatic_allBinaryAccelerometerSensor nil)
(var jsetstatic_allBinaryAccelerometerSensor nil)
(var jnew_0 nil)
(var jm_init nil)
(var jm_getInstance nil)

(set jstatic_allBinaryAccelerometerSensor (fn jstatic_allBinaryAccelerometerSensor []
  (when (= jcell_allBinaryAccelerometerSensor :jnone) (set jcell_allBinaryAccelerometerSensor (AllBinaryOrientationSensor/jstatic_NULL_ALLBINARY_ORIENTATION_SENSOR)))
  jcell_allBinaryAccelerometerSensor))
(set jsetstatic_allBinaryAccelerometerSensor (fn jsetstatic_allBinaryAccelerometerSensor [value] (set jcell_allBinaryAccelerometerSensor value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "AccelerometerSensorFactory"} jproto))
    this))

    
(set jm_init (fn jm_init []
        (var _features (Features/jm_getInstance))
        (var _sensorFeatureFactory (SensorFeatureFactory/jm_getInstance))
        (if (:jm_isFeature _features (_sensorFeatureFactory :f_ORIENTATION_SENSORS))
            (do
            (error (JR/newException "Exception" "No Orientation Sensors")))
            (if (:jm_isFeature _features (_sensorFeatureFactory :f_SIMULATED_ORIENTATION_SENSORS))
            (do
            (error (JR/newException "Exception" "No Simulation Sensors")))
            (if (:jm_isFeature _features (_sensorFeatureFactory :f_NO_ORIENTATION))
            (do
            (set jcell_allBinaryAccelerometerSensor (NoAccelerometerSensor/jnew_0)))
            (do
            (error (JR/newException "Exception" "Not Such SensorFeature"))))))))
    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_allBinaryAccelerometerSensor)))))

(set jproto @{})


