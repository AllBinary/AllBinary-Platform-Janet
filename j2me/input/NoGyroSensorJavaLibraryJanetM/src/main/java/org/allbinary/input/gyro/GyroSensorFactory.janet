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
(defn- AllBinaryOrientationSensor/jstatic_NULL_ALLBINARY_ORIENTATION_SENSOR [& args] (JR/call jfile "./AllBinaryOrientationSensor" "jstatic_NULL_ALLBINARY_ORIENTATION_SENSOR" args))
(defn- NoGyroSensor/jnew_0 [& args] (JR/call jfile "./NoGyroSensor" "jnew_0" args))

# Java class GyroSensorFactory
(var jproto nil)
(var jcell_allBinaryGyroSensor :jnone)
(var jstatic_allBinaryGyroSensor nil)
(var jsetstatic_allBinaryGyroSensor nil)
(var jnew_0 nil)
(var jm_init nil)
(var jm_getInstance nil)

(set jstatic_allBinaryGyroSensor (fn jstatic_allBinaryGyroSensor []
  (when (= jcell_allBinaryGyroSensor :jnone) (set jcell_allBinaryGyroSensor (AllBinaryOrientationSensor/jstatic_NULL_ALLBINARY_ORIENTATION_SENSOR)))
  jcell_allBinaryGyroSensor))
(set jsetstatic_allBinaryGyroSensor (fn jsetstatic_allBinaryGyroSensor [value] (set jcell_allBinaryGyroSensor value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GyroSensorFactory"} jproto))
    this))

    
(set jm_init (fn jm_init []
        (set jcell_allBinaryGyroSensor (NoGyroSensor/jnew_0))))
    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_allBinaryGyroSensor)))))

(set jproto @{})


