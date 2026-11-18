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
(defn- NoAllBinarySensor/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/input/NoAllBinarySensor" "jm_getInstance" args))

# Java class SensorGameUpdateProcessor
(var jproto nil)
(var jnew_0 nil)
(var jm_setInputSensor nil)
(var jm_getInputSensor nil)
(var jm_process nil)
(var jm_sendNotifications nil)
(var jm_isAnySensor nil)
(var jm_setNoSensors nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "SensorGameUpdateProcessor" :f_inputSensor nil} jproto))
    (put this :f_inputSensor (NoAllBinarySensor/jm_getInstance))
    this))

    
(set jm_setInputSensor (fn jm_setInputSensor [this _inputSensor]
        (set (this :f_inputSensor) _inputSensor)))
    
(set jm_getInputSensor (fn jm_getInputSensor [this]
    (label jreturn
        (return jreturn (this :f_inputSensor)))))
    
(set jm_process (fn jm_process [this _anyType]
    nil))
    
(set jm_sendNotifications (fn jm_sendNotifications [this _anyType]
    nil))
    
(set jm_isAnySensor (fn jm_isAnySensor [this]
    (label jreturn
        (if (= (this :f_inputSensor) (NoAllBinarySensor/jm_getInstance))
            (do
            (return jreturn false))
            (do
            (return jreturn true))))))
    
(set jm_setNoSensors (fn jm_setNoSensors [this]
        (:jm_setInputSensor this (NoAllBinarySensor/jm_getInstance))))

(set jproto @{:jm_setInputSensor jm_setInputSensor :jm_getInputSensor jm_getInputSensor :jm_process jm_process :jm_sendNotifications jm_sendNotifications :jm_isAnySensor jm_isAnySensor :jm_setNoSensors jm_setNoSensors})


